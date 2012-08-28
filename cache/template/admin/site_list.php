<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title><?php echo lang('站点管理');?> - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/common.js"></script>
</head>
<body>
<form action="" name="form1" method="post">
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td>
<div class="info_title"><?php echo lang('站点管理');?></div>
<div class="info_content">
  <table border="0" cellpadding="0" cellspacing="0">
    <td><span class="tianjia"><a onclick="javascript:parent.windowsdig('<?php echo lang('添加站点');?>','iframe:<?php echo url('site','add','1');?>','900px','480px','iframe')" href="#body"><?php echo lang('添加站点');?></a></span></td>
  </table>
  <table width="100%" class="table_site" border="0" cellpadding="0" cellspacing="0">
  <tr class="table_site_bt">
    <td width="80"><input title="<?php echo lang('点击可全选本页的所有项目');?>"  onclick="checkall(this.form)" type="checkbox" name="chkall" class="checkbox" /></td>
    <td width="80"><?php echo lang('站点编号');?></td>
    <td width="80"><?php echo lang('站点名称');?></td>
    <td width="150"><?php echo lang('站点域名');?></td>
    <td><?php echo lang('模板目录');?></td>
    <td><?php echo lang('描述');?></td>
    <td width="80"><?php echo lang('操作管理');?></td>
  </tr> 
  <?php foreach($row as $item) { ?>
  <tr>
    <td><input name="ids[]" type="checkbox" value="<?php echo $item['siteid'];?>" /></td>
    <td><?php echo $item['siteid'];?></td>
    <td><?php echo $item['sitename'];?></td>
    <td><?php echo $item['sitedomain'];?></td>
    <td><?php echo getTemplateName($item['template_dir']);?></td>
    <td><?php echo $item['intro'];?></td>
    <td><a onclick="javascript:parent.windowsdig('<?php echo lang('修改站点');?>','iframe:<?php echo url('site','edit',1,array('siteid'=>$item['siteid']));?>','900px','480px','iframe')" href="#body"><?php echo lang('修改');?></a> | <a onclick="return enterdel('<?php echo lang('确定要删除吗?');?>')" href="<?php echo url('site','del',1,array('siteid'=>$item['siteid']));?>"><?php echo lang('删除');?></a></td>
  </tr>
  <?php } ?>
  </table>
</div>
<input type="hidden" name="batch" value="">
    <input type="button" value="<?php echo lang('批量删除');?>" name="del" onclick="if(confirm('<?php echo lang('确定要删除吗?');?>')){this.form.action='<?php echo url('site','batch',1);?>'; this.form.batch.value='delete'; this.form.submit();}"/>
    </td>
  </tr>
</table>
</form>
</body>
</html>