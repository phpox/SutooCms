<?php

/*
 * sutoocms: admin/uconfig.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120828
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class admin_uconfig extends core_control{

    public $_tpl = '';

    public function init(){
        parent::init();
    }

    public function index_act(){
    	
    }

    public function set_act(){
        if(core_app::$post['sub']){
            $filename = ROOT.'/config/uconfig.php';
            $str = file_get_contents($filename);
            $str1 = '';
            $str2 = "\r\n";
            unset(core_app::$post['sub']);
            foreach(core_app::$post as $k => $v){
            	if(is_array($v)){
            		$str2 .= "  '$k'=>array(\r\n";
            		foreach($v as $k1 => $v1){
            			$str2 .= "    '$k1'=>'$v1',\r\n";
            		}
            		$str2 .= "  ),\r\n";
            	}else{
            		$str2 .= "  '$k'=>'$v',\r\n";
            	}
            }
            $str = preg_replace("/return array \(.*?\);\?>/is","return array ($str2);?>" , $str);
            if(file_put_contents($filename, $str)){
                core_url::redirectfrom();
            }else{
                core_url::alerterror("写入配置文件失败");
            }
        }
    }

    public function end(){
        parent::end();
        $this->show($this->_tpl);
    }
}