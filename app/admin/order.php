<?php

/*
 * sutoocms: admin/order.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120724
 */

if (!defined('SUTOOCMS'))
    exit('Can\'t Access !');

class admin_order extends core_control {

    public $_tpl = '';

    public function init() {
        parent::init();
        $this->_table = table_orders::getInstance();
        if(!$this->_table->getFields()) sexit('数据没找到!');
    }
    
    public function upstatus_act(){
    	$id = intval(get('id'));
    	$row['status'] = core_app::$post['status'];
    	$row['uptime'] = date('Y-m-d H:i:s');
    	if($this->_table->rec_update($row,$id)){
    		core_url::redirectfrom();
    	}else{
    		core_url::alerterror('주문상태 갱신 실패');
    	}
    }

    public function list_act() {
    	$status = get('status');
    	if($status == 6){
    		$where = array('status'=>6);
    	}else{
    		$where = "status is null or status <> 6";
    	}
    	$infocount = $this->_table->rec_count($where);
    	$pager = new core_page($infocount, $this->pagesize, $this->pageno);
    	$this->tpl->row = $this->_table->getrows($where, $pager->limit,'id DESC');
    	$this->tpl->page = $pager->multi(url('order','list',1,array('status'=>$status)));
    }
    
    public function end() {
    	parent::end();
    	$this->show($this->_tpl);
    }
}