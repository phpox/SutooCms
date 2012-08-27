<?php

/*
 * sutoocms: table/roles.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @version:    v1.0 u20120629
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class table_roles extends core_table {
    static $me;

    public static function getInstance(){
        if(!self::$me){
            self::$me = new table_roles();
        }
        return self::$me;
    }
    
    function getcols($act) {
        switch ($act) {
            case 'manage':
                return 'uid,username,password,role';
            case 'modify':
                return 'uid,username,password,role';
            case 'user_modify':
                return 'uid,username,password,role';
            case 'user_list':
                return 'uid,username,password,role';
        }
    }
}