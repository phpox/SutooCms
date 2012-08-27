<?php
/*
 * sutoocms: model.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这不是一个自由软件！也不是一个开源软件！您不能在任何目的的前提下对程序代码进行破解、修改和使用；
 * 不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 *
 * @version:    v1.0 u20120323
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class table_model extends core_table {
    static $me;

    public static function getInstance(){
        if(!self::$me){
            self::$me = new table_model();
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