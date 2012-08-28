<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title><?php echo lang('修改栏目');?> - <?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo $base_dir;?>js/script.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
<table width="100%" border="0" cellspacing="10" cellpadding="0" id="info_box">
  <tr>
    <td>
<ul id="tab">
<li id="tab1" class="hover" onclick="setTab('tab',1,3)"><?php echo lang('修改栏目页');?></li>
</ul>
<div class="info_content">
  <div id="con_tab_1"><form name="form1" action="" method="post"><input name="siteid" type="hidden" value="<?php echo $siteid;?>" /><input name="catid" type="hidden" value="<?php echo $row['catid'];?>" /><input name="subids" type="hidden" value="<?php echo $subids;?>" />
<table width="100%" class="table_form" border="0" cellpadding="0" cellspacing="0">   
  <tr>
    <th><?php echo lang('请选择模型');?></th>
    <td><select id="modelid" name="modelid" disabled="disabled">
      <?php echo setOption($row['modelid'],$models);?>
    </select></td>
  </tr>
  <tr>
    <th><?php echo lang('上级栏目');?></th>
    <td><select id="parentid" name="parentid">
      <option value="0">≡ <?php echo lang('作为一级栏目');?>   ≡</option>
      <?php echo setOption($row['parentid'],$catelist);?>
    </select></td>
  </tr> 
  <tr>
    <td colspan="2"><table cellspacing="0" cellpadding="0">
    <tbody id="single" style="display:block;">
    <tr>
    <th><?php echo lang('栏目名称');?></th>
    <td><input type="text" class="input-text" name="catename" id="catename" size="30" value="<?php echo $row['catename'];?>" /></td>
  </tr> 
  <tr>
    <th><?php echo lang('英文目录');?></th>
    <td><input type="text" class="input-text" name="catdir" id="catdir" size="30" value="<?php echo $row['catdir'];?>" /></td>
  </tr>
    </tbody>
    </table>
    </td>
  </tr>
  <tr>
    <th><input name="sub" type="submit" value="<?php echo lang('提交');?>" /></th>
    <td>&nbsp;</td>
  </tr> 
    </table></form>
   </div>
</div>
    </td>
  </tr>
</table>
</body>
</html>