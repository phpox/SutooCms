<?php

/*
 * sutoocms: core/url.php
 * ============================================================================
 * 版权所有 2011-2012 延边速途网络科技有限公司，并保留所有权利。
 * -------------------------------------------------------
 * 这是一个自由软件！也是一个开源软件！您能对程序代码进行修改和使用；
 * ============================================================================
 *
 * @author:  phpox
 * @version: v1.0 u20120827
 */

if (!defined('SUTOOCMS'))
    exit('Can\'t Access !');

final class core_url {

    public function __construct() {
        
    }
    
    //跳转到指定url
    public static function redirecturl($url, $delay = 0) {
    	if (headers_sent() || $delay > 0) {
    		$delay = (int) $delay;
    		echo "<html><head><meta http-equiv='refresh' content='{$delay};URL={$url}' /></head></html>";
    	} else {
    		header("Location: {$url}");
    		}
    		exit;
    		}

    //跳转到指定url
    public static function redirect($ctl='', $act='', $adminact=0, $parm=null, $delay = 0) {
        $url = core_url::cturl($ctl, $act, $adminact,$parm);
        if (headers_sent() || $delay > 0) {
            $delay = (int) $delay;
            echo "<html><head><meta http-equiv='refresh' content='{$delay};URL={$url}' /></head></html>";
        } else {
            header("Location: {$url}");
        }
        exit;
    }
    
    //回到来源页面
    public static function redirectfrom($delay = 0){
        $url = core_app::$from;
        if (headers_sent() || $delay > 0) {
            $delay = (int) $delay;
            echo "<html><head><meta http-equiv='refresh' content='{$delay};URL={$url}' /></head></html>";
        } else {
            header("Location: {$url}");
        }
    }

    //生成URL
    public static function cturl($ctl='', $act='', $adminact=0, $parm=null) {
        $url = 'index.php';
        if ($ctl == '') {
            $ctl = 'index';
        }
        if ($act == '') {
            $act = 'index';
        }
        if(!$adminact && (core_config::get('url_type') == 'rewrite' || core_config::get('url_type') == 'html'))
        	$is_urlrewrite = 1;
        if($is_urlrewrite){
        	$url = "$ctl/$act";
        }else{
        	$url .= "?ctl=" . $ctl . "&act=" . $act;
        }
        if(is_string($parm) && !empty($parm)){
        	parse_str($parm,$parm);
        }
        if (is_array($parm) && !empty($parm)) {
            foreach ($parm as $k => $v) {
            	if($is_urlrewrite)
                	$url .= "/$k/$v";
                else
                	$url .= "&$k=$v";
            }
        }
        if ($adminact)
        	$url .= "&adminact=1";
        return $url;
    }
    
    /**
     * 弹出提示框,并关闭页面
     *
     * @param string $info 提示的信息
     * @param bool $back 是否后退
     */
    public static function alertexit($info){
    	echo "<script type='text/javascript'>alert('".lang($info)."');window.close();";
    	echo "</script>";
    	exit();
    }
    
    
    //弹出提示框并后退一步
    public static function alerterror($info, $back=true) {
        echo "<script type='text/javascript'>alert('".lang($info)."');";
        if (true === $back) {
            echo "history.go(-1);";
        }
        echo "</script>";
        exit();
    }
    
    //弹出信息框 并跳转到指定url
    public static function alertinfo($info, $url, $window='',$rurl='') {
    	if($rurl){
    		$_SESSION['rurl'] = $rurl;
    	}
        echo "<script type='text/javascript'>alert('" . lang($info) . "');window{$window}.location.href='$url';</script>";
        exit();
    }
    
    //关掉弹出窗口 参数为true时会刷新后面的列表页面
    function closeiframe($ref=false) {
        if ($ref) {
            $str = 'parent.refiframe();';
        }
        echo "<script type=\"text/javascript\">" . $str . "top.closeifram();</script>";
        exit();
    }

}