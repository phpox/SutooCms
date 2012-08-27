<?php

/*
 * sutoocms: core/app.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120703
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

class core_app {

    static $ctl;
    static $act;
    static $tpl;
    static $get;
    static $post;
    static $cookie;
    static $uri;
    static $max_upload;
    static $max_post;
    static $max_file;
    static $mysql_ver;
    static $version;
    static $from;
    static $domain;
    static $pre;

    public function __construct() {

        self::$get = $_GET;
        self::$post = $_POST;
        self::$cookie = $_COOKIE;
		
        self::$max_upload = @ini_get("upload_max_filesize"); //最大上传大小
        self::$max_post = @ini_get("post_max_size"); //最大POST大小
        self::$max_file = self::$max_upload >= self::$max_post ? self::$max_upload : self::$max_post; //最大上传文件大小
        self::$version = VERSION; //CMS版本
        self::$from = $_SERVER['HTTP_REFERER'];//来源页面
        self::$domain = $_SERVER['HTTP_HOST']; //当前域名
		
		//取得MYSQL版本
        $tbl = table_roles::getInstance();
        self::$mysql_ver = $tbl->verison();
		
		//验证码转换为大写字母
        if (isset(self::$post['checkcode']))
            self::$post['checkcode'] = strtoupper(self::$post['verify']);
		
		//批量转义前台提交过来的信息
        if (function_exists('get_magic_quotes_gpc') && !get_magic_quotes_gpc()) {
            if(is_array(self::$get) && !empty(self::$get)){
                array_walk_recursive(self::$get,array($this,'walk'));
            }
            if(is_array(self::$post) && !empty(self::$post)){
                array_walk_recursive(self::$post,array($this,'walk'));
            }
            if(is_array(self::$cookie) && !empty(self::$cookie)){
                array_walk_recursive(self::$cookie,array($this,'walk'));
            }
        }
		
        self::$ctl = isset(self::$get['ctl']) ? self::$get['ctl'] : 'index';//控制器赋值
        self::$act = isset(self::$get['act']) ? self::$get['act'] : 'index';//动作赋值
        if(self::$get['u'] != ''){
        	self::$ctl = 'shop';
        	self::$act = 'index';
        }
        require_once(ROOT.'/app/core/functions.php');//加载自定义函数
		new core_stsession(new table_session());//初始化DB 存储SESSION
    }

    /**
     * 批量转义数组
     * @param <array> $var 要转义的数组
     */
    function walk(&$var) {
        $var = trim(addslashes($var));
    }
	
	//返回真实IP地址
	static function ip() {
        if ($_SERVER['HTTP_CLIENT_IP']) {
            $onlineip = $_SERVER['HTTP_CLIENT_IP'];
        }
        elseif ($_SERVER['HTTP_X_FORWARDED_FOR']) {
            $onlineip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        }
        elseif ($_SERVER['REMOTE_ADDR']) {
            $onlineip = $_SERVER['REMOTE_ADDR'];
        }
        else {
            $onlineip = $_SERVER['REMOTE_ADDR'];
        }
        return $onlineip;
    }
	
	//判断管理员是否登录
	static function isadmin() {
		if($_SESSION['admin']){
			return true;
		}
		return false;
	}

    /**
     * 系统初始化并开始运行
     */
    public function run(){
        if(core_app::$get['adminact']){
            if(core_app::isadmin()){
                $pre = 'admin';
            }else{
                core_url::redirect('admin', 'login');
            }
        }else{
            $pre = 'default';
        }
        self::$pre = $pre;
        $class = $pre.'_'.self::$ctl;
        $class = new $class();
        $class->init();
        $method = self::$act.'_act';
        if (method_exists($class,$method))
            $class->$method();
        else
            exit($method.'页面没找到');
        $class->end();
    }
}