<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo lang('类别管理');?></title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/<?php echo $template_dir;?>/admin/css.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/common.js"></script>
</head>
<body>
<form action="" name="form1" method="post">
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td>
<div class="info_title"><?php echo lang('类别管理');?></div>
<div class="info_content">
  <table border="0" cellpadding="0" cellspacing="0">
    <td><span class="tianjia"><a onclick="javascript:parent.windowsdig('<?php echo lang('添加类别');?>','iframe:<?php echo url('types','add','1',array('siteid'=>$siteid));?>','900px','480px','iframe')" href="#body"><?php echo lang('添加类别');?></a></span> <span class="tianjia"><a onclick="javascript:parent.windowsdig('<?php echo lang('更新缓存');?>','iframe:<?php echo url('types','upcache','1',array('siteid'=>$siteid));?>','900px','480px','iframe')" href="#body"><?php echo lang('更新缓存');?></a></span></td>
  </table>
  <table width="100%" class="table_site" border="0" cellpadding="0" cellspacing="0">
  <tr class="table_site_bt">
    <td width="80"><input title="<?php echo lang('点击可全选本页的所有项目');?>"  onclick="checkall(this.form)" type="checkbox" name="chkall" class="checkbox" /></td>
    <td width="80"><?php echo lang('类别编号');?></td>
    <td width="80"><?php echo lang('类别名称');?></td>
    <td><?php echo lang('类别描述');?></td>
    <td width="80"><?php echo lang('操作管理');?></td>
  </tr> 
  <?php foreach($row as $item) { ?>
  <tr>
    <td><input name="ids[]" type="checkbox" value="<?php echo $item['typeid'];?>" /></td>
    <td><?php echo $item['typeid'];?></td>
    <td><?php echo $item['typename'];?></td>
    <td><?php echo $item['intro'];?></td>
    <td><a onclick="javascript:parent.windowsdig('<?php echo lang('修改类别');?>','iframe:<?php echo url('types','edit',1,array('typeid'=>$item['typeid'],'siteid'=>$item['siteid']));?>','900px','480px','iframe')" href="#body"><?php echo lang('修改');?></a> | <a onclick="return enterdel('<?php echo lang('确定要删除吗?');?>')" href="<?php echo url('types','del',1,array('typeid'=>$item['typeid'],'typeid'=>$item['typeid']));?>"><?php echo lang('删除');?></a></td>
  </tr>
  <?php } ?>
  </table>
</div>
<input type="hidden" name="batch" value="">
    <input type="button" value="<?php echo lang('批量删除');?>" name="del" onclick="if(confirm('<?php echo lang('确定要删除吗?');?>')){this.form.action='<?php echo url('types','batch',1,array('siteid'=>$item['siteid']));?>'; this.form.batch.value='delete'; this.form.submit();}"/>
    </td>
  </tr>
</table>
</form>
</body>
</html>