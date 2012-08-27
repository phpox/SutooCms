<?php

/*
 * sutoocms: index.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120827
 */

header("Content-Type: text/html; charset=utf-8");
header('Cache-control: private, must-revalidate');

error_reporting(0);
@date_default_timezone_set("PRC");

define('SUTOOCMS',TRUE);
define('ROOT',dirname(__FILE__));
define('APP_DIR',dirname(__FILE__).'/app');
define('TEMPLATE',dirname(__FILE__).'/template');
define('VERSION', 'V1.1 20120827');

function __autoload($class) {
    $class_path = ROOT.'/app/'.str_ireplace('_', '/', $class).'.php';
    include_once($class_path);
    if(!class_exists($class,false)){
        exit('系统加载类失败，类'.$class.'不存在！');
    }
}

if(core_config::get('isdebug')){
    error_reporting(E_ALL & ~E_NOTICE);
}

$app = new core_app();
$app->run();