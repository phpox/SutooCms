<?php

/*
 * sutoocms: default/user.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120725
 */

if (!defined('SUTOOCMS'))
    exit('Can\'t Access !');

class default_user extends core_control {

    public $_tpl = '';

    public function init() {
        parent::init();
        $this->_table = table_members::getInstance();
        if (!$this->_table->getFields())
            exit('数据没找到');
    }
    
    private function checkname($username){
    	if(strlen($username) < 5){
    		return 1;
    	}
    	$ck_word  = "0123456789";
    	$ck_word .= "abcdefghijklmnopqrstuvwxyz";
    	$ck_word .= "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    	$ck_word .= "-_";
    	for($i = 0;$i < strlen($username);$i++) {
    		$ck_result = strpos($ck_word,$username[$i]);
    		if($ck_result === false){
    			return 1;
    		}
    	}
    	$row = $this->_table->getrow(array('username'=>$username));
    	if($row){
    		return 2;
    	}
    	return 0;
    }
    
    public function checkpwd($pwd){
    	if(strlen($pwd) < 6){
    		return 1;
    	}
    	$ck_word_no = "0123456789";
    	$ck_word_ap = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    	$check_no = "";
    	$check_ap = "";
    	for($i = 0;$i < strlen($pwd);$i++){
    		$ck_result = strpos($ck_word_no,$pwd[$i]);
    		if($ck_result !== false){
    			$check_no = "ok";
    			break;
    		}
    	}
    	for($i = 0;$i < strlen($pwd);$i++){
    		$ck_result = strpos($ck_word_ap,$pwd[$i]);
    		if($ck_result !== false){
    			$check_ap = "ok";
    			break;
    		}
    	}
    	if($check_ap == "" || $check_no == ""){
    		return 1;
    	}
    	return 0;
    }
    
    public function checkname_act(){
    	$ck = $this->checkname(core_app::$get['username']);
    	if($ck == 1){
    		core_url::alertexit('用户名格式错误');
    	}
    	if($ck == 2){
    		core_url::alertexit('用户名已经存在');
    	}
    	if($ck == 0){
    		core_url::alertexit('用户名可以使用');
    	}
    }
    
    public function edit_act(){
    	$uid = $_SESSION['user']['uid'];
    	if(!$uid){
    		core_url::alertinfo('登录后才能修改资料',url('user','login'));
    	}
    	$row = $this->_table->getrow($uid,'uid DESC',$this->_table->getcols('user_modify'));
    	$tmp = explode('-', $row['zipcode']);
    	$row['zipcode1'] = $tmp[0];
    	$row['zipcode2'] = $tmp[1];
    	$tmp1 = explode('-', $row['address']);
    	$row['address1'] = $tmp1[0];
    	$row['address2'] = $tmp1[1];
    	$this->tpl->user = $row;
    	
    	$shopuser = new table_shopmember();
    	$row1 = $shopuser->getrow($uid,'uid DESC',$shopuser->getcols('user_modify'));
    	$this->tpl->shopuser = $row1;
    }
    
    public function reg_act(){
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
    		$ck = $this->checkpwd(core_app::$post['password']);
    		if($ck == 1){
    			core_url::alerterror('密码格式错误');
    		}
    		core_app::$post['password'] = md5(core_app::$post['password']);
    		core_app::$post['regtime'] = time();
    		core_app::$post['ischeck'] = '0';
    		core_app::$post['siteid'] = get('siteid');
    		core_app::$post['zipcode'] = core_app::$post['zipcode1'].'-'.core_app::$post['zipcode2'];
    		core_app::$post['address'] = core_app::$post['address1'].'-'.core_app::$post['address2'];
    		$ck = $this->checkname(core_app::$post['username']);
    		if($ck == 1){
    			core_url::alerterror('用户名格式错误');
    		}
    		if($ck == 2){
    			core_url::alerterror('用户名已经存在');
    		}
    		if ($this->_table->rec_insert(core_app::$post)) {
    			core_app::$post['uid'] = $this->_table->insert_id();
    			$obj_shopmember = new table_shopmember();
    			$obj_shopmember->rec_insert(core_app::$post);
    			core_url::redirect('user');
    		} else {
    			core_url::alerterror('注册用户失败');
    		}
    	}
    }
    
    public function logout_act(){
    	$_SESSION['user'] = null;
    	core_url::redirect('index');
    }
    
    public function sellnotice_act(){
    	if($this->tpl->st_user['uid'] == ''){
    		core_url::alertinfo('请先登录', url('user','login'));
    	}
    	if(core_app::$post['mode'] == 'new'){
    		core_app::$post['uid'] = $this->tpl->st_user['uid'];
    		core_app::$post['username'] = $this->tpl->st_user['username'];
    		core_app::$post['author'] = $this->tpl->st_user['username'];
    		core_app::$post['catid'] = 156;
    		core_app::$post['addtime'] = date('Y-m-d H:i:s');
    		if(core_app::$post['title'] == ''){
    			core_url::alerterror('内容不能为空');
    		}
    		$obj_news = table_news::getInstance();
    		if($obj_news->rec_insert(core_app::$post)){
    			core_url::alertinfo('发布公告成功',url('user','sellnotice'));
    		}else{
    			core_url::alerterror('发布公告失败');
    		}
    	}
    	$order = 'id DESC';
    	$where['catid'] = '156';
    	$where['uid'] = $this->tpl->st_user['uid'];
    	$obj_news = table_news::getInstance();
    	$infocount = $obj_news->rec_count($where);
    	$row = $obj_news->getrows($where,0,$order,$obj_news->getcols('list'));
    	$this->tpl->news = $row;
    }

    public function index_act() {
    	if($this->tpl->st_user['uid'] == ''){
    		core_url::alertinfo('请先登录', url('user','login'));
    	}
    }

    public function login_act() {
    	if($_SESSION['user']['username']){
    		core_url::redirect('user', 'index', 0);
    	}
    	$this->tpl->rememberid = core_app::$cookie['rememberid'];
    	if (core_app::$post['sub']) {
	    	if (!core_app::$post['username']) {
	    		core_url::alerterror('请输入登录名');
	    	}
	    	if (!core_app::$post['password']) {
	    		core_url::alerterror('请输入登录密码');
	    	}
    		if(core_app::$post['rememberid']){
	    		core_tool::setcookie('rememberid', core_app::$post['username']);
	    	}
	    	core_app::$post['password'] = md5(core_app::$post['password']);
	    	$row = $this->_table->getrow(array('username' => core_app::$post['username'], 'password' => core_app::$post['password']));
	    	if ($row) {
	    		$this->_table->rec_update(array('lasttime' => time(), 'lastip' => core_app::ip()), "uid={$row['uid']}");
	    		$_SESSION['user'] = $row;
	    		$obj_shopmember = table_shopmember::getInstance();
	    		$userinfo = $obj_shopmember->getrow($row['uid']);
	    		$_SESSION['userinfo'] = $userinfo;
	    		if($_SESSION['rurl']){
	    			$rurl = $_SESSION['rurl'];
	    			$_SESSION['rurl'] = null;
	    			core_url::redirecturl($rurl);
	    		}
	    		core_url::redirect('user', 'index', 0);
	    	} else {
	    		core_url::redirect('user', 'login', 0);
	    	}
    	}
    }
    
    public function myorder_act(){
    	if($this->tpl->st_user['uid'] == ''){
    		core_url::alertinfo('请先登录', url('user','login'));
    	}
    	if(!get('status')){
    		core_app::$get['status'] = 1;
    	}
    	$where = array('uid'=>$this->tpl->st_user['uid']);
    	$obj_order = table_orders::getInstance();
    	$row = $obj_order->getrows($where,0,'id DESC');
    	$row = core_tool::array_group_by($row,'status');
    	$this->tpl->row = $row;
    }
    
    public function del_act(){
    	if($this->tpl->st_user['uid'] == ''){
    		core_url::alertinfo('请先登录', url('user','login'));
    	}
    	if($this->_table->rec_delete($this->tpl->st_user['uid'])){
    		$_SESSION['user'] = null;
    		core_url::redirect();
    	}else{
    		core_url::alerterror('操作失败');
    	}
    }

    public function end() {
        parent::end();
        $this->show($this->_tpl);
    }

}