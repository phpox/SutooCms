<?php

/*
 * sutoocms: admin/members.php
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

class admin_members extends core_control {

    public $_tpl = '';

    public function init() {
        parent::init();
        $this->_table = table_members::getInstance();
        if(!$this->_table->getFields()) sexit('数据没找到!');
    }
    
    public function end() {
    	parent::end();
    	$this->show($this->_tpl);
    }

    public function list_act() {
    	$where = array('siteid'=>$this->tpl->siteid);
    	$count = $this->_table->rec_count($where);
    	$pager = new core_page($count, $this->pagesize, $this->pageno);
    	$row = $this->_table->getrows($where,$pager->limit,$order='uid desc',$cols='*');
    	$this->tpl->row = $row;
    }
}