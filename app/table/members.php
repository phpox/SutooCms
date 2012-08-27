<?php
/*
 * sutoocms: members.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这不是一个自由软件！也不是一个开源软件！您不能在任何目的的前提下对程序代码进行破解、修改和使用；
 * 不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 *
 * @version:    v1.0 u20111126
 * ---------------------------------------------
 * $Id: members.php 2011/11/26
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class table_members extends core_table {

    static $me;

    public static function getInstance(){
        if(!self::$me){
            self::$me = new table_members();
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
                return 'uid,username,realname,email,zipcode,address,mobile,tel';
            case 'user_list':
                return 'uid,username,password,role';
        }
    }
}