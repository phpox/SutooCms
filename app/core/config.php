<?php
/*
 * sutoocms: config.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这不是一个自由软件！也不是一个开源软件！您不能在任何目的的前提下对程序代码进行破解、修改和使用；
 * 不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 *
 * @version:    v1.0 u20111126
 * ---------------------------------------------
 * $Id: config.php 2011/11/26
 */

if (!defined('SUTOOCMS')) exit('Can\'t Access !');
class core_config {

    /*
     * 获取配置参数
     * var 参数名
     * key 数组参数的键
     */
    static function get($var,$key=null) {
        static $config;
        if(!$config){
            $config = include(ROOT.'/config/config.php');
        }
        if (isset($config[$var])) {
            $tmp = $config[$var];
            if (is_string($tmp))
                return $tmp;
            if ($key) {
                if (isset($tmp[$key]))
                    return $tmp[$key];
                else
                    return null;
            }
            return $tmp;
        }else{
            return null;
        }
    }
    
    
    /*
     * 获取用户配置参数
    * var 参数名
    * key 数组参数的键
    */
    static function uget($var,$key=null) {
    	static $uconfig;
    	if(!$uconfig){
    		$uconfig = include(ROOT.'/config/uconfig.php');
    	}
    	if (isset($uconfig[$var])) {
    		$tmp = $uconfig[$var];
    		if (is_string($tmp))
    			return $tmp;
    		if ($key) {
    			if (isset($tmp[$key]))
    				return $tmp[$key];
    			else
    				return null;
    		}
    		return $tmp;
    	}else{
    		return null;
    	}
    }
}