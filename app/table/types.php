<?php

/*
 * sutoocms: table/types.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120726
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class table_types extends core_table {
    
    static $me;

    public static function getInstance(){
        if(!self::$me){
            self::$me = new table_types();
        }
        return self::$me;
    }
    
    public static function getselect($siteid,$typeid=0) {
        $types = table_types::getInstance();
        $row = $types->getrows(array('siteid'=>$siteid),0,'typeid ASC');
        $arr = core_tool::array_to_hashmap($row, 'typeid', 'typename');
        return setOption($typeid,$arr);
    }

    function getcols($act) {
        switch ($act) {
            case 'manage':
                return 'typeid,siteid,typename,intro';
            case 'modify':
                return 'typeid,siteid,typename,intro';
        }
    }
}