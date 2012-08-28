<?php

/*
 * sutoocms: admin/admin.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author  phpox
 * @version v1.0 u20120827
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class admin_admin extends core_control{
	
    public $_tpl = '';
	
    public function init(){
        parent::init();
        $this->_table = table_admins::getInstance();
        if (!$this->_table->getFields())
        	sexit('数据没找到!');
    }

    public function index_act(){
    	
    	$models = core_tool::rdcache('model');
    	
    	$obj_site = table_sites::getInstance();
    	$sites = $obj_site->getrows();
    	if(is_array($sites) && !empty($sites)){
    		$i = 0;
    		foreach($sites as $site){
    			$sttype = array_flip(explode(',',$site['sttype']));
    			$sites[$i]['model'] = core_tool::array_to_hashmap(array_intersect_key($models,$sttype),'modelid','tbname');
    			$i++;
    		}
    	}
    	$this->tpl->sites = $sites;
        $this->tpl->admin = $_SESSION['admin'];
    }
    
    public function add_act(){
    	if (core_app::$post['sub']) {
    		if (!core_app::$post['username']) {
    			core_url::alerterror('请输入登录名');
    		}
    		if (!core_app::$post['password']) {
    			core_url::alerterror('请输入登录密码');
    		}
    		if (core_app::$post['password'] != core_app::$post['password1']) {
    			core_url::alerterror('两次输入的密码不一致');
    		}
    		core_app::$post['password'] = md5(core_app::$post['password']);
    		$row = $this->_table->getrow(array('username'=>core_app::$post['username']));
    		if($row){
    			core_url::alerterror('用户名已经存在');
    		}
    		if(!core_app::$post['roleid']) core_app::$post['roleid']=1000;
    		if ($this->_table->rec_insert(core_app::$post)) {
    			table_admins::CountAdminNums();
    			core_url::closeiframe(true);
    		} else {
    			core_url::alerterror('添加管理员失败');
    		}
    	}
    }
    
    public function edit_act(){
    	if (core_app::$post['sub']) {
    		if (!core_app::$post['password']) {
    			unset(core_app::$post['password']);
    		}
    		if (core_app::$post['password']){
    			if(core_app::$post['password'] != core_app::$post['password1']) {
    				core_url::alerterror('两次输入的密码不一致');
    			}
    			core_app::$post['password'] = md5(core_app::$post['password']);
    		}
    		if(!core_app::$post['roleid']) core_app::$post['roleid']=1000;
    		if ($this->_table->rec_update(core_app::$post,array('uid' => core_app::$post['uid']))) {
    			table_admins::CountAdminNums();
    			core_url::closeiframe(true);
    		} else {
    			core_url::alerterror('修改管理员失败');
    		}
    	}
    	$this->tpl->row = $this->_table->getrow(array('uid' => core_app::$get['uid']), "uid DESC", $this->_table->getcols('modify'));
    	$obj_role = table_roles::getInstance();
    	$roles = $obj_role->getrows(null,0,'roleid DESC','roleid,rolename');
    	$roles = core_tool::array_to_hashmap($roles, 'roleid', 'rolename');
    	$this->tpl->roles = setOption($this->tpl->row['roleid'], $roles);
    }
    
    public function del_act() {
    	if (core_app::$get['uid']) {
    		$this->_table->rec_delete(array('uid' => core_app::$get['uid']));
    		table_admins::CountAdminNums();
    		core_url::alertinfo('删除资料成功', url('admin', 'list', 1,array('roleid'=>core_app::$get['roleid'])));
    	}
    	core_url::alerterror('删除失败');
    }
    
    public function list_act(){
    	$roleid = intval(core_app::$get['roleid']);
    	$this->tpl->row = $this->_table->getrows(array('roleid'=>$roleid), 0);
    }

    public function logout_act(){
        $_SESSION['admin'] = null;
        core_url::redirect('index');
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