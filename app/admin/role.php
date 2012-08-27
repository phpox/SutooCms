<?php

/*
 * sutoocms: role.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author  phpox
 * @version v1.0 u20120605
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class admin_role extends core_control{
	
    public $_tpl = '';
	
    public function init(){
        parent::init();
        $this->table = 'table_roles';
        $this->_table = new $this->table;
        if (!$this->_table->getFields())
        	sexit('数据没找到!');
    }

    public function index_act(){

    }
    
    public function add_act(){
    	if (core_app::$post['sub']) {
    		if (!core_app::$post['rolename']) {
    			core_url::alerterror('请输入角色名称');
    		}
    		if ($this->_table->rec_insert(core_app::$post)) {
    			core_url::closeiframe(true);
    		} else {
    			core_url::alerterror('添加站点失败');
    		}
    	}
    }
    
    public function list_act(){
    	$this->tpl->row = $this->_table->getrows('', 0);
    }
    
    public function uconfig_act(){
        
    }
    
    public function umodel_act(){
        
    }

    public function end(){
        parent::end();
        $this->show($this->_tpl);
    }
}