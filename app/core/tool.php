<?php

/*
 * sutoocms: core/tool.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author  phpox
 * @version v1.0 u20120724
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class core_tool {
	
	/**
	 * 写入缓存
	 * @param string $name
	 * @param array() $row
	 * @return boolean
	 */
	static public function wrcache($name,$row){
		$file = ROOT.'/cache/table/'.$name.'.php';
		$str = "<?php return array (\r\n";
		if(is_array($row)){
			foreach($row as $k=>$v){
				$str .= "    '$k'=>'$v',\r\n";
			}
		}
		$str .= ");?>";
		if(file_put_contents($file,$str)){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 读取缓存
	 * @param string $name
	 * @return array()|boolean
	 */
	static public function rdcache($name){
		$file = ROOT.'/cache/table/'.$name.'.php';
		if($row = include($file)){
			return $row;
		}else{
			return false;
		}
	}
	
	/**
	 * 
	 * @param 字符串 $str
	 * @param 长度 $length
	 * @param 编码 $charset
	 * @param 结尾 $suffix
	 * @param 起始位置 $start
	 * @return string
	 */
	static public function cn_substr($str,$length,$charset="utf-8",$suffix=true,$start=0) {
		if (function_exists("mb_substr")) {
			if (mb_strlen($str,$charset) <= $length)
				return $str;
			$slice=mb_substr($str,$start,$length,$charset);
		}
		else {
			$re['utf-8']="/[\x01-\x7f]|[\xc2-\xdf][\x80-\xbf]|[\xe0-\xef][\x80-\xbf]{2}|[\xf0-\xff][\x80-\xbf]{3}/";
			$re['gb2312']="/[\x01-\x7f]|[\xb0-\xf7][\xa0-\xfe]/";
			$re['gbk']="/[\x01-\x7f]|[\x81-\xfe][\x40-\xfe]/";
			$re['big5']="/[\x01-\x7f]|[\x81-\xfe]([\x40-\x7e]|\xa1-\xfe])/";
			preg_match_all($re[$charset],$str,$match);
			if (count($match[0]) <= $length)
				return $str;
			$slice=join("",array_slice($match[0],$start,$length));
		}
		if ($length * 2 >strlen($slice) &&$suffix)
			return $slice."…";
		return $slice;
	}
	
	/**
	 * 设置cookie
	 * @param string $name
	 * @param string $value
	 */
	public static function setcookie($name,$value){
		setcookie($name,$value,time()+3600*24*30);
	}

    /**
     * 从一个二维数组中返回指定键值的数组
     *
     * @param array $arr
     * @param string $key
     * @param string $value
     *
     * @return array
     */
    public static function array_key_values($arr, $key, $value) {
        $ret = array();
        foreach ($arr as $row) {
            if (isset($row[$key]) && $row[$key] == $value) {
                return $row;
            }
        }
    }

    /**
     * 从一个二维数组中返回指定键值的数组
     *
     * @param array $arr
     * @param string $key
     * @param string $value
     *
     * @return array
     */
    public static function array_key_values2($arr, $key, $value) {
        $ret = array();
        foreach ($arr as $row) {
            if (isset($row[$key]) && $row[$key] == $value) {
                $ret[] = $row;
            }
        }
        return $ret;
    }

    /**
     * 从一个二维数组中返回指定键的所有值
     *
     * @param array $arr
     * @param string $col
     *
     * @return array
     */
    public static function array_col_values($arr, $col) {
        $ret = array();
        foreach ($arr as $row) {
            if (isset($row[$col])) {
                $ret[] = $row[$col];
            }
        }
        return $ret;
    }

    /**
     * 将数组转换为可通过 url 传递的字符串连接
     *
     * @param array $args 原数组
     * @return string
     */
    function encode_url_args($args) {
        $str = '';
        foreach ($args as $key => $value) {
            $str .= '&' . rawurlencode($key) . '=' . rawurlencode($value);
        }
        return substr($str, 1);
    }

    /**
     * 将一个二维数组转换为 hashmap
     *
     * @param array $arr 原数组
     * @param string $keyField 做数组KEY的字段名
     * @param string $valueField 做数组VALUE的字段名
     * @return array
     */
    public static function array_to_hashmap($arr, $keyField, $valueField = null) {
        $ret = array();
        if ($valueField) {
            foreach ($arr as $row) {
                $ret[$row[$keyField]] = $row[$valueField];
            }
        } else {
            foreach ($arr as $row) {
                $ret[$row[$keyField]] = $row;
            }
        }
        return $ret;
    }

    /**
     * 将一个二维数组按照指定字段的名分组
     *
     * @param array $arr 原数组
     * @param string $keyField 字段名
     * @return array
     */
    static function array_group_by(& $arr, $keyField) {
        $ret = array();
        foreach ($arr as $row) {
            $key = $row[$keyField];
            $ret[$key][] = $row;
        }
        return $ret;
    }

    /**
     * 批量创建目录
     * @param <string> $dir 要创建的目录
     * @param <int> $mode 权限
     */
    static function mkdir($dir, $mode = 0777) {
        if (is_dir($dir) || @mkdir($dir, $mode))
            return true;
        if (!self::mkdir(dirname($dir), $mode))
            return false;
        return @mkdir($dir, $mode);
    }

    //获取XML的描述
    static function getintro($arr, $name) {
        if ($arr->intro)
            return $arr->intro;
        foreach ($arr as $v) {
            if ($v->name == $name) {
                return $v->intro;
            }
        }
    }

    //删除XML的内容
    static function delxml($file, $name) {
        $tmp = (array) core_tool::readxml($file);
        $arr = array();
        foreach ($tmp['file'] as $v) {
            if ($v->name != $name) {
                $arr[] = (array) $v;
            }
        }
        core_tool::writexml($file, $arr);
    }

    //写入模板目录的XML
    static function writedirxml($file, $row) {
        $f = fopen($file, 'wb');
        fwrite($f, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n");
        fwrite($f, "<root>\r\n");
        fwrite($f, "  <name>" . $row['name'] . "</name>\r\n");
        fwrite($f, "  <author>" . $row['author'] . "</author>\r\n");
        fwrite($f, "  <skin>" . $row['skin'] . "</skin>\r\n");
        fwrite($f, "  <intro>" . $row['intro'] . "</intro>\r\n");
        fwrite($f, "</root>\r\n");
        fclose($f);
    }

    //写入模版列表的XML
    static function writexml($file, $row) {
        $f = fopen($file, 'wb');
        fwrite($f, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n");
        fwrite($f, "<root>\r\n");
        fwrite($f, "  <file>\r\n");
        fwrite($f, "    <name></name>\r\n");
        fwrite($f, "    <intro></intro>\r\n");
        fwrite($f, "  </file>\r\n");
        foreach ($row as $v) {
            if ($v['name'] == '')
                continue;
            fwrite($f, "  <file>\r\n");
            fwrite($f, "    <name>" . $v['name'] . "</name>\r\n");
            fwrite($f, "    <intro>" . $v['intro'] . "</intro>\r\n");
            fwrite($f, "  </file>\r\n");
        }
        fwrite($f, "</root>\r\n");
        fclose($f);
    }

    //读取XML字符串
    static function readxml($file) {
        if (!file_exists($file))
            return '';
        $data = file_get_contents($file);
        $xml = simplexml_load_string($data);
        return $xml;
    }

    //列出目录
    static function listdir($dir) {
        $list = array();
        if ($handle = opendir($dir)) {
            while (false !== ($file = readdir($handle))) {
                if ($file != "." && $file != "..") {
                    $list[] = $file;
                }
            }
            closedir($handle);
        }
        return $list;
    }

    //终止程序执行
    static function sexit($str='') {
        exit(lang($str));
    }

    static function load_lang($path) {
        $lang = include_once ROOT . '/lang/' . core_config::get('lang_type') . '/' . $path;
        core_app::$tpl->lang = array_merge(core_app::$tpl->lang, $lang);
    }

}