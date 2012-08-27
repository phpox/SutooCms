<?php

/*
 * sutoocms: table.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120405
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

abstract class core_table {
    public $connection_id="";
    public $pconnect=0;
    public $shutdown_queries=array();
    public $queries=array();
    public $query_id="";
    public $query_count=0;
    public $record_row=array();
    public $failed=0;
    public $halt="";
    public $sql='';
    public $name = '';
    public $prefix = '';
    public $dbname = '';
    
    public function __construct() {
        $config = core_config::get('database');
        $this->prefix=isset($config['prefix']) ?$config['prefix'] : '';
        $this->name=$this->prefix.str_ireplace('table_','',get_class($this));
        $this->connect();
    }

    /**
     * 连接数据库
     * @staticvar <object> $connection_id 只连接一次
     */
    public function connect() {
        static $connection_id;
        if ($connection_id) {
            $this->connection_id = $connection_id;
            return true;
        }
        $db_config = core_config::get('database');
        if ($this->pconnect) {
            $this->connection_id=mysql_pconnect($db_config["host"],$db_config["user"],$db_config["password"]);
        }
        else {
            $this->connection_id=mysql_connect($db_config["host"],$db_config["user"],$db_config["password"]);
        }

        if (!$this->connection_id) {
                exit('数据库连接失败!');
        }
        $connection_id = $this->connection_id;
        if (!@mysql_select_db($db_config["database"],$this->connection_id)) {
            $this->halt("Can not connect MySQL Database");
        }
        $this->dbname = $db_config["database"];
        if ($db_config["encoding"]) {
            @mysql_unbuffered_query("SET NAMES '".$db_config["encoding"]."'");
        }
        @mysql_query("SET sql_mode=''");
        return true;
    }

    /**
     * 执行查询
     * @param <funcname> $query_type 使用的查询函数
     * @return <res> 查询返回的资源
     */
    function query($query_id,$query_type='mysql_query') {
        $this->query_id = @$query_type($query_id,$this->connection_id);
        if (!$this->query_id) {
            $this->halt("查询失败:\n$query_id");
        }
        $this->query_count++;
        return $this->query_id;
    }

    /**
     * 不缓存查询 效率更高
     * @param <string> $sql
     * @return <res> 查询返回的资源
     */
    function query_unbuffered($sql="") {
        return $this->query($sql,'mysql_unbuffered_query');
    }

    /**
     * 根据查询获取数据
     * @param <type> $res
     * @return <type> 获取到的数据
     */
    function fetch_array($res = "") {
        if ($res == "")
            $res = $this->query_id;
        $this->record_row=@mysql_fetch_array($res,MYSQL_ASSOC);
        return $this->record_row;
    }

    /**
     *
     * INSERT，UPDATE 或 DELETE 查询所影响的记录行数。 
     */
    function affected_rows() {
        return @mysql_affected_rows($this->connection_id);
    }

    /**
     *
     * SELECT 查询所影响的记录行数。
     */
    function num_rows($query_id="") {
        if ($query_id == "")
            $query_id = $this->query_id;
        return @mysql_num_rows($query_id);
    }

    /**
     * 错误编号
     */
    function get_errno() {
        $this->errno=@mysql_errno($this->connection_id);
        return $this->errno;
    }

    function get_error() {
        $this->error=@mysql_error($this->connection_id);
        return $this->error;
    }

    /**
     *
     *  取得上一步 INSERT 操作产生的 ID
     */
    function insert_id() {
        return @mysql_insert_id($this->connection_id);
    }

    /**
     *
     * 获取查询总数
     */
    
    function query_count() {
        return $this->query_count;
    }

    /**
     *
     * 释放结果内存
     */
    function free_result($query_id="") {
        if ($query_id == "")
            $query_id = $this->query_id;
        @mysql_free_result($query_id);
    }

    /**
     *
     * 关闭连接
     */
    function close_db() {
        if ($this->connection_id){
            return @mysql_close($this->connection_id);
        }
    }

    /**
     * 获取所有数据表
     */
    function get_table_names() {
        $result=mysql_list_tables($this->dbname);
        $num_tables=@mysql_numrows($result);
        for ($i=0;$i <$num_tables;$i++) {
            $tables[]=mysql_tablename($result,$i);
        }
        mysql_free_result($result);
        return $tables;
    }

    /**
     * 报告错误
     */
    function halt($the_error="") {
        if (!core_config::get('isdebug'))
            return;
        $message .= $the_error."<br/>\r\n";
        $message .= $this->get_errno()."<br/>\r\n";
        $message .= $this->get_error()."<br/>\r\n";
        exit($message);
    }

    /**
     * 自动关闭数据库
     */
    function __destruct() {
        $this->close_db();
    }

    /**
     * select操作
     * @param <type> $tbname
     * @param <type> $where
     * @param <type> $limit
     * @param <type> $fields
     * @param <type> $order
     * @return string
     */
    function sql_select($tbname,$where="",$limit=0,$fields="*",$order='') {
        $sql="SELECT ".$fields." FROM `".$tbname."` ".($where ?" WHERE ".$where : "")." ORDER BY ".$order.($limit ?" limit ".$limit : "");
        //echo $sql."<br>";
        return $sql;
    }

    /**
     * insert操作
     * @param <type> $tbname
     * @param <type> $row
     * @return <type>
     */
    function sql_insert($tbname,$row) {
        $sqlfield='';
        $sqlvalue='';
        foreach ($row as $key=>$value) {
            if (in_array($key,explode(',',$this->getcolslist()))) {
                $sqlfield .= $key.",";
                $sqlvalue .= "'".$value."',";
            }
        }
        return "INSERT INTO `".$tbname."`(".substr($sqlfield,0,-1).") VALUES (".substr($sqlvalue,0,-1).")";
    }

    /**
     * update操作
     * @param <type> $tbname
     * @param <type> $row
     * @param <type> $where
     * @return string
     */
    function sql_update($tbname,$row,$where) {
        $sqlud='';
        if (is_string($row))
            $sqlud=$row.' ';
        else
            foreach ($row as $key=>$value) {
                if (in_array($key,explode(',',$this->getcolslist()))) {
                    if (preg_match('/^\[(.*)\]$/',$value,$match)){
                        $sqlud .= "`$key`"."= ".$match[1].",";
                    }
                    elseif ($value === "")
                        $sqlud .= "`$key`= NULL, ";
                    else
                        $sqlud .= "`$key`"."= '".$value."',";
                }
            }
        $sqlud=rtrim($sqlud);
        $sqlud=rtrim($sqlud,',');
        $this->condition($where);
        $sql="UPDATE `".$tbname."` SET ".$sqlud." WHERE ".$where;
        return $sql;
    }

    /**
     *  replace操作
     * @param <type> $tbname
     * @param <type> $row
     * @return <type>
     */
    function sql_replace($tbname,$row) {
        $sqlud='';
        if (is_string($row))
            $sqlud=$row.' ';
        else
            foreach ($row as $key=>$value) {
                if (in_array($key,explode(',',$this->getcolslist()))) {
                    $sqlud .= $key."= '".$value."',";
                }
            }
        return "REPLACE INTO `".$tbname."` SET ".substr($sqlud,0,-1);
    }

    /**
     * delete操作
     * @param <type> $tbname
     * @param <type> $where
     * @return <type>
     */
    function sql_delete($tbname,$where) {
        $this->condition($where);
        return "DELETE FROM `".$tbname."` WHERE ".$where;
    }


    function rec_insert($row) {
        $tbname=$this->name;
        $sql=$this->sql_insert($tbname,$row);
        return $this->query_unbuffered($sql);
    }

    function rec_update($row,$where) {
        $tbname=$this->name;
        $sql=$this->sql_update($tbname,$row,$where);
        return $this->query_unbuffered($sql);
    }

    function rec_replace($row) {
        $tbname=$this->name;
        $sql=$this->sql_replace($tbname,$row);
        return $this->query_unbuffered($sql);
    }

    function rec_delete($where) {
        $tbname=$this->name;
        $sql=$this->sql_delete($tbname,$where);
        return $this->query_unbuffered($sql);
    }

    function rec_select($where="",$limit=0,$fields="*",$order='') {
        $tbname=$this->name;
        $sql=$this->sql_select($tbname,$where,$limit,$fields,$order);
        //echo $sql;
        $res=$this->rec_query($sql);
        return $res;
    }

    function rec_select_one($where,$fields="*",$order="id") {
        $tbname=$this->name;
        $sql=$this->sql_select($tbname,$where,1,$fields,$order);
        //echo $sql;
        return $this->rec_query_one($sql);
    }

    function rec_query($sql) {
        $this->sql=$sql;
        $rs=$this->query($sql);
        $rs_num=$this->num_rows($rs);
        $rows=array();
        for ($i=0;$i <$rs_num;$i++) {
            $rows[]=$this->fetch_array($rs);
        }
        $this->free_result($rs);
        return $rows;
    }

    function rec_query_one($sql) {
        $rs=$this->query($sql);
        $row=$this->fetch_array($rs);
        $this->free_result($rs);
        return $row;
    }

    function rec_count($where="") {
        $tbname=$this->name;
        $this->condition($where);
        $sql="SELECT count(*) as rec_sum FROM `".$tbname."` ".($where ?" WHERE ".$where : "");
        $row=$this->rec_query_one($sql);
        return $row["rec_sum"];
    }

    function getrows($condition='',$limit=0,$order='1 desc',$cols='*') {
        $this->condition($condition);
        //$this->record_count=$this->rec_count($condition);
        return $this->rec_select($condition,$limit,$cols,$order,'');
    }

    function getrow($condition,$order='1 desc',$cols='*') {
        $this->condition($condition);
        return $this->rec_select_one($condition,$cols,$order);
    }

    function condition(&$condition) {
        if (isset($condition) &&is_array($condition)) {
            $_condition=array();
            foreach ($condition as $key=>$value) {
                $_condition[]="`$key`='$value'";
            }
            $condition=implode(' and ',$_condition);
        }
        else if (is_numeric($condition)) {
            $this->getFields();
            $condition="`$this->primary_key`='$condition'";
        }
    }

    function getFields() {
        static $fields;
        static $primary_key;
        if (!isset($fields)) {
            $fields=array();
            $query=$this->query('Describe '.$this->name);
            $_field=array();
            while ($field=$this->fetch_array($query)) {
                $_type=preg_match('/([\w\x7f-\xff]+)(\(([\w\x7f-\xff]+)\))?/i',$field['Type'],$result);
                $_field['name']=$field['Field'];
                $_field['type']=$result[1];
                $_field['len']=isset($result[3]) ?$result[3] : 0;
                $_field['primary_key']=$field['Key'] == 'PRI';
                $_field['notnull']=$field['Null'] == 'NO';
                $fields[$field['Field']]=$_field;
                if ($field['Key'] == 'PRI') {
                    $this->primary_key=$field['Field'];
                    $primary_key=$this->primary_key;
                }
            }
        }
        $this->primary_key=$primary_key;
        return $fields;
    }
    
    function getFiledsList() {
        $list='';
        foreach ($this->getFields() as $field) $list.=$field['name'].' ';
        return $list;
    }

    function getcolslist() {
        $list=array();
        foreach ($this->getFields() as $field) $list[]=$field['name'];
        return implode(',',$list);
    }

    function getcols($act='') {
        return implode(',',array_slice(array_keys($this->getFields()),0,2));
    }

    final function getname() {
        return $this->name;
    }

    function verison() {
        return mysql_get_server_info($this->connection_id);
    }
}
