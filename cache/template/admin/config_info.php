<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title><?php echo lang('后台首页');?> - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
</head>
<body>
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td>
<div class="info_title"><?php echo lang('用户信息');?></div>
<div class="info_content"><?php echo lang('您好');?>，<?php echo $admin['username'];?><br /><?php echo lang('所属角色');?>：<?php echo lang($admin['rolename']);?><br /><hr size="0" /><?php echo lang('上次登录时间');?>：<?php echo date('Y-m-d H:i:s',$admin['lasttime']);?><br /><?php echo lang('上次登录IP');?>：<?php echo $admin['lastip'];?></div>
    </td>
    <td>
<div class="info_title"><?php echo lang('安全提示');?></div>
<div class="info_content"></div>
    </td>
  </tr>
  <tr>
    <td>
<div class="info_title"><?php echo lang('开发团队');?></div>
<div class="info_content">
<?php echo lang('版权所有');?>：<?php echo lang('延边速途网络科技有限公司');?><br />
<?php echo lang('开发团队');?>：<?php echo lang('刘利伟');?>、<?php echo lang('裴进宝');?>、<?php echo lang('陆景雷');?>、Shangen Li<br />
<?php echo lang('官方网站');?>：<a href="http://www.sutoo.net/" target="_blank">http://www.sutoo.net/</a> <br />
<?php echo lang('官方论坛');?>：<a href="http://bbs.sutoo.net/" target="_blank">http://bbs.sutoo.net/</a>
</div>
    </td>
    <td>
<div class="info_title"><?php echo lang('系统信息');?></div>
<div class="info_content">
<?php echo lang('程序版本');?>：Sutoo CMS V1.0 20120315<br />
<?php echo lang('操作系统');?>：<?php echo PHP_OS?> <br />
<?php echo lang('服务器软件');?>：<?php echo $_SERVER['SERVER_SOFTWARE'];?> <br />
<?php echo lang('MySQL Version');?>：<?php echo core_app::$mysql_ver?><br />
<?php echo lang('上传限制');?>：≤<?php echo core_app::$max_file?><br />
</div>
    </td>
  </tr>
</table>
</body>
</html>