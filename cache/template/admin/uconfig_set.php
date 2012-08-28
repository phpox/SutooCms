<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title><?php echo lang('用户系统配置');?> - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
</head>
<body>
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td>
<div class="info_title"><?php echo lang('用户系统配置');?></div>
<div class="info_content">
<form name="form1" id="form1" method="post" action="<?php echo url('config','set',1);?>">
  <table width="100%" class="table_form" border="0" cellpadding="0" cellspacing="0">
<tr>
<th><?php echo lang('允许新会员注册');?></th> 
<td>
<?php echo lang('是');?><input type="radio" name="allowregister"  class="input-radio" <?php if(core_config::uget('allowregister')=='1') { ?>checked<?php } ?> value='1'>
<?php echo lang('否');?><input type="radio" name="allowregister"  class="input-radio" <?php if(core_config::uget('allowregister')=='0') { ?>checked<?php } ?>  value='0'>
</td>
</tr>
<tr>
<th><?php echo lang('新会员注册需要邮件验证');?></th> 
<td>
<?php echo lang('是');?><input type="radio" name="enablemailcheck"  class="input-radio" <?php if(core_config::uget('enablemailcheck')=='1') { ?>checked<?php } ?> value='1'>
<?php echo lang('否');?><input type="radio" name="enablemailcheck"  class="input-radio" <?php if(core_config::uget('enablemailcheck')=='0') { ?>checked<?php } ?> value='0'> <font color="red"><?php echo lang('需填写邮箱配置，开启后会员注册审核功能无效');?></font>
</td>
</tr>
<tr>
<th><?php echo lang('新会员注册需要管理员审核');?></th> 
<td>
<?php echo lang('是');?><input type="radio" name="registerverify"  class="input-radio" <?php if(core_config::uget('registerverify')=='1') { ?>checked<?php } ?> value='1'>
<?php echo lang('否');?><input type="radio" name="registerverify"  class="input-radio" <?php if(core_config::uget('registerverify')=='0') { ?>checked<?php } ?> value='0'>
</td>
</tr>		
<tr>
<th><?php echo lang('1元人民币购买积分数量');?></th> 
<td>
<input type="text" name="rmb_point_rate" id="rmb_point_rate" class="input-text" size="4" value="<?php echo core_config::uget('rmb_point_rate');?>">
</td>
</tr>
<tr>
<th><?php echo lang('新会员注册默认赠送积分');?></th> 
<td>
<input type="text" name="defualtamount" id="defualtamount" class="input-text" size="4" value="<?php echo core_config::uget('defualtamount');?>">
</td>
</tr>
<tr>
<th><?php echo lang('新会员注册默认成长点数');?></th> 
<td>
<input type="text" name="defualtpoint" id="defualtpoint" class="input-text" size="4" value="<?php echo core_config::uget('defualtpoint');?>">
</td>
</tr>
  </table>
  <input type="submit" name="sub" value="<?php echo lang('提交');?>" />
  </form>
</div>
    </td>
  </tr>
</table>
</body>
</html>