<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title><?php echo lang('内容列表');?> - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/jquery.treeview.css" type="text/css" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo $base_dir;?>js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="<?php echo $base_dir;?>js/iepngfix_tilebg.js"></script>

<script type="text/javascript" src="<?php echo $base_dir;?>js/jquery.cookie.js"></script>
<script type="text/javascript" src="<?php echo $base_dir;?>js/jquery.treeview.js"></script>
<SCRIPT LANGUAGE="JavaScript">
<!--
$(document).ready(function(){
    $("#category_tree").treeview({
control: "#treecontrol",
persist: "cookie",
cookieId: "treeview-black"
});
});
function open_list(obj) {

window.top.$("#current_pos_attr").html($(obj).html());
}

//-->
</SCRIPT>
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<td width="168" style="border-right:1px solid #C7D8EA;" valign="top">

<div id="content_left">
  <div id="content_left_list">
<div id="treecontrol">
 <span style="display:none">
<a href="#"></a>
<a href="#"></a>
</span>
<a href="#"><img src="<?php echo $base_dir;?>skin/admin/minus.gif" /><img src="<?php echo $base_dir;?>skin/admin/application_side_expand.png" /> <?php echo lang('展开/收缩');?></a>
</div>
<ul class="filetree treeview"><li class="collapsable"><div class="hitarea collapsable-hitarea"></div><span><img src="<?php echo $base_dir;?>skin/admin/box-exclaim.gif" width="15" height="14">&nbsp;<a href='?m=content&c=content&a=public_checkall&menuid=822' target='right'><?php echo lang('审核内容');?></a></span></li></ul>
<ul id="category_tree"  class="filetree ">
<?php foreach($cates as $cat) { ?>
<?php if($cat['classname']) { ?>
  <li id='<?php echo $cat['catid'];?>'><span class='<?php echo $cat['classname'];?>'><?php echo $cat['add'];?> <?php echo $cat['catename'];?></span>
  <?php } else { ?>
  <li id="<?php echo $cat['catid'];?>"><span class=""><a href="#body" onclick="javascript:parent.windowsdig('<?php echo lang('添加内容');?>','iframe:<?php echo url('news','add',1,array('catid'=>$cat['catid'],'siteid'=>$siteid));?>','900px',$(window).height()+'px','iframe');"><img src="<?php echo $base_dir;?>skin/admin/add_content.gif" alt="添加"></a><a href="<?php echo url('news','list',1,array('catid'=>$cat['catid'],'siteid'=>$siteid,'modelid'=>$cat['modelid']));?>"><?php echo $cat['catename'];?></a></span></li>
  <?php } ?>
  <?php if($cat['classname']) { ?><ul><?php } ?>
<?php table_category::getcategorydata_tree($cat['siteid'],$cat['catid'],$code,$l=1)?>
  <?php echo $code;?>
  <?php if($cat['classname']) { ?></ul><?php } ?>
  <?php $code='';?>
  </li>
  
<?php } ?>
</ul>
  </div>
</div>

</td>
<td valign="top">
<?php if(!$cate['catename']) { ?><?php echo lang('请先选择左侧栏目');?><?php echo exit();?><?php } ?>
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td>
<div class="info_title"><?php echo lang('内容管理');?> - <?php echo $cate['catename'];?></div>
<div class="info_content">
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <td><span class="tianjia"><a onclick="javascript:parent.windowsdig('<?php echo lang('添加内容');?>','iframe:<?php echo url('news','add',1,array('catid'=>$cate['catid'],'siteid'=>$siteid));?>','900px',$(window).height()+'px','iframe')" href="#body"><?php echo lang('添加内容');?></a></span></td>
    <tr>
      <td height="10"></td>
    </table>
  <table width="100%" border="0" cellpadding="0" cellspacing="0" style="border:1px #Fd9 solid; margin-bottom:10px;">
    <tr>
      <td style="text-indent:1em; line-height:35px;">
<?php echo lang('添加时间');?>：
<link rel="stylesheet" type="text/css" href="<?php echo $base_dir;?>js/calendar/jscal2.css"/>
<link rel="stylesheet" type="text/css" href="<?php echo $base_dir;?>js/calendar/border-radius.css"/>
<link rel="stylesheet" type="text/css" href="<?php echo $base_dir;?>js/calendar/win2k.css"/>
<script type="text/javascript" src="<?php echo $base_dir;?>js/calendar/calendar.js"></script>
<script type="text/javascript" src="<?php echo $base_dir;?>js/calendar/lang/en.js"></script><input type="text" name="start_time" id="start_time" value="" size="10" class="date" readonly>&nbsp;<script type="text/javascript">
Calendar.setup({
weekNumbers: false,
    inputField : "start_time",
    trigger    : "start_time",
    dateFormat: "%Y-%m-%d",
    showTime: false,
    minuteStep: 1,
    onSelect   : function() {this.hide();}
});
        </script>- <input type="text" name="end_time" id="end_time" value="" size="10" class="date" readonly>&nbsp;<script type="text/javascript">
Calendar.setup({
weekNumbers: false,
    inputField : "end_time",
    trigger    : "end_time",
    dateFormat: "%Y-%m-%d",
    showTime: false,
    minuteStep: 1,
    onSelect   : function() {this.hide();}
});
        </script>				
<select name="searchtype">
<option value='0' selected><?php echo lang('标题');?></option>
<option value='1' ><?php echo lang('简介');?></option>
<option value='2' ><?php echo lang('用户');?></option>
<option value='3' >ID</option>
</select>

<input name="keyword" type="text" value="" class="input-text" />
<input type="submit" name="search" class="button" value="<?php echo lang('搜索');?>" />
      </td>
    </tr>
  </table>
  <table width="100%" class="table_site" border="0" cellpadding="0" cellspacing="0">
    <tr class="table_site_bt">
    <td width="40"><input title="点击可全选本页的所有项目" onclick="checkall(this.form)" type="checkbox" name="chkall" /></td>
    <td width="70">ID</td>
    <td width="80"><?php echo lang('分类');?></td>
    <td class="title_left"><?php echo lang('标题');?></td>
    <td width="60"><?php echo lang('点击量');?></td>
    <td width="60"><?php echo lang('发布者');?></td>
    <?php foreach($fields as $field) { ?>
    <td><?php echo lang($field['cname']);?></td>
<?php } ?>
    <td width="80"><?php echo lang('操作');?></td>
  </tr> 
  <?php foreach($row as $item) { ?>
  <tr>
    <td><input title="" onclick="checkall(this.form)" type="checkbox" name="chkall2" /></td>
    <td><?php echo $item['id'];?></td>
    <td><?php echo $item['typename'];?></td>
    <td class="title_left"><?php echo $item['title'];?></td>
    <td><?php echo $item['hits'];?></td>
    <td><?php echo $item['username'];?></td>
    <?php foreach($fields as $field) { ?>
    <td class="title_left"><?php if($field['formtype'] == 'option') { ?><?php echo getFieldVal($field,$item[$field['name']]);?><?php } else { ?><?php echo $item[$field['name']];?><?php } ?></td>
<?php } ?>
    <td><a onclick="javascript:parent.windowsdig('<?php echo lang('修改内容');?>','iframe:<?php echo url('news','edit',1,array('id'=>$item['id'],'catid'=>$item['catid'],'siteid'=>$siteid));?>','900px',$(window).height()+'px','iframe')" href="#body"><?php echo lang('修改');?></a></td>
  </tr>
  <?php } ?>
  </table>
  <table width="100%" class="table_site" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="5" class="title_left">　<label for="check_box"><?php echo lang('全选');?>/<?php echo lang('取消');?></label>
      <input onclick="" value="<?php echo lang('删除');?>" type="button" />
      <input onclick="" value="<?php echo lang('推送');?>" type="button" />
      <input onclick="" value="<?php echo lang('移动');?>" type="button" /></td>
    <td>&nbsp;</td>
    </tr>
</table>
</div>
    </td>
  </tr>
</table>
</td>
</table>
<script type="text/javascript"> 
function windowW(){
if($(window).height()<250){
$('#content_left').css('height',250+'px');
}else{
$('#content_left').css('height',$(window).height()+'px');
}
}
windowW();
$(window).resize(function(){
windowW();
});
</script>
</body>
</html>