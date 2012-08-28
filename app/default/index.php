<?php

/*
 * 网站首页
 * sutoocms: default/index.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120628
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class default_index extends core_control{
    public $_tpl = '';

    public function init(){
        parent::init();
    }

    public function index_act(){
    	
    }
    
    public function end(){
        parent::end();
        $this->show($this->_tpl);
    }
}