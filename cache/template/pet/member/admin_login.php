<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo lang('管理员登录');?> - <?php echo $site_title;?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
</head>
<body>
<div id="login_admin">
    	<div id="head">
        	<div id="logo"><div id="chkcode_img"><script type="text/javascript" src="<?php echo url('validation','showjs');?>"></script></div></div>
        </div>
        <div id="form">
<form name="form1" id="frmlogin" action="<?php echo url('admin','chklogin');?>" method="post" target="_top">
<?php echo lang('用户名');?>：<input name="adminname" type="text"     maxlength="12" id="adminname">
<?php echo lang('密码');?>：<input name="adminpwd" type="password" maxlength="12" id="adminpwd">
<?php echo lang('验证码');?>：<input name="chkcode"  type="text"     maxlength="6"  id="chkcode" onfocus="document.getElementById('chkcode_img').style.display='block'">
<input name="submit" type="hidden" value="1" />
<input name="" type="image" src="<?php echo $base_dir;?>skin/admin/login_btn.gif" style="width:54px; height:24px; border:0px; padding:0px;" align="absmiddle" />
</form>
        </div>
        <div id="foot">CopyRight 2011 Yanbian sutoo network technology Co., LTD. Power By Sutoo TEAM.</div>
    </div>
</body>
</html>