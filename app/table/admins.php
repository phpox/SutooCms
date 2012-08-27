<?php

/*
 * sutoocms: admins.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120606
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class table_admins extends core_table {

    static $me;

    public static function getInstance(){
        if(!self::$me){
            self::$me = new table_admins();
        }
        return self::$me;
    }
    
    public static function CountAdminNums(){
    	$obj_role = table_roles::getInstance();
    	$obj_admin = table_admins::getInstance();
    	$roles = $obj_role->getrows(null,0,'roleid DESC','roleid');
    	if(is_array($roles) && !empty($roles)){
    		foreach ($roles as $v){
    			$num = $obj_admin->rec_count(array('roleid'=>$v['roleid']));
    			$obj_role->rec_update(array('usernum'=>$num), array('roleid'=>$v['roleid']));
    		}
    	}
    }

    function getcols($act) {
        switch ($act) {
            case 'manage':
                return 'uid,username,password,roleid';
            case 'modify':
                return 'uid,username,roleid,realname,intro';
        }
    }
}