<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title><?php echo core_config::get('admin_title');?> - Power By Sutoo CMS</title>
<base target="rightMain" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo $base_dir;?>js/simpla.jquery.configuration.js"></script>
<script type="text/javascript" src="<?php echo $base_dir;?>js/iepngfix_tilebg.js"></script>
<link rel="stylesheet" href="<?php echo $base_dir;?>skin/admin/css.css" type="text/css" media="screen" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/dialog.js"></script>
<link href="<?php echo $base_dir;?>skin/admin/dialog.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<?php echo $base_dir;?>js/common.js"></script>
</head>
<body>
<div id="admin_content">
<div id="head">
<div id="logo"></div>
            <div id="help"></div>
            <div id="nav"><?php echo lang('当前位置');?>：<?php echo lang('后台首页');?></div>
            <div id="menu"><?php echo lang('您好');?>，<?php echo lang($admin['rolename']);?>：<span><?php echo $admin['username'];?></span> | <a href="<?php echo url('admin','logout',1);?>" target="_self"><?php echo lang('退出');?></a> | <a href="index.php" target="_blank"><?php echo lang('网站首页');?></a> | <a href="<?php echo url('config','info',1);?>"><?php echo lang('后台首页');?></a></div>
</div>
<div id="main">
<div id="left">
<ul id="main-nav">
        <?php foreach($sites as $site) { ?>
        <li><a class="nav-top-item"><?php echo $site['sitename'];?></a>
          <ul>
    <li><a href="<?php echo url('category','list',1,array('siteid'=>$site['siteid']));?>"><?php echo lang('站点栏目管理');?></a></li>
            <?php if(in_array('news',$site['model'])) { ?><li><a href="<?php echo url('news','list',1,array('siteid'=>$site['siteid']));?>"><?php echo lang('站点内容管理');?></a></li><?php } ?>
            <?php if(in_array('pic',$site['model'])) { ?><li><a href="<?php echo url('pic','list',1,array('siteid'=>$site['siteid']));?>"><?php echo lang('站点图片管理');?></a></li><?php } ?>
            <?php if(in_array('shops',$site['model'])) { ?>
            <li><a href="<?php echo url('brand','list',1,array('siteid'=>$site['siteid']));?>"><?php echo lang('商城品牌管理');?></a></li>
            <li><a href="<?php echo url('shop','list',1,array('siteid'=>$site['siteid']));?>"><?php echo lang('商城商品管理');?></a></li>
            <!--<li><a href="<?php echo url('order','list',1,array('siteid'=>$site['siteid']));?>"><?php echo lang('商城交易管理');?></a></li>
            <li><a href="<?php echo url('pay','list',1,array('siteid'=>$site['siteid']));?>"><?php echo lang('商城支付管理');?></a></li>
            <li><a href="<?php echo url('shopmember','list',1,array('siteid'=>$site['siteid']));?>"><?php echo lang('商城会员管理');?></a></li>--><?php } ?>
            <?php if(in_array('info',$site['model'])) { ?><li><a href="<?php echo url('info','list',1,array('siteid'=>$site['siteid']));?>"><?php echo lang('供求信息管理');?></a></li><?php } ?>
    <li><a href="<?php echo url('types','list',1,array('siteid'=>$site['siteid']));?>"><?php echo lang('站点类别管理');?></a></li>
    <li><a href="<?php echo url('model','list',1,array('siteid'=>$site['siteid']));?>"><?php echo lang('站点模型管理');?></a></li>
    <li><a href="javascript:parent.windowsdig('<?php echo lang('站点信息配置');?>','iframe:index.php?ctl=site&act=edit&adminact=1&siteid=<?php echo $site['siteid'];?>','900px','480px','iframe')"><?php echo lang('站点信息配置');?></a></li>
  </ul>
        </li>
        <?php } ?>
        <li><a class="nav-top-item"><?php echo lang('系统设置');?></a>
          <ul>
    <li><a href="<?php echo url('config','set',1);?>"><?php echo lang('系统信息配置');?></a></li>
            <li><a href="<?php echo url('model','list',1);?>"><?php echo lang('系统模型管理');?></a></li>
    <li><a href="<?php echo url('site','list',1);?>"><?php echo lang('系统站点管理');?></a></li>
    <li><a href="<?php echo url('template','list',1);?>"><?php echo lang('系统模板管理');?></a></li>
    <li><a href="special.htm"><?php echo lang('系统专题管理');?></a></li>
    <li><a href="log.htm"><?php echo lang('系统日志管理');?></a></li>
            <li><a href="<?php echo url('role','list',1);?>"><?php echo lang('系统角色管理');?></a></li>
  </ul>
        </li>
        <li><a class="nav-top-item"><?php echo lang('用户设置');?></a>
          <ul>
            <li><a href="<?php echo url('uconfig','set',1);?>"><?php echo lang('用户系统配置');?></a></li>
            <li><a href="<?php echo url('umodel','list',1);?>"><?php echo lang('用户模型管理');?></a></li>
          </ul>
        </li>
</ul>
</div>
<div id="right">
<iframe name="rightMain" id="rightMain" src="<?php echo url('config','info',1);?>" frameborder="no" scrolling="yes" width="100%" height="auto" allowtransparency="true"></iframe>
</div>
</div>
<div id="foot"><?php echo lang('评论管理');?> | <?php echo lang('生成首页');?> | <?php echo lang('更新缓存');?> | <?php echo lang('后台地图');?> | <?php echo lang('数据备份');?></div>
</div>
<script type="text/javascript"> 
function windowW(){
if($(window).width()<1000){
$('#head').css('width',1000+'px');
$('#main').css('width',1000+'px');
$('#right').css('width',798+'px');
$('#foot').css('width',1000+'px');
$('#help').css('width',788+'px');
}else{
$('#head').css('width','100%');
$('#main').css('width','100%');
$('#right').css('width',$(window).width()-202+'px');
$('#foot').css('width','100%');
$('#help').css('width',$(window).width()-202+'px');
}
if($(window).height()<250){
$('#main').css('height',155+'px');
$('#left').css('height',143+'px');
$('#right').css('height',143+'px');
$('#rightMain').css('height',143+'px');
}else{
$('#main').css('height',$(window).height()-96+'px');
$('#left').css('height',$(window).height()-108+'px');
$('#right').css('height',$(window).height()-108+'px');
$('#rightMain').css('height',$(window).height()-108+'px');
}
}
windowW();
$(window).resize(function(){
windowW();
});



 // 去掉链接虚线
var anchors = document.getElementsByTagName('a');  
 for (var i=0; i < anchors.length; i++) {  
     anchors[i].hideFocus = true;  
 }  
var anchors = document.getElementsByTagName('a');  
 for (var i=0; i < anchors.length; i++) {  
     anchors[i].onfocus = function() {  
         this.blur();  
     }  
 }
  
</script>
</body>
</html>