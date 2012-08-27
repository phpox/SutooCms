<?php

/*
 * sutoocms: core/function.php
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

function getGift($id){
	$obj_shop = table_shops::getInstance();
	$row = $obj_shop->getrow($id);
	return $row['part2'].' '.$row['part3'].' '.$row['part4'].' '.$row['part5'].' '.$row['part_text'];	
}

function get($key){
	return core_app::$get[$key];
}

function getReply($id){
	$obj_news = table_news::getInstance();
	$row = $obj_news->getrows("pid=$id",0,'id DESC');
	return $row;
}

function getCateTop($catid){
	$obj_shop = table_shops::getInstance();
	
	$sql = "SELECT sum(hits) as chits,sum(g_price) as cprice FROM `".$obj_shop->prefix."shops` WHERE pcatid='$catid'";
	$arr = $obj_shop->rec_query_one($sql);
	$rs['count'] = $arr;
	
	$sql = "SELECT brandid,sum(hits) as hits,AVG(g_price) as price FROM `".$obj_shop->prefix."shops`  WHERE pcatid='$catid' GROUP BY brandid ORDER BY hits DESC LIMIT 0,10";
	$row = $obj_shop->rec_query($sql);
	$rs['row'] = $row;
	return $rs;
}

function getShopThumb($shopid){
	$obj_shop = table_shops::getInstance();
	$row = $obj_shop->getrow($shopid,'1 desc','g_photo1');
	return $row['g_photo1'];
}

function getPcates($modelid){
	$obj_category = table_category::getInstance();
	$where = "modelid=$modelid AND parentid=0";
	$cates = $obj_category->getrows($where,0,'catid ASC',$obj_category->getcols('option'));
	return $cates;
}

function getcates($catid){
	$obj_category = table_category::getInstance();
	$where = "parentid='{$catid}'";
	$cates = $obj_category->getrows($where,0,'catid ASC',$obj_category->getcols('option'));
	if(is_array($cates) && !empty($cates)){
		foreach ($cates as $k => $v){
			$str .= '<a href="'.url('shop','list',0,array('catid'=>$v['catid'])).'">'.$v['catename'].'</a> | ';
		}
	}
	echo substr($str,0, -3);
}

function getsubcates($pcatid){
	$obj_category = table_category::getInstance();
	$where = "parentid='{$pcatid}'";
	$cates = $obj_category->getrows($where,0,'catid ASC',$obj_category->getcols('option'));
	return $cates;
}

function getBrands($limit){
	$obj_brand = new table_brands();
	$where = "";
	$row = $obj_brand->getrows($where,$limit,'brandname ASC',$obj_brand->getcols('option'));
	return $row;
}

function template($tpl) {
	core_app::$tpl->isgzip = false;
	$str = core_app::$tpl->fetch($tpl);
	core_app::$tpl->isgzip = true;
	return $str;
}

function getFieldVal($field,$val){
    $field['setting'] = unserialize($field['setting']);
    if($field['setting']['ds'] == 'a'){
        $model = new table_model();
        $model->name = $field['setting']['tbname'];
        $row = $model->getrow(array($field['setting']['valname']=>$val),$field['setting']['valname'].' DESC',$field['setting']['valname'].','.$field['setting']['viewname']);
        return $row[$field['setting']['viewname']];
    }
}

function getTemplateName($template_dir){
	$arr = getTemplates();
	return $arr[$template_dir];
}

/**
 * 获取所有的模板风格
 * @return multitype:
 */
function getTemplates(){
	$list = core_tool::listdir('./template/');
	$row = array();
	foreach ($list as $v) {
		if($v == 'admin') continue;
		$tmp = core_tool::listdir('./template/' . $v);
		if (!empty($tmp) && is_array($tmp)) {
			foreach ($tmp as $k) {
				if ($k == 'intro.xml') {
					$obj = core_tool::readxml('./template/' . $v . '/' . $k);
					$key = (string)$obj->skin;
					$row[$key] = (string)$obj->name;
				}
			}
		}
	}
	return $row;
}

/**
 * 取得配置文件信息
 * @param string $var
 * @param string $key
 * @return Ambigous <NULL, string>
 */
function getconfig($var,$key=null){
	$str = core_config::get($var,$key);
	if(is_array($str)){
		$str = implode('&',$str);
	}
	return $str;
}

function cut($string,$length=20) {
	return core_tool::cn_substr(strip_tags($string),$length,'utf-8',false);
}

function cturl($str='',$adminact=0){
	$tmp = @explode('/',$str);
	$ctl = $tmp[0];
	$act = $tmp[1];
	if(($num = count($tmp)) > 2){
		for($i=2;$i<$num;$i++){
			if($i%2==0)
				$parm .= "&".$tmp[$i];
			else
				$parm .= '='.$tmp[$i];
		}
	}
	return url($ctl,$act,$adminact,$parm);
}

function url($ctl='', $act='', $adminact=0, $parm=null) {
    return core_url::cturl($ctl, $act, $adminact, $parm);
}

function lang($string) {
    if (isset(core_app::$tpl->lang[$string]))
        return core_app::$tpl->lang[$string];
    else
        return $string;
}

/**
 * 生成checkbox的选项
 * @param array $arr 默认被选中的数组
 * @param array $all 全部选项数组
 * @param array $info input 的附加属性
 * @param string $sp 每个选项之间的分隔符
 */
function setCheckBox($arr, $all, $info, $sp=' ') {
    $str = "<input type='checkbox'";
    foreach ($info as $k => $v) {
        $str .= " $k='$v'";
    }
    $code = '';
    foreach ($all as $k => $v) {
        if (is_array($arr) && in_array($k, $arr)) {
            $code .= $str . " value='$k' checked />$v" . $sp;
        } else {
            $code .= $str . " value='$k' />$v" . $sp;
        }
    }
    return $code;
}

/**
 * 生成SELECT的选项
 *
 * @param string $selected 默认选中的值
 * @param array $all 选项数组
 * @return string
 */
function setOption($selected, $all) {
    $code = '';
    if (!is_array($all) || empty($all))
        return '';
    if (core_app::$ctl == 'category' && core_app::$act == 'edit') {
        $category = table_category::getInstance();
        $subids = $category->sons(core_app::$get['siteid'],core_app::$get['catid']);
        array_push($subids, core_app::$get['catid']);
    }
    foreach ($all as $k => $v) {
        if (core_app::$ctl == 'category' && core_app::$act == 'edit') {
            if(in_array($k, $subids)){
                $disbale = 'disabled';
            }
        }
        if ($k == $selected) {
            $code .= "<option value='$k' selected $disbale>".lang($v)."</option>\n";
        } else {
            $code .= "<option value='$k' $disbale>".lang($v)."</option>\n";
        }
        $disbale = '';
    }
    return $code;
}