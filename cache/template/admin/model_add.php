<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo lang('添加模型');?> - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/jquery.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td><form name="form1" action="" method="post">
<ul id="tab">
<li id="tab1" class="hover"><?php echo lang('添加模型');?></li>
</ul>
<div class="info_content">
  <div id="con_tab_1">
<table width="100%" class="table_form" border="0" cellpadding="0" cellspacing="0">
<tr>
    <th><?php echo lang('所属站点');?></th>
    <td><select name="siteid" id="siteid">
<?php echo setOption('',$sites);?>
</select></td>
  </tr>
  <tr>
    <th><?php echo lang('模型名称');?></th>
    <td><input type="text" class="input-text" name="modelname" id="modelname" size="30"/></td>
  </tr>     
  <tr>
    <th><?php echo lang('数据表');?></th>
    <td><input type="text" class="input-text" name="tbname" id="tbname" size="30"/></td>
  </tr>
  <tr>
    <th><?php echo lang('描述');?></th>
    <td><textarea name="intro" cols="30" rows="6" class="input-text" id="intro"></textarea>
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