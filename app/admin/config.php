<?php
/*
 * sutoocms: config.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这不是一个自由软件！也不是一个开源软件！您不能在任何目的的前提下对程序代码进行破解、修改和使用；
 * 不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 *
 * @version:    v1.0 u20120319
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class admin_config extends core_control{

    public $_tpl = '';

    public function init(){
        parent::init();
    }

    public function index_act(){
    }

    public function info_act(){
        $this->tpl->admin = $_SESSION['admin'];
    }

    public function set_act(){
        if(core_app::$post['sub']){
            $filename = ROOT.'/config/config.php';
            $str = file_get_contents($filename);
            $str1 = '';
            $str2 = "\r\n";
            foreach(core_app::$post['setconfig'] as $k => $v){
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

    public function site_act(){
        //$this->tpl->admin = $_SESSION['admin'];
    }

    public function end(){
        parent::end();
        $this->show($this->_tpl);
    }
}