<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo lang('添加角色');?></title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/<?php echo $template_dir;?>/admin/css.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/jquery.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td><form name="form1" action="" method="post">
<ul id="tab">
<li id="tab1" class="hover"><?php echo lang('添加角色');?></li>
</ul>
<div class="info_content">
  <div id="con_tab_1">
<table width="100%" class="table_form" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <th><?php echo lang('角色名称');?></th>
    <td><input type="text" class="input-text" name="rolename" id="rolename" size="30"/></td>
  </tr>     
  <tr>
    <th><?php echo lang('描述');?></th>
    <td><input type="text" class="input-text" name="intro" id="intro" size="30"/></td>
  </tr>
</table>
   </div>
   <input name="sub" type="submit" value="<?php echo lang('提交');?>" />
</div></form>
    </td>
  </tr>
</table>
</body>
</html>