<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title><?php echo lang('修改站点');?> - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/jquery.min.js"></script>
</head>
<body>
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td><form name="form1" action="" method="post"><input name="siteid" type="hidden" value="<?php echo $row['siteid'];?>" />
<ul id="tab">
<li id="tab1" class="hover"><?php echo lang('修改站点');?></li>
</ul>
<div class="info_content">
  <div id="con_tab_1">
<table width="100%" class="table_form" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <th><?php echo lang('站点名称');?></th>
    <td><input type="text" class="input-text" name="sitename" id="sitename" size="30" value="<?php echo $row['sitename'];?>" /></td>
  </tr>     
  <tr>
    <th><?php echo lang('站点域名');?></th>
    <td><input type="text" class="input-text" name="sitedomain" id="sitedomain" size="30" value="<?php echo $row['sitedomain'];?>" />
      <?php echo lang('不包含http:// 多个域名用;分开');?></td>
  </tr>
  <tr>
    <th><?php echo lang('站点类型');?></th>
    <td><?php echo $models;?></td>
  </tr>
  <tr>
    <th><?php echo lang('模板目录');?></th>
    <td><select name="template_dir">
    <?php echo $tmp;?>
    </select></td>
  </tr>
  <tr>
    <th><?php echo lang('描述');?></th>
    <td><textarea name="intro" cols="30" rows="6" class="input-text" id="intro"><?php echo $row['intro'];?></textarea>
      <?php echo lang('200个字以内');?></td>
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