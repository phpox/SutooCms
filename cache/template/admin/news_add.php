<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title><?php echo lang('添加内容');?> - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo $base_dir;?>js/script.js"></script>
<script type="text/javascript" src="<?php echo $base_dir;?>editor/kindeditor-min.js"></script>
<script type="text/javascript" src="<?php echo $base_dir;?>editor/lang/zh_CN.js"></script>
<script>
jQuery(function($){
var editor;
KindEditor.ready(function(K) {
editor = K.create('#content', {allowFileManager : true});
});
});
</script>
</head>
<body>
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td>
    <form name="form1" action="" method="post">
<ul id="tab">
<li id="tab1" class="hover" onclick="setTab('tab',1,3)"><?php echo lang('基本信息');?></li>
</ul>
<div class="info_content">
  <div id="con_tab_1">
<table width="100%" class="table_add" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <th><?php echo lang('所属栏目');?></th>
    <td><input type="hidden" id="catid" name="catid" value="<?php echo $cate['catid'];?>"><?php echo $cate['catename'];?></td>
  </tr>
  <tr>
    <th><?php echo lang('所属分类');?></th>
    <td><select id="typeid" name="typeid">
    <option value="0"><?php echo lang('请选择');?>...</option>
      <?php echo $typelist;?>
    </select></td>
  </tr>
  <tr>
    <th><?php echo lang('文章标题');?></th>
    <td><input class="input-text" name="title" id="title" size="30" type="text" /></td>
  </tr>
  <tr>
    <th><?php echo lang('文章作者');?></th>
    <td><input name="author" type="text" class="input-text" id="author" value="<?php echo $admin['username'];?>" size="30"/></td>
  </tr>
  <tr>
    <th><?php echo lang('摘要');?></th>
    <td>
      <label for="intro"></label>
      <textarea name="intro" id="intro" cols="80" rows="5"></textarea>
    </td>
  </tr>
  <tr>
    <th><?php echo lang('内容');?></th>
    <td><textarea name="content" id="content" style="display:block; width:670px; height:400px;"></textarea></td>
  </tr>
  <tr>
    <th><?php echo lang('点击数初始值');?></th>
    <td><input id="hits" value="0" maxlength="10" size="10" name="hits" />
         </td>
  </tr>
  <tr>
    <th><?php echo lang('文章属性');?></th>
    <td><input id="iselite" type="checkbox" value="1" maxlength="10" size="10" name="iselite" /> <?php echo lang('推荐');?>
         </td>
  </tr>
  <tr>
    <th><?php echo lang('录入时间');?></th>
    <td><link rel="stylesheet" type="text/css" href="js/calendar/jscal2.css"/>
<link rel="stylesheet" type="text/css" href="js/calendar/border-radius.css"/>
<link rel="stylesheet" type="text/css" href="js/calendar/win2k.css"/>
<script type="text/javascript" src="js/calendar/calendar.js"></script>
<script type="text/javascript" src="js/calendar/lang/en.js"></script><input type="text" name="addtime" id="addtime" value="2012-06-28 19:53:00" size="21" class="date" readonly>&nbsp;<script type="text/javascript">
Calendar.setup({
weekNumbers: true,
    inputField : "addtime",
    trigger    : "addtime",
    dateFormat: "%Y-%m-%d %H:%M:%S",
    showTime: true,
    minuteStep: 1,
    onSelect   : function() {this.hide();}
});
        </script></td>
  </tr> 
    </table>
   </div>
  <input type="submit" name="sub" value="<?php echo lang('提交');?>" />
</div></form>
    </td>
  </tr>
</table>
</body>
</html>