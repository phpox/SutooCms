<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>角色列表 - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
</head>
<body>
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td>
<div class="info_title"><?php echo lang('管理员管理');?> - <?php echo lang('管理员角色管理');?></div>
<div class="info_content">
<span class="tianjia"><a onclick="javascript:parent.windowsdig('<?php echo lang('添加角色');?>','iframe:<?php echo url('role','add','1');?>','900px','480px','iframe')" href="#body"><?php echo lang('添加角色');?></a></span>
  <table width="100%" class="table_site" border="0" cellpadding="0" cellspacing="0">
  <tr class="table_site_bt">
    <td width="50">ID</td>
    <td width="100"><?php echo lang('角色名称');?></td>
    <td><?php echo lang('描述');?></td>
    <td width="80"><?php echo lang('用户量');?></td>
    <td width="300"><?php echo lang('操作管理');?></td>
  </tr> 
  <?php foreach($row as $item) { ?>
  <tr>
    <td><?php echo $item['roleid'];?></td>
    <td><?php echo lang($item['rolename']);?></td>
    <td><?php echo $item['intro'];?></td>
    <td><?php echo $item['usernum'];?></td>
    <td><?php echo lang('权限设置');?> | <?php echo lang('栏目权限');?> | <a href="<?php echo url('admin','list',1,array('roleid'=>$item['roleid']));?>"><?php echo lang('成员管理');?></a> | <?php echo lang('修改');?> | <?php echo lang('删除');?></td>
  </tr>
  <?php } ?>
  </table>
</div>
    </td>
  </tr>
</table>
</body>
</html>