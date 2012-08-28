<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>栏目列表 - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/common.js"></script>
<script type="text/javascript" src="<?php echo $base_dir;?>js/jquery.min.js"></script>
</head>
<body>
<form action="" name="form1" method="post">
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td>
<div class="info_title"><?php echo lang('栏目管理');?></div>
<div class="info_content">
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <td><span class="tianjia"><a onclick="javascript:parent.windowsdig('<?php echo lang('添加栏目');?>','iframe:<?php echo url('category','add',1,array('siteid'=>$siteid));?>','900px','600px','iframe')" href="#body"><?php echo lang('添加栏目');?></a></span><span class="tianjia"><a onclick="javascript:parent.windowsdig('<?php echo lang('更新缓存');?>','iframe:<?php echo url('category','upcache',1,array('siteid'=>$siteid));?>','900px','500px','iframe')" href="#body"><?php echo lang('更新缓存');?></a></span></td>
    <tr>
      <td height="10"></td>
    </table>
  <table width="100%" class="table_site" border="0" cellpadding="0" cellspacing="0">
  <tr class="table_site_bt">
    <td width="50"><?php echo lang('排序');?></td>
    <td width="60">Catid</td>
    <td align="left"><?php echo lang('栏目名称');?></td>
    <td width="80"><?php echo lang('所属模型');?></td>
    <td width="60"><?php echo lang('数据量');?></td>
    <td width="210"><?php echo lang('操作管理');?></td>
  </tr> 
  <?php foreach($row as $cat) { ?>
<tr>
<td align='center'><input name='listorders[<?php echo $cat['catid'];?>]' type='text' size='3' value='<?php echo $cat['listorder'];?>' class='input-text-c'></td>
<td align='center'><?php echo $cat['catid'];?></td>
<td class="title_left"><?php echo $cat['catename'];?> [<?php echo $cat['catdir'];?>]</td>
<td><?php echo $models[$cat['modelid']]['modelname'];?></td>
<td align='center'>&nbsp;<?php echo $cat['rownum'];?></td>
<td colspan="2" align='center'><a onclick="javascript:parent.windowsdig('<?php echo lang('添加子栏目');?>','iframe:<?php echo url('category','add',1,array('siteid'=>$siteid,catid=>$cat['catid']));?>','900px','600px','iframe')" href="#body"><?php echo lang('添加子栏目');?></a> | <a onclick="javascript:parent.windowsdig('<?php echo lang('修改');?>','iframe:<?php echo url('category','edit',1,array('siteid'=>$siteid,catid=>$cat['catid']));?>','900px','600px','iframe')" href="#body"><?php echo lang('修改');?></a> | <a onclick="return enterdel('<?php echo lang('确定要删除吗');?>')" href="<?php echo url('category','del',1,array('siteid'=>$siteid,'catid'=>$cat['catid']));?>"><?php echo lang('删除');?></a></td>
</tr>
                <?php table_category::getcategorydata($siteid,$cat['catid'],$data1,$l=1)?>
<?php if($data1) { ?>
<?php foreach($data1 as $d1) { ?>
                    
                    <tr>
<td align='center'><input name='listorders[<?php echo $d1['catid'];?>]' type='text' size='3' value='<?php echo $d1['listorder'];?>' class='input-text-c'></td>
<td align='center'><?php echo $d1['catid'];?></td>
<td class="title_left"><?php echo $d1['catename'];?> [<?php echo $d1['catdir'];?>]</td>
<td><?php echo $models[$d1['modelid']]['modelname'];?></td>
<td align='center'>&nbsp;<?php echo $d1['rownum'];?></td>
<td colspan="2" align='center'><a onclick="javascript:parent.windowsdig('<?php echo lang('添加子栏目');?>','iframe:<?php echo url('category','add',1,array('siteid'=>$siteid,catid=>$d1['catid']));?>','900px','600px','iframe')" href="#body"><?php echo lang('添加子栏目');?></a> | <a onclick="javascript:parent.windowsdig('<?php echo lang('修改');?>','iframe:<?php echo url('category','edit',1,array('siteid'=>$siteid,catid=>$d1['catid']));?>','900px','600px','iframe')" href="#body"><?php echo lang('修改');?></a> | <a onclick="return enterdel('<?php echo lang('确定要删除吗');?>')" href="<?php echo url('category','del',1,array('siteid'=>$siteid,'catid'=>$d1['catid']));?>"><?php echo lang('删除');?></a></td>
</tr>
                
                    <?php } ?>
                <?php } ?>
                <?php unset($d1);unset($data1);?>
               <?php } ?>
  <tr>
    <td><input type="hidden" name="batch" value="">
    <input type="button" value="<?php echo lang('排序');?>" name="sort" onclick="this.form.action='<?php echo url('category','batch',1);?>'; this.form.batch.value='sort'; this.form.submit();" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2">&nbsp;</td>
    </tr>
  </table>
</div>
    </td>
  </tr>
</table>
</form>
</body>
</html>