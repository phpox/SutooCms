<?php

/*
 * sutoocms: admin/news.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120619
 */

if (!defined('SUTOOCMS'))
    exit('Can\'t Access !');

class admin_news extends core_control {

    public $_tpl = '';

    public function init() {
        parent::init();
        $this->_table = table_news::getInstance();
        if(!$this->_table->getFields()) sexit('数据没找到!');
    }

    public function list_act() {
    	$catid = intval(core_app::$get['catid']);
        $where = "modelid!=2 and modelid!=3 and parentid=0 and siteid=".intval(core_app::$get['siteid']);
        $category = table_category::getInstance();
        $category->init(core_app::$get['siteid']);
        $this->tpl->cates = $category->getrows($where, $limit, "listorder=0,listorder asc,catid asc", $category->getcols('manage'));
        $i = 0;
        foreach ($this->tpl->cates as $arr) {
            if ($category->hasson($arr['catid'])) {
                $this->tpl->cates[$i]['classname'] = 'folder';
            } else {
                $this->tpl->cates[$i]['add'] = '<a href="#" target="right" onclick="javascript:openwinx(\'#\',\'\')"><img src="http://yanji.sutoo.com/statics/images/add_content.gif" alt="添加"></a>';
            }
            $i++;
        }
        $this->tpl->siteid = core_app::$get['siteid'];
        if (core_app::$get['catid'])
            $this->tpl->cate = $category->category[core_app::$get['catid']];
        if (core_app::$get['modelid']) {
            $catid = intval(core_app::$get['catid']);
            $model = new table_model();
            $models = $model->getrow(core_app::$get['modelid']);
            $field = new table_fields();
            $fields = $field->getrows(array('modelid' => core_app::$get['modelid'], 'islist' => 1));
            $this->tpl->fields = $fields;
            $fields = core_tool::array_to_hashmap($fields, 'fieldid', 'name');
            $str = implode(',', $fields);
            $collist = 'id,catid,typeid,title,hits,uid,username';
            if ($str) {
                $collist .= ',' . $str;
            }
            $this->_table->name = $this->_table->prefix . $models['tbname'];
            $this->tpl->row = $this->_table->getrows("catid = '$catid'", '', 'id DESC', $collist);
        }
    }
    
    public function infolist_act(){
    	$obj_news = table_news::getInstance();
    	$where = "typeid in(1,2,3,4)";
    	$count = $obj_news->rec_count($where);
    	$pager = new core_page($count, $this->pagesize, $this->pageno);
    	$row = $obj_news->getrows($where,$pager->limit,'id DESC','id,brandid,pcatid,catid,typeid,title,username,uid,addtime,hits');
    	$this->tpl->page = $pager->multi(url('news','infolist',1));
    	$this->tpl->row = $row;
    	$this->tpl->categories = core_tool::rdcache('category');
    	$this->tpl->brands = core_tool::rdcache('brand');
    	$this->tpl->typeies = core_tool::rdcache('type');
    }

    public function edit_act() {
        if (core_app::$post['sub']) {

        }

        $catid = intval(core_app::$get['catid']);
        $siteid = intval(core_app::$get['siteid']);

        $category = table_category::getInstance();
        $cate = $category->getrow(array('catid' => $catid, 'siteid' => $siteid));
        $this->tpl->cate = $cate;

        $model = table_model::getInstance();
        $models = $model->getrow(array('modelid' => $cate['modelid']));
        $this->_table->name = $this->_table->prefix . $models['tbname'];

        $field = table_fields::getInstance();
        $fields = $field->getrows(array('modelid' => $cate['modelid']), $limit, "listorder=0,listorder asc,fieldid asc");
        $this->tpl->objfield = $field;
        $this->tpl->fields = $fields;
        $fields = core_tool::array_to_hashmap($fields, 'fieldid', 'name');
        $str = implode(',', $fields);
        $collist = 'id,catid,typeid';
        if ($str) {
            $collist .= ',' . $str;
        }
        $this->tpl->row = $this->_table->getrow(array('id' => core_app::$get['id']), "id DESC", $collist);

        $type = table_types::getInstance();
        $this->tpl->typelist = $type->getselect($siteid,$this->tpl->row['typeid']);

        if ($catid) {
            $this->tpl->catid = $catid;
        }
    }

    public function add_act() {
        $catid = intval(core_app::$get['catid']);
        $siteid = intval(core_app::$get['siteid']);

        $category = table_category::getInstance();
        $cate = $category->getrow(array('catid' => $catid, 'siteid' => $siteid));

        $model = table_model::getInstance();
        $models = $model->getrow(array('modelid' => $cate['modelid']));
        $this->_table->name = $this->_table->prefix . $models['tbname'];

        $field = table_fields::getInstance();
        $fields = $field->getrows(array('modelid' => $cate['modelid']), $limit, "listorder=0,listorder asc,fieldid asc");

        if (core_app::$post['sub']) {
            if ($this->_table->rec_insert(core_app::$post)) {
                core_url::closeiframe(true);
            } else {
                core_url::alerterror('添加资料失败');
            }
            exit;
        }

        $this->tpl->objfield = $field;
        $this->tpl->fields = $fields;
        $this->tpl->cate = $cate;
        $type = table_types::getInstance();
        $this->tpl->typelist = $type->getselect($siteid);

        if ($catid) {
            $this->tpl->catid = $catid;
        }
    }

    public function del_act() {
        /*if (core_app::$get['siteid']) {
            $this->_table->rec_delete(array('siteid' => core_app::$get['siteid']));
            core_url::alertinfo('删除资料成功', url('site', 'list', 1));
        }
        core_url::alerterror('删除失败');*/
    }

    public function batch_act() {
        /*if (is_array(core_app::$post['ids']) && !empty(core_app::$post['ids'])) {
            foreach (core_app::$post['ids'] as $v) {
                $this->_table->rec_delete(array('siteid' => $v));
            }
            core_url::alertinfo('删除资料成功', url('site', 'list', 1));
        } else {
            core_url::alerterror('没有选中任何资料');
        }*/
    }

    public function end() {
        parent::end();
        $this->show($this->_tpl);
    }

}