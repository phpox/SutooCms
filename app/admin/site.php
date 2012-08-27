<?php

/*
 * sutoocms: admin/site.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120827
 */

if (!defined('SUTOOCMS'))
    exit('Can\'t Access !');

class admin_site extends core_control {

    public $_tpl = '';

    public function init() {
        parent::init();
        $this->_table = table_sites::getInstance();
        if (!$this->_table->getFields())
            sexit('数据没找到!');
    }

    public function list_act() {
        $this->tpl->row = $this->_table->getrows('', 0);
    }

    public function edit_act() {
        if (core_app::$post['sub']) {
            if (!core_app::$post['sitename']) {
                core_url::alerterror('请输入站点名称');
            }
            if (!core_app::$post['sitedomain']) {
                core_url::alerterror('请输入站点域名');
            }
            core_app::$post['sttype'] = serialize(core_app::$post['sttype']);
            if ($this->_table->rec_update(core_app::$post, array('siteid' => core_app::$post['siteid']))) {
                core_url::closeiframe(true);
            } else {
                core_url::alerterror('修改站点失败');
            }
        }
        $this->tpl->row = $this->_table->getrow(array('siteid' => core_app::$get['siteid']), "siteid DESC", $this->_table->getcols('modify'));
        $this->tpl->row['sttype'] = unserialize($this->tpl->row['sttype']);
        $this->tpl->tmp = $this->getTemplateDir($this->tpl->row['template_dir']);
    }
    
    /**
     * 获取模板目录的HTML代码
     * @return string
     */
    private function getTemplateDir($template_dir=''){
    	$arr = getTemplates();
    	if(is_array($arr) && !empty($arr)){
    		foreach($arr as $skin => $name){
    			if($template_dir == $skin){
    				$chk = 'selected';
    			}
    			$str .= "<option value='{$skin}' $chk>{$name}</option>\r\n";
    			$chk = '';
    		}
    	}
    	return $str;
    }

    public function add_act() {
        if (core_app::$post['sub']) {
            if (!core_app::$post['sitename']) {
                core_url::alerterror('请输入站点名称');
            }
            if (!core_app::$post['sitedomain']) {
                core_url::alerterror('请输入站点域名');
            }
            core_app::$post['sttype'] = serialize(core_app::$post['sttype']);
            if ($this->_table->rec_insert(core_app::$post)) {
                core_url::closeiframe(true);
            } else {
                core_url::alerterror('添加站点失败');
            }
        }
        $this->tpl->tmp = $this->getTemplateDir();
    }

    public function del_act() {
        if (core_app::$get['siteid']) {
            $this->_table->rec_delete(array('siteid' => core_app::$get['siteid']));
            core_url::alertinfo('删除资料成功', url('site', 'list', 1));
        }
        core_url::alerterror('删除失败');
    }

    public function batch_act() {

        if (is_array(core_app::$post['ids']) && !empty(core_app::$post['ids'])) {
            if (core_app::$post['batch'] == 'delete') {
                foreach (core_app::$post['ids'] as $v) {
                    $this->_table->rec_delete(array('siteid' => $v));
                }
                core_url::alertinfo('删除资料成功', url('site', 'list', 1));
            }
        } else {
            core_url::alerterror('没有选中任何资料');
        }
    }

    public function end() {
        parent::end();
        $this->show($this->_tpl);
    }

}