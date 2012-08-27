<?php

/*
 * sutoocms: default/validation.php
* ============================================================================
* 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
* -------------------------------------------------------
* 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
* ============================================================================
*
* @author:  phpox
* @version: v1.0 u20120827
*/

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class default_validation extends core_control{
    public $_tpl = '';
	public $authcode = null;
    public function init(){
        parent::init();
		$this->authcode = new core_authcode();
    }

    public function show_act(){
		$this->authcode->show();
    }
	
	public function showjs_act(){
		$this->authcode->showScript();
    }

    public function end(){
		exit;
        parent::end();
        $this->show($this->_tpl);
    }
}