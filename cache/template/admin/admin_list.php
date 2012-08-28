<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>管理员列表 - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/common.js"></script>
</head>
<body>
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td>
<div class="info_title">管理员管理 - 系统管理员列表</div>
<div class="info_content">
  <span class="tianjia"><a onclick="javascript:parent.windowsdig('<?php echo lang('添加管理员');?>','iframe:<?php echo url('admin','add','1',array('roleid'=>core_app::$get['roleid']));?>','900px','480px','iframe')" href="#body"><?php echo lang('添加管理员');?></a></span>
  <table width="100%" class="table_site" border="0" cellpadding="0" cellspacing="0">
      <tr class="table_site_bt">
        <td width="50">ID</td>
        <td width="100">用户名</td>
        <td width="100">真实姓名</td>
        <td>描述</td>
        <td width="150">最后登录时间</td>
        <td width="150">最后登录IP</td>
        <td width="100">操作管理</td>
      </tr>
      <?php foreach($row as $item) { ?> 
      <tr>
        <td><?php echo $item['uid'];?></td>
        <td><?php echo $item['username'];?></td>
        <td><?php echo $item['realname'];?></td>
        <td><?php echo $item['intro'];?></td>
        <td><?php echo date('Y-m-d H:i',$item['lasttime']);?></td>
        <td><?php echo $item['lastip'];?></td>
        <td><a onclick="javascript:parent.windowsdig('<?php echo lang('修改管理员');?>','iframe:<?php echo url('admin','edit','1',array('uid'=>$item['uid']));?>','900px','480px','iframe')" href="#body"><?php echo lang('修改');?></a> | <a onclick="return enterdel('<?php echo lang('确定要删除吗?');?>')" href="<?php echo url('admin','del','1',array('uid'=>$item['uid'],'roleid'=>$item['roleid']));?>"><?php echo lang('删除');?></a></td>
      </tr>
      <?php } ?>
  </table>
</div>
    </td>
  </tr>
</table>
</body>
</html>