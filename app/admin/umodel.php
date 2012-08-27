<?php

/*
 * sutoocms: admin/umodel.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120828
 */

if (!defined('SUTOOCMS'))
    exit('Can\'t Access !');

class admin_umodel extends core_control {

    public $_tpl = '';

    public function init() {
        parent::init();
        $this->_table = table_umodel::getInstance();
        if(!$this->_table->getFields()) sexit('数据没找到!');
    }

    //模型列表
    public function list_act() {
         $row = $this->_table->getrows('',0,'modelid asc');
         if(is_array($row) && !empty($row)){
         	$i = 0;
         	foreach($row as $arr){
         		$tmp = $this->_table->rec_query_one("SELECT COUNT(*) AS num FROM {$this->_table->prefix}{$arr['tbname']}");
         		$row[$i]['count'] = $tmp['num'];
         		$i++;
         	}
         }
         $this->tpl->row = $row;
    }

    //添加模型
    public function add_act() {
        if (core_app::$post['sub']) {
            if(!core_app::$post['modelname']){
                core_url::alerterror('请输入模型名称');
            }
            if(!core_app::$post['tbname']){
                core_url::alerterror('请输入数据表名');
            }
            if($this->_table->rec_insert(core_app::$post)){
                $sql = "CREATE TABLE `".$this->_table->prefix.core_app::$post['tbname']."` ( `uid` int(11) NOT NULL ,`username` varchar(50) NOT NULL,PRIMARY KEY  (`uid`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;";
                $this->_table->query($sql);
                core_url::closeiframe(true);
            }else{
                core_url::alerterror('添加用户模型失败');
            }
        }
    }

    //删除模型
    public function del_act() {
        $modelid = intval(core_app::$get['modelid']);
        if($modelid){
            $models = $this->_table->getrow($modelid);
            $this->_table->rec_delete($modelid);
            $fieldobj = new table_fields();
            $fieldobj->rec_delete(array('modelid'=>$modelid));
            $sql = "DROP TABLE `".$fieldobj->prefix."{$models['tbname']}`;";
            $this->_table->query($sql);
        }
        alerterror('删除失败');
    }  

    public function end() {
        parent::end();
        $this->show($this->_tpl);
    }

}