<?php

/*
 * sutoocms: admin/field.php
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

class admin_field extends core_control {

    public $_tpl = '';

    public function init() {
        parent::init();
        $this->_table = table_fields::getInstance();
        
        $this->model = new table_model();
        $row = $this->model->getrow(array('modelid'=>core_app::$get['modelid']));
        $this->tpl->model = $row;
        
        $this->modeltable = new $this->table;
        $this->modeltable->name = $this->modeltable->prefix.$row['tbname'];
        
        $this->tpl->siteid = intval(core_app::$get['siteid']);
    }
    
    public function getfields_act(){
        $model = new table_model();
        $model->name = core_app::$post['tbname'];
        $arr = $model->getFields();
        $str = '';
        if(is_array($arr) && !empty($arr)){
            foreach ($arr as $row){
                $str .= "<option value=\"".$row['name']."\">".$row['name']."</option>";
            }
        }
        echo $str;exit;
        //$arr = core_tool::array_to_hashmap($arr, 'name', 'name');
    }

    //字段列表
    public function list_act() {
        $this->tpl->row = $this->_table->getrows(array('modelid'=>core_app::$get['modelid']),0,'listorder=0,listorder asc,fieldid asc');
    }

    //编辑字段
    public function edit_act() {
        if (core_app::$post['sub']) {
            $fieldid = intval(core_app::$post['fieldid']);
            if($this->_table->rec_update(core_app::$post,$fieldid)){
                core_url::closeiframe(true);
            }else{
                core_url::alerterror('修改模型字段失败');
            }
        }
        $this->tpl->modelid = core_app::$get['modelid'];
        $fieldid = intval(core_app::$get['fieldid']);
        $this->tpl->row = $this->_table->getrow($fieldid);
        $this->tpl->row['setting'] = unserialize($this->tpl->row['setting']);
        $this->tpl->typelist = $this->_table->getTypeList();
        
        $tables = $this->_table->get_table_names();
        $this->tpl->tables = array_combine($tables, $tables);
        if($this->tpl->row['setting']['tbname']){
            $model = new table_model();
            $model->name = $this->tpl->row['setting']['tbname'];
            $arr = $model->getFields();
            $this->tpl->fieldlist = core_tool::array_to_hashmap($arr, 'name', 'name');
        }
    }

    //添加字段
    public function add_act() {
        if (core_app::$post['sub']) {
            if(!core_app::$post['name']){
                core_url::alerterror('请输入字段名称');
            }
            if(!core_app::$post['formtype']){
                core_url::alerterror('请选择字段类型');
            }
            if(core_app::$post['formtype'] == 'option'){
                $arr['ds'] = core_app::$post['ds'];
                $arr['oplist'] = core_app::$post['oplist'];
                $arr['tbname'] = core_app::$post['tbname'];
                $arr['valname'] = core_app::$post['valname'];
                $arr['viewname'] = core_app::$post['viewname'];
                $arr['optype'] = core_app::$post['optype'];
                $arr['fieldtype'] = core_app::$post['fieldtype'];
                $arr['default'] = core_app::$post['default'];
                core_app::$post['setting'] = serialize($arr);
            }
            if($this->_table->rec_insert(core_app::$post)){
                if(core_app::$post['formtype'] == 'option'){
                    core_app::$post['formtype'] = $arr['fieldtype'];
                }
                switch (core_app::$post['formtype']){
                    case 'text':
                        $type = "VARCHAR(255)";
                        break;
                    case 'textarea':
                        $type = "TEXT";
                        break;
                    case 'editor':
                        $type = "MEDIUMTEXT";
                        break;
                    case 'box':
                        $type = "VARCHAR(50)";
                        break;
                    case 'image':
                        $type = "VARCHAR(255)";
                        break;
                    case 'images':
                        $type = "TEXT";
                        break;
                    case 'number':
                        $type = "DOUBLE(10,2)";
                        break;
                    case 'int':
                        $type = "INT(10)";
                        break;
                    case 'datetime':
                        $type = "DATETIME";
                        break;
                    case 'downfiles':
                        $type = "TEXT";
                        break;
                }
                $sql = "ALTER TABLE `".$this->modeltable->name."` ADD `".core_app::$post['name']."` ".$type.";";
                $this->_table->query($sql);
                if(core_app::$post['isunique']){
                    $sql = "ALTER TABLE `".$this->modeltable->name."` ADD UNIQUE(`".core_app::$post['name']."`);";
                    $this->_table->query($sql);
                }
                core_url::closeiframe(true);
            }else{
                core_url::alerterror('添加模型字段失败');
            }
        }
        $tables = $this->_table->get_table_names();
        $this->tpl->tables = array_combine($tables, $tables);
        $this->tpl->modelid = core_app::$get['modelid'];
    }

    //删除字段
    public function del_act() {
        if (core_app::$get['fieldid']) {
            $this->_table->rec_delete(array('fieldid'=>core_app::$get['fieldid']));
            $sql = "ALTER TABLE `".$this->modeltable->name."` DROP `".core_app::$get['fieldname']."`";
            $this->_table->query($sql);
            core_url::alertinfo('删除字段成功', url('field','list',1,array('modelid'=>core_app::$get['modelid'],'siteid'=>core_app::$get['modelid'])));
        }
        alerterror('删除失败');
    }

    public function end() {
        parent::end();
        $this->show($this->_tpl);
    }

}