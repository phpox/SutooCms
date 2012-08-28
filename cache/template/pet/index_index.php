<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>网站首页 - <?php echo $site_title;?> - Power By Sutoo CMS</title>
<link href="<?php echo $style_dir;?>style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/script.js"></script>
<script type="text/javascript" src="<?php echo $base_dir;?>js/jquery.min.js"></script>
</head>
<body>
<?php echo template('header.html'); ?>
<table width="950" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>网站首页内容</td>
  </tr>
</table>

<?php echo template('footer.html'); ?>
</body>
</html>