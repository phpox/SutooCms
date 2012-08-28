<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>添加管理员 - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $("#form1").submit(function(){
  if($("#username").val() == ''){
  	alert('<?php echo lang("登录名不能为空");?>');
$("#username").focus();
return false;
  }
  if($("#password").val() == ''){
  	alert('<?php echo lang("登录密码不能为空");?>');
$("#password").focus();
return false;
  }
  if($("#password").val() != $("#password1").val()){
  	alert('<?php echo lang("两次输入的密码不一致");?>');
$("#password").val('');
$("#password1").val('');
$("#password").focus();
return false;
  }
  });
});
</script>
</head>
<body>
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td><form id="form1" name="form1" action="" method="post">
<ul id="tab">
<li id="tab1" class="hover"><?php echo lang('添加管理员');?></li>
</ul>
<div class="info_content">
  <div id="con_tab_1">
<table width="100%" class="table_form" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <th><?php echo lang('登录名');?></th>
    <td><input type="text" class="input-text" name="username" id="username" size="30"/></td>
  </tr>
  <tr>
    <th><?php echo lang('登录密码');?></th>
    <td><input type="password" class="input-text" name="password" id="password" size="30"/></td>
  </tr>
  <tr>
    <th><?php echo lang('确认密码');?></th>
    <td><input type="password" class="input-text" name="password1" id="password1" size="30"/></td>
  </tr>
  <tr>
    <th><?php echo lang('真实姓名');?></th>
    <td><input type="text" class="input-text" name="realname" id="realname" size="30"/></td>
  </tr>   
  <tr>
    <th><?php echo lang('描述');?></th>
    <td><input type="text" class="input-text" name="intro" id="intro" size="30"/></td>
  </tr>
</table>
   </div>
   <input type="hidden" name="roleid" id="roleid" value="<?php echo core_app::$get['roleid'];?>" size="30"/>
   <input name="sub" type="submit" value="<?php echo lang('提交');?>" />
</div></form>
    </td>
  </tr>
</table>
</body>
</html>