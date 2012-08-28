<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title><?php echo lang('模型列表');?> - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/common.js"></script>
</head>
<body>
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td>
<div class="info_title"><?php echo lang('模型管理');?></div>
<div class="info_content">
  <table border="0" cellpadding="0" cellspacing="0">
    <td><span class="tianjia"><a onclick="javascript:parent.windowsdig('<?php echo lang('添加模型');?>','iframe:<?php echo url('model','add',1);?>','900px','700px','iframe')" href="#body"><?php echo lang('添加模型');?></a></span> <span class="tianjia"><a onclick="javascript:parent.windowsdig('<?php echo lang('更新缓存');?>','iframe:<?php echo url('model','upcache',1);?>','900px','500px','iframe')" href="#body"><?php echo lang('更新缓存');?></a></span></td>
  </table>
  <table width="100%" class="table_site" border="0" cellpadding="0" cellspacing="0">
  <tr class="table_site_bt">
    <td width="80"><?php echo lang('模型编号');?></td>
    <td width="80"><?php echo lang('模型名称');?></td>
    <td width="80"><?php echo lang('数据表');?></td>
    <td><?php echo lang('描述');?></td>
    <td width="50"><?php echo lang('状态');?></td>
    <td width="80"><?php echo lang('数据量');?></td>
    <td width="250"><?php echo lang('操作管理');?></td>
  </tr>
  <?php foreach($row as $item) { ?>
  <tr>
    <td><?php echo $item['modelid'];?></td>
    <td><?php echo lang($item['modelname']);?></td>
    <td><?php echo $item['tbname'];?></td>
    <td><?php echo lang($item['intro']);?></td>
    <td><?php if($item['state']) { ?>√<?php } else { ?>×<?php } ?></td>
    <td><?php echo $item['count'];?></td>
    <td><a href="<?php echo url('field','list',1,array('siteid'=>$siteid,'modelid'=>$item['modelid']));?>"><?php echo lang('字段管理');?></a> | <?php echo lang('修改');?> | <?php echo lang('禁用');?> | <a onclick="return enterdel('<?php echo lang('谨慎！会同时删除数据库中的数据，确定要删除么？');?>')" href="<?php echo url('model','del',1,array('modelid'=>$item['modelid']));?>"><?php echo lang('删除');?></a> | <?php echo lang('导出');?></td>
  </tr>
<?php } ?>
  </table>
</div>
    </td>
  </tr>
</table>
</body>
</html>