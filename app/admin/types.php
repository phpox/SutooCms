<?php

/*
 * sutoocms: admin/types.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120713
 */

if (!defined('SUTOOCMS'))
    exit('Can\'t Access !');

class admin_types extends core_control{

    public $_tpl = '';

    public function init(){
        parent::init();
        $this->_table = table_types::getInstance();
        if(!$this->_table->getFields()) sexit('数据没找到!');
    }

    public function list_act(){
        $this->tpl->row = $this->_table->getrows('',0);
    }

    public function edit_act(){
        if(core_app::$post['sub']){
            if(!core_app::$post['typename']){
                core_url::alerterror('请输入类别名称');
            }
            if($this->_table->rec_update(core_app::$post,array('typeid'=>core_app::$post['typeid']))){
                core_url::closeiframe(true);
            }else{
                core_url::alerterror('修改类别失败');
            }
        }
        $this->tpl->row = $this->_table->getrow(array('typeid'=>core_app::$get['typeid']),"typeid DESC",$this->_table->getcols('modify'));
    }

    public function add_act(){
        if(core_app::$post['sub']){
            if(!core_app::$post['typename']){
                core_url::alerterror('请输入类别名称');
            }
            if($this->_table->rec_insert(core_app::$post)){
                core_url::closeiframe(true);
            }else{
                core_url::alerterror('添加类别失败');
            }
        }
    }

    public function del_act(){
        if(core_app::$get['typeid']){
            $this->_table->rec_delete(array('typeid'=>core_app::$get['typeid']));
            core_url::alertinfo('删除资料成功', url('types','list',1,array('siteid'=>core_app::$get['siteid'])));
        }
        core_url::alerterror('删除失败');
    }

    public function batch_act() {

        if (is_array(core_app::$post['ids']) && !empty(core_app::$post['ids'])) {
            if (core_app::$post['batch'] == 'delete') {
                foreach (core_app::$post['ids'] as $v) {
                    $this->_table->rec_delete(array('typeid' => $v));
                }
                core_url::alertinfo('删除资料成功', url('types', 'list', 1,array('siteid'=>core_app::$get['siteid'])));
            }
        } else {
            core_url::alerterror('没有选中任何资料');
        }
    }
    
    public function upcache_act(){
    	$row = $this->_table->getrows(null,null,'1 DESC','typeid,typename');
    	$arr = core_tool::array_to_hashmap($row, 'typeid','typename');
    	if(core_tool::wrcache('type', $arr)){
    		echo lang('更新缓存成功');
    	}else{
    		echo lang('更新缓存失败');
    	}
    	exit();
    }

    public function end(){
        parent::end();
        $this->show($this->_tpl);
    }
}