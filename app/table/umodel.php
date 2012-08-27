<?php

/*
 * sutoocms: admin/umodel.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120722
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class table_umodel extends core_table {
    static $me;

    public static function getInstance(){
        if(!self::$me){
            self::$me = new table_umodel();
        }
        return self::$me;
    }

    function getcols($act) {
        switch ($act) {
            case 'manage':
                return '`modelid`,`modelname`,`tbname`,`intro`,`state`,`rownum`';
            case 'modify':
                return '`modelid`,`modelname`,`tbname`,`intro`,`state`,`rownum`';
        }
    }
    
    public function getmodellist($siteid=0){
        $where = array();
        if($siteid == 'all'){
            $where = "state = 1";
        }elseif($siteid){
            $where = "siteid =0 or siteid='$siteid' and state = 1";
        }else{
            $where = "siteid =0 and state = 1";
        }
        $row = $this->getrows($where, 0, "modelid asc",$this->getcols('manage'));
        return $row;
    }
}