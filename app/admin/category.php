<?php

/*
 * sutoocms: admin/category.php
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

class admin_category extends core_control {

    public $_tpl = '';

    public function init() {
        parent::init();
        $this->_table = table_category::getInstance();
        if (!$this->_table->getFields())
            sexit('数据没找到!');
    }

    public function list_act() {
        $where['siteid'] = core_app::$get['siteid'];
        $where['parentid'] = '0';
        $this->tpl->row = $this->_table->getrows($where, $limit, "listorder=0,listorder asc,catid asc", $this->_table->getcols('manage'));
        
        $models = core_tool::rdcache('model');
        $this->tpl->models = $models;
    }

    public function add_act() {
        if (core_app::$post['sub']) {
            if (!core_app::$post['modelid']) {
                core_url::alerterror('请选择模型');
            }
            if (core_app::$post['addtype'] == 'batch') {
                core_app::$post['catename'] = core_app::$post['batch_add'];
            }
            if (!core_app::$post['catename']) {
                core_url::alerterror('请输入栏目名称');
            }
            if (core_app::$post['addtype'] == 'single') {
                if (!core_app::$post['catdir']) {
                    core_app::$post['catdir'] = core_pinyin::get(core_app::$post['catename']);
                }
                if ($this->_table->rec_insert(core_app::$post)) {
                    core_url::closeiframe(true);
                } else {
                    core_url::alerterror('添加分类失败');
                }
            } else {
                $catearr = explode("\n", core_app::$post['batch_add']);
                foreach ($catearr as $cates) {
                    $catetmp = explode("|", $cates);
                    if ($catetmp[0] != '') {
                        core_app::$post['catename'] = $catetmp[0];
                        core_app::$post['catdir'] = $catetmp[1];
                        if ($catetmp[1] == '') {
                            core_app::$post['catdir'] = core_pinyin::get($catetmp[0]);
                        }
                        $this->_table->rec_insert(core_app::$post);
                    }
                }
                core_url::closeiframe(true);
            }
        }
        
        $models = core_tool::rdcache('model');
        $sitemodel = array_flip(explode(',',$this->_site['sttype']));
        $models = array_intersect_key($models,$sitemodel);
        $models = core_tool::array_to_hashmap($models, 'modelid','modelname');
        $this->tpl->models = $models;

        $catid = intval(core_app::$get['catid']);

        $catelist = array();
        table_category::getcateselect(core_app::$get['siteid'], 0, $catelist);
        $this->tpl->catelist = $catelist;

        if ($catid) {
            $this->tpl->row = $this->_table->getrow(array('catid' => $catid));
        }
    }

    public function edit_act() {
        if (core_app::$post['sub']) {
            if (!core_app::$post['catename']) {
                core_url::alerterror('请输入栏目名称');
            }
            if (!core_app::$post['catdir']) {
                core_app::$post['catdir'] = core_pinyin::get(core_app::$post['catename']);
            }
            if(is_array(core_app::$post['subids']) && in_array(core_app::$post['parentid'],  core_app::$post['subids'])){
                core_url::alerterror('不能把移动到自己的子栏目中');
            }
            if ($this->_table->rec_update(core_app::$post,array('catid'=>core_app::$post['catid']))) {
                core_url::closeiframe(true);
            } else {
                core_url::alerterror('修改分类失败');
            }
        }
        
        $models = core_tool::rdcache('model');
        $sitemodel = array_flip(explode(',',$this->_site['sttype']));
        $models = array_intersect_key($models,$sitemodel);
        $models = core_tool::array_to_hashmap($models, 'modelid','modelname');
        $this->tpl->models = $models;

        $catid = intval(core_app::$get['catid']);

        $catelist = array();
        table_category::getcateselect(core_app::$get['siteid'], 0, $catelist);
        $this->tpl->catelist = $catelist;

        if ($catid) {
            $this->tpl->row = $this->_table->getrow(array('catid' => $catid));
            $this->tpl->subids = $this->_table->sons(core_app::$get['siteid'],$catid);
            array_push($this->tpl->subids,$catid);
        }
    }

    public function del_act() {
        if (core_app::$get['catid']) {
            $catid = intval(core_app::$get['catid']);
            $subids = $this->_table->sons(core_app::$get['siteid'],$catid);
            if($subids){
                core_url::alerterror('不能删除有子栏目的栏目');
            }
            $this->_table->rec_delete(array('catid' => core_app::$get['catid']));
            core_url::alertinfo('删除资料成功', url('category', 'list', 1,array('siteid'=>core_app::$get['siteid'])));
        }
        core_url::alerterror('删除失败');
    }

    public function batch_act() {
        if (is_array(core_app::$post['listorders']) && !empty(core_app::$post['listorders'])) {
            foreach (core_app::$post['listorders'] as $k => $v) {
                $this->_table->rec_update(array('listorder' => $v), array('catid' => $k));
            }
            core_url::redirect('category', 'list', 1);
        } else {
            core_url::alerterror('没有选中任何资料');
        }
    }
    
    public function upcache_act(){
    	$row = $this->_table->getrows(null,null,'1 DESC','catid,catename');
    	$arr = core_tool::array_to_hashmap($row, 'catid','catename');
    	if(core_tool::wrcache('category', $arr)){
    		echo lang('更新缓存成功');
    	}else{
    		echo lang('更新缓存失败');
    	}
    	exit();
    }

    public function end() {
        parent::end();
        $this->show($this->_tpl);
    }

}