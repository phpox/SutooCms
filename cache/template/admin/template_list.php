<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title><?php echo lang('模板管理');?> - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/common.js"></script>
</head>
<body>
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td><form action="<?php echo url('template','uplistfile',1);?>" name="form1" method="post">
<div class="info_title"><?php echo lang('模板管理');?></div>
<div class="info_content">
  <table border="0" cellpadding="0" cellspacing="0">
    <td><span class="tianjia"><a onclick="javascript:parent.windowsdig('<?php echo lang('添加模板目录');?>','iframe:<?php echo url('template','addskin',1);?>','900px','320px','iframe')" href="#body"><?php echo lang('添加模板目录');?></a></span></td>
  </table>
  <table width="100%" class="table_site" border="0" cellpadding="0" cellspacing="0">
  <tr class="table_site_bt">
    <td width="80"><?php echo lang('模版标识');?></td>
    <td width="150"><?php echo lang('模版名称');?></td>
    <td width="80"><?php echo lang('模版作者');?></td>
    <td><?php echo lang('描述');?></td>
    <td width="120"><?php echo lang('操作管理');?></td>
  </tr> 
  <?php foreach($row as $item) { ?>
  <tr>
    <td><?php echo $item->skin;?></td>
    <td><input value="<?php echo $item->name;?>" name="name[<?php echo $item->skin;?>]" class="input-text-a" /></td>
    <td width="100"><?php echo $item->author;?></td>
    <td><?php echo $item->intro;?></td>
    <td><a href="<?php echo url('template','xlist',1,array('skin'=>$item->skin,'intro'=>$item->intro));?>"><?php echo lang('详情列表');?></a> | <a onclick="return enterdel('<?php echo lang('确定要删除吗?');?>')" href="<?php echo url('template','delskin',1,array('skin'=>$item->skin));?>"><?php echo lang('删除');?></a></td>
  </tr>
  <?php } ?>
  <tr>
    <td><input name="sub" type="submit" value="<?php echo lang('提交');?>" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  </table>
</div></form>
    </td>
  </tr>
</table>
</body>
</html>