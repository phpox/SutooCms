<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title><?php echo lang('字段管理');?> - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/common.js"></script>
</head>
<body>
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td>
<div class="info_title"><?php echo lang('字段管理');?> - <?php echo $model['modelname'];?></div>
<div class="info_content">
  <table border="0" cellpadding="0" cellspacing="0">
    <td><span class="tianjia"><a onclick="javascript:parent.windowsdig('<?php echo lang('添加模型字段');?>','iframe:<?php echo url('field','add',1,array('modelid'=>$model['modelid']));?>','900px','700px','iframe')" href="#body"><?php echo lang('添加字段');?></a></span><span class="yulan"><a href="#"><?php echo lang('模型预览');?></a></span></td>
  </table>
  <table width="100%" class="table_site" border="0" cellpadding="0" cellspacing="0">
  <tr class="table_site_bt">
    <td width="80"><?php echo lang('排序');?></td>
    <td width="80"><?php echo lang('字段名');?></td>
    <td width="80"><?php echo lang('别名');?></td>
    <td width="80"><?php echo lang('类型');?></td>
    <td width="80"><?php echo lang('必填');?></td>
    <td width="80"><?php echo lang('投稿');?></td>
    <td><?php echo lang('描述');?></td>
    <td width="80"><?php echo lang('操作管理');?></td>
  </tr> 
  <?php foreach($row as $item) { ?>
  <tr>
    <td><input name='listorders[<?php echo $item['fieldid'];?>]' type='text' size='3' value='<?php echo $item['listorder'];?>' class='input-text-c'></td>
    <td><?php echo $item['name'];?></td>
    <td><?php echo $item['cname'];?></td>
    <td><?php echo $item['formtype'];?></td>
    <td><?php if($item['minlength']) { ?>√<?php } ?></td>
    <td>√</td>
    <td><?php echo $item['intro'];?></td>
    <td><a onclick="javascript:parent.windowsdig('<?php echo lang('修改');?>','iframe:<?php echo url('field','edit',1,array('fieldid'=>$item['fieldid'],'modelid'=>$item['modelid']));?>','900px','700px','iframe')" href="#body"><?php echo lang('修改');?></a> | <a onclick="return enterdel('<?php echo lang('确定要删除吗?');?>')" href="<?php echo url('field','del',1,array('modelid'=>$item['modelid'],'fieldid'=>$item['fieldid'],'fieldname'=>$item['name']));?>"><?php echo lang('删除');?></a></td>
  </tr>
  <?php } ?>
  <tr>
    <td><input id="subForm" type="submit" value="<?php echo lang('排序');?>" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  </table>
</div>
    </td>
  </tr>
</table>
</body>
</html>