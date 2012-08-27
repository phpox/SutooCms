<?php

/*
 * sutoocms: table/category.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120711
 */

if (!defined('SUTOOCMS'))
    exit('Can\'t Access !');

class table_category extends core_table {

    static $me;
    public $category = null;
    public $parent = null;

    public static function getInstance() {
        if (!self::$me) {
            self::$me = new table_category();
        }
        return self::$me;
    }

    function getcols($act) {
        switch ($act) {
            case 'manage':
                return 'catid,siteid,modelid,catename,parentid,catdir,listorder,ismenu,ishtml';
            case 'modify':
                return 'catid,siteid,modelid,catename,parentid,catdir,listorder,ismenu,ishtml';
            case 'option':
            	return 'catid,catename';
        }
    }

    public static function getcateselect($siteid, $catid=0, &$option=array(0 => '请选择...'), &$level=0) {
        $category = table_category::getInstance();
        $arr = $category->son($siteid, $catid);
        if (is_array($arr) && !empty($arr))
            $i = 1;
        $num = count($arr);
        foreach ($arr as $_catid) {
            if ($level > 1)
                $sdot = "│&nbsp;&nbsp;";
            if ($i < $num) {
                $dot = $sdot.'├ ';
            } else {
                $dot = $sdot.'└ ';
            }
            $strpre = $level > 0 ? '&nbsp;' .$dot : '';
            $option[$_catid] = $strpre . $category->category[$_catid]['catename'];
            if (is_array($category->son($siteid, $_catid))) {
                $level++;
                table_category::getcateselect($siteid, $_catid, $option, $level);
                $level--;
            }
            $i++;
        }
        return $option;
    }

    public static function getcategorydata($siteid, $_catid=0, &$data=array(), &$level=0) {
        $category = self::getInstance();
        $categorys = $category->son($siteid, $_catid);
        $i = 1;
        $num = count($categorys);
        foreach ($categorys as $catid) {
            $info_ = $category->category[$catid];
            if ($level > 1)
                $sdot = "│&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
            if ($i < $num) {
                $dot = $sdot . '├─ ';
            } else {
                $dot = $sdot . '└─ ';
            }
            $strpre = $level > 0 ? '&nbsp;&nbsp;&nbsp;&nbsp;' . $dot : '';
            $info_['catename'] = $strpre . $info_['catename'];
            $info_['level'] = $level;
            $data[] = $info_;
            if (is_array($category->son($siteid, $catid))) {
                $level++;
                self::getcategorydata($siteid, $catid, $data, $level);
                $level--;
            }
            $i++;
        }
        return $data;
    }
    
    public static function getcategorydata_tree($siteid, $_catid=0, &$code, &$level=0,$model='news') {
        $category = self::getInstance();
        $categorys = $category->son($siteid, $_catid);
        $i = 1;
        $num = count($categorys);
        foreach ($categorys as $catid) {
            $info_ = $category->category[$catid];
            if ($category->hasson($catid)) {
                $code .= '<li id="'.$info_['catid'].'"><span class="folder">'.$info_['catename'].'</span><ul>';
                $level++;
                self::getcategorydata_tree($siteid, $catid, $code, $level);
                $level--;
                $code .= '</ul>';
            }else{
                $code .= '<li id="'.$info_['catid'].'"><span class=""><a href="#body" onclick="javascript:parent.windowsdig(\''.lang('添加内容').'\',\'iframe:'.url($model,'add',1,array('catid'=>$info_['catid'],'siteid'=>$siteid,'modelid'=>$info_['modelid'])).'\',\'900px\',\'700px\',\'iframe\');">
                    <img src="skin/default/admin/add_content.gif" alt="'.lang('添加内容').'"></a>
                    <a href="'.url($model,'list',1,array('catid'=>$info_['catid'],'siteid'=>$siteid,'modelid'=>$info_['modelid'])).'">'.$info_['catename'].'</a></span></li>';
            }
            $i++;
        }
        return $code;
    }
    
    public function hasson($id) {
        return self::getInstance()->tree->has_son($id);
    }

    public function son($siteid, $id) {
        if (!isset($this->tree))
            $this->init($siteid);
        return $this->tree->get_son($id);
    }
    
    public function sons($siteid,$id) {
        if (!isset($this->tree)) $this->init($siteid);
        $sons=array();
        $this->tree->get_sons($id,$sons);
        return $sons;
    }

    public function init($siteid) {
        $where = array('siteid' => $siteid);
        $_category = $this->getrows($where, 0, "listorder=0,listorder asc,catid asc", $this->getcols('manage'));
        $category = array();
        foreach ($_category as $one) {
            $category[$one['catid']] = $one;
        }
        $this->category = $category;
        $parent = array();
        foreach ($category as $one) {
            $parent[$one['catid']] = $one['parentid'];
        }
        $this->parent = $parent;
        $this->tree = new core_tree($parent);
    }

}
