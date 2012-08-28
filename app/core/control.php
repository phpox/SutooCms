<?php

/*
 * sutoocms: core/control.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120827
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');

abstract class core_control{

    public $tpl;
    public $pageno;
    public $pagesize;
    public $_table = null;
    public $_style = '';
    public $_site;

    function __construct() {
    	//当前访问的站点
    	$obj_site = table_sites::getInstance();
    	$sites = $obj_site->getrows();
    	$curr_site = null;
    	if(is_array($sites) && !empty($sites)){
    		foreach ($sites as $arr){
    			if(preg_match('/'.core_app::$domain.'/',$arr['sitedomain'])){
    				$this->_site = $curr_site = $arr;
    				break;
    			}
    		}
    	}
    	$this->_style = $curr_site['template_dir'];
    	
		//初始化模板对象
        $this->tpl = new core_tpl($this);
        core_app::$tpl = $this->tpl;
        
        $this->pageno = intval(core_app::$get['pageno'])?intval(core_app::$get['pageno']):1;
        $this->pagesize = core_config::get('pagesize');
		
        core_app::$tpl->base_dir = core_config::get('base_dir'); //网站安装目录 已/结尾
        core_app::$tpl->template_dir = core_config::get('template_dir'); //默认模板目录
        
        $tmp = explode('-', $_SESSION['user']['zipcode']);
        $_SESSION['user']['zipcode1'] = $tmp[0];
        $_SESSION['user']['zipcode2'] = $tmp[1];
        $tmp1 = explode('-', $_SESSION['user']['address']);
        $_SESSION['user']['address1'] = $tmp1[0];
        $_SESSION['user']['address2'] = $tmp1[1];
        core_app::$tpl->st_user = $_SESSION['user']; //当前登录的用户信息
        core_app::$tpl->st_userinfo = $_SESSION['userinfo']; //当前登录的用户信息

        if(!$curr_site && core_app::$pre != 'admin'){
        	core_tool::sexit('你要访问的网站没有找到');
        }
        if(!core_app::$get['siteid']){
        	core_app::$get['siteid'] = $curr_site['siteid'];
        }
		core_app::$tpl->siteid = core_app::$get['siteid'];
        core_app::$tpl->site_title = $curr_site['sitename'];
        core_app::$tpl->site_domain = $curr_site['sitedomain'];
        core_app::$tpl->template_dir = $curr_site['template_dir'];
        core_app::$tpl->curr_site = $curr_site;
        core_app::$tpl->style_dir = core_config::get('base_dir').'skin/'.$this->_style.'/';
        
        $obj_keywords = table_keywords::getInstance();
        $where = "uptime >= uptime-86400";
        $row = $obj_keywords->getrows($where,5,'num DESC,uptime DESC');
        core_app::$tpl->keywordsarr = $row;
		
		//加载语言包文件
        if(core_app::$get['adminact']){
            core_tool::load_lang('adminsys.php');
        }else{
            core_tool::load_lang('sys.php');
        }
    }

    /**
     * 控制器的初始化方法
     */
    public function init(){
        //echo '这是控制器的初始化方法<br>';
    }

    /**
     * 控制器的结束方法
     */
    public function end(){
       // echo '这是控制器的结束方法<br>';
    }

    /**
     * 解析模版并显示
     * @param <string> $tpl 模版文件
     */
    function show($tpl=null) {
        $this->tpl->show($tpl);
    }

}