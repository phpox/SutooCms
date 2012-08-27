<?php

/*
 * sutoocms: default/rpc.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120726
 */

if (!defined('SUTOOCMS'))
    exit('Can\'t Access !');

class default_rpc extends core_control {

    public $_tpl = '';

    public function init() {
        parent::init();
    }
    
    public function subinfo($id,$address1,$address2,$mobile,$tel){
    	$obj_order = table_orders::getInstance();
    	$row = array('address1'=>$address1,'address2'=>$address2,'mobile'=>$mobile,'tel'=>$tel);
    	if($obj_order->rec_update($row, $id)){
    		return 'ok';
    	}
    	return 'error';
    }
    
    public function subremark($id,$remark){
    	$obj_fav = table_fav::getInstance();
    	$row = array('remark'=>$remark);
    	if($obj_fav->rec_update($row, $id)){
    		return 'ok';
    	}
    	return 'error';
    }
    
    public function getSubCate($pcid){
    	$category = table_category::getInstance();
    	$row = $category->getrows(array('parentid'=>$pcid),0,'catid ASC',$category->getcols('option'));
    	return $row;
    }
    
    public function addFavShop($shopid,$shopname,$sellerid,$sellername){
    	if($this->tpl->st_user['uid'] == ''){
    		return 'nologin';
    	}
    	$obj_fav = table_fav::getInstance();
    	$uid = $this->tpl->st_user['uid'];
    	$username = $this->tpl->st_user['username'];
    	$row = $obj_fav->getrow(array('shopid'=>$shopid,'uid'=>$uid));
    	if($row){
    		return 'faved';
    	}
    	$time = date('Y-m-d H:i:s');
    	if($obj_fav->rec_insert(array('shopid'=>$shopid,'shopname'=>$shopname,'sellerid'=>$sellerid,'sellername'=>$sellername,'addtime'=>$time,'uid'=>$uid,'username'=>$username))){
    		$obj_shop = table_shops::getInstance();
    		$obj_shop->rec_update("shopfav=shopfav+1",$shopid);
    		return 'ok';
    	}
    	return 'error';
    }
    
    public function index_act(){
    	include(APP_DIR."/plugins/hprose/hproseHttpServer.php");
    	$server = new HproseHttpServer();
    	$server->setDebugEnabled(true);
    	$server->setP3PEnabled(true);
    	$server->setCrossDomainEnabled(true);
    	$server->addMethods(array("addFavShop","getSubCate","subinfo","subremark"),$this);
    	$server->handle();
    }
}