<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title>사이트홈 - <?php echo $site_title;?></title>
<link href="/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
<?php echo template('header.html'); ?>
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0" class="b10">
  <tr>
    <td><img src="ad/banner_1124_vvw.jpg" width="860" height="80" border="0" /></td>
  </tr>
</table>

<table width="860" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td background="img/tabb_s1.jpg" style="background-position:bottom" height="10"></td>
  </tr>
</table>
<table width="840" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="200"><img src="img/za_r1_c1_s1.jpg" width="110" height="20" /></td>
    <td width="230"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="img/za_r1_c3_s1.jpg" width="110" height="20" /></td>
        <td width="34"><a href="<?php echo url('news','noticelist');?>"><img src="img/more_s1.jpg" width="34" height="11" /></a></td>
      </tr>
    </table></td>
    <td rowspan="2" width="15">
<table width="1" border="0" cellspacing="0" cellpadding="0" align="center"><tr><td height="130" width="1" bgcolor="#aaaaaa"></td></tr></table>
    </td>
    <td width="270"><img src="img/za_r1_c5_s1.jpg" width="171" height="20" /></td>
    <td rowspan="2" width="15">
<table width="1" border="0" cellspacing="0" cellpadding="0" align="center"><tr><td height="130" width="1" bgcolor="#aaaaaa"></td></tr></table>
    </td>
    <td><img src="img/za_r1_c7_s1.jpg" width="107" height="20" /></td>
  </tr>
  <tr>
    <td height="120"><table width="170" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20" height="22">1</td>
        <td><a href="<?php echo url('news','qalist');?>">Q&amp;A게시판</a></td>
        <td><img src="img/jiantou_s1.jpg" width="6" height="9" /></td>
      </tr>
      <tr>
        <td height="22">2</td>
        <td><a href="http://www.inicis.com/index.jsp" target="_blank">신용카드지불설명</a></td>
        <td><img src="img/jiantou_s1.jpg" width="6" height="9" /></td>
      </tr>
      <tr>
        <td height="22">3</td>
        <td><a href="<?php echo url('shop','brands');?>">세계브랜드TOP10</a></td>
        <td><img src="img/jiantou_s1.jpg" width="6" height="9" /></td>
      </tr>
      <tr>
        <td height="22">4</td>
        <td><a onclick="open_win(this.href,'ad1',520,530);return false;" href="/ad1.html">무이자할부카드</a></td>
        <td><img src="img/jiantou_s1.jpg" width="6" height="9" /></td>
      </tr>
      <tr>
        <td height="22">5</td>
        <td><a href="<?php echo url('news','infolist');?>">명품지식</a></td>
        <td><img src="img/jiantou_s1.jpg" width="6" height="9" /></td>
      </tr>
    </table></td>
    <td valign="top"><table width="230" border="0" cellspacing="0" cellpadding="0">
    <?php foreach($news as $item) { ?>
      <tr>
        <td><img src="img/jia_s1.jpg" width="5" height="5" /></td>
        <td height="22"><a onclick="open_win(this.href,'notice',417,481);return false;" href="<?php echo url('news','viewwin',0,array('id'=>$item['id']));?>"><?php echo $item['title'];?></a></td>
        <td align="right"><?php echo $item['addtime'];?></td>
      </tr>
     <?php } ?> 
    </table></td>
    <td><table width="270" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="80" rowspan="4" align="left" valign="top"><a href="<?php echo url('shop','view',0,array('id'=>$order['shopid']));?>"><img src="<?php echo getShopThumb($order['shopid']);?>" width="70" height="70" style=" border:1px #C00 solid; padding:1px;"></a></td>
        <td height="22"><strong><a href="<?php echo url('shop','view',0,array('id'=>$order['shopid']));?>"><?php echo $order['brandname'];?></a></strong></td>
      </tr>
      <tr>
        <td height="22"><strong><a href="<?php echo url('shop','view',0,array('id'=>$order['shopid']));?>"><?php echo $order['g_name'];?></a></strong></td>
      </tr>
      <tr>
        <td height="22"><a href="<?php echo url('shop','view',0,array('id'=>$order['shopid']));?>"><?php echo $order['sellerusername'];?></a></td>
      </tr>
      <tr>
        <td height="22"><a href="<?php echo url('shop','view',0,array('id'=>$order['shopid']));?>"><strong><?php echo number_format($order['g_price']);?></strong> (<?php echo $order['addtime'];?>)</a></td>
      </tr>
    </table></td>
    <td valign="top"><table width="110" border="0" cellspacing="0" cellpadding="0">
    <?php $i=1;?>
    <?php foreach($keywordsarr as $item) { ?>
      <tr>
        <td width="15" height="22"><?php echo $i;?></td>
        <td><a href="<?php echo url('shop','allsearch',0,array('key'=>'g_name','keywords'=>$item['keyword']));?>"><?php echo $item['keyword'];?></a></td>
      </tr>
      <?php $i++;?>
     <?php } ?>
    </table></td>
  </tr>
</table>
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td background="img/tabbb_s1.jpg" height="10"></td>
  </tr>
</table>
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0" class="t10" background="img/newshop_s1.jpg">
  <tr>
    <td height="30"></td>
  </tr>
</table>
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="3" background="img/newshopb_r1_c1_s1.jpg"></td>
    <td height="601" valign="top" id="bestnew">
     <?php foreach($shops as $shop) { ?>
<ul>
<li class="pic"><a title="<?php echo $shop['g_name'];?>" href="<?php echo url('shop','view',0,array('id'=>$shop['id']));?>"><img src="<?php echo $shop['g_photo1'];?>" width="110" height="100" /></a></li>
<li class="pai"><a title="<?php echo $shop['g_name'];?>" href="<?php echo url('shop','view',0,array('id'=>$shop['id']));?>"><?php echo $shop['brandname'];?></a></li>
<li class="ming"><a title="<?php echo $shop['g_name'];?>" href="<?php echo url('shop','view',0,array('id'=>$shop['id']));?>"><?php echo cut($shop['g_name'],18);?></a></li>
<li class="qian"><?php echo number_format($shop['g_price']);?> <img style="cursor:pointer;" onclick='window.open("<?php echo url('weak','add',0,array('g_code'=>$shop['g_code'],'shopid'=>$shop['id'],'brandname'=>$shop['brandname'],'shopname'=>$shop['g_name'],'uid'=>$st_user['uid'],'username'=>$st_user['username'],'sellerid'=>$shop['uid'],'sellername'=>$shop['username']));?>","weakwindow","width=420,height=500");' src="img/sp_tb_plus.png" width="12" height="12" /> <a target="_blank" title="<?php echo $shop['g_name'];?>" href="<?php echo url('shop','view',0,array('id'=>$shop['id']));?>"><img src="img/sp_tb_sc.png" width="12" height="12" /></a></li>
<li class="dian"><?php echo $shop['username'];?></li>
</ul>
<?php } ?>
    </td>
    <td width="3" background="img/newshopb_r1_c3_s1.jpg"></td>
  </tr>
</table>
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0" background="img/newshopd_s1.jpg">
  <tr>
    <td height="3"></td>
  </tr>
</table>
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0" background="img/dianpu_s1.jpg" class="t10">
  <tr>
    <td height="35" align="right" valign="top"><a href="<?php echo url('shop','sell');?>"><img src="blank.gif" border="0" width="132" height="25" /></a></td>
  </tr>
</table>
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
<ul id="tuiguang">
<?php foreach($elitecorp as $corp) { ?>
<li><a href="http://<?php echo $site_domain;?>/?u=<?php echo $corp['username'];?>"><?php echo $corp['shopname'];?></a> -
<?php echo $corp['intro'];?><br />
<strong>http://<?php echo $site_domain;?>/?u=<?php echo $corp['username'];?></strong>
</li>
<?php } ?>
</ul>
    </td>
  </tr>
</table>
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0" background="img/dianpud_s1.jpg">
  <tr>
    <td height="10"></td>
  </tr>
</table>
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0" class="t10" background="img/punew_s1.jpg">
  <tr>
    <td height="19" align="right"><a href="<?php echo url('shop','sell');?>"><img src="blank.gif" border="0" width="102" height="20" /></a></td>
  </tr>
</table>
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
    <?php foreach($newshops as $shop) { ?>
<div class="pushops"><div class="about" id="shopsid<?php echo $shop['id'];?>"><div><b><?php echo $shop['brandname'];?></b><br><span class=lb><?php echo cut($shop['g_name'],18);?></span><br><?php echo $shop['g_price'];?><br><?php echo $shop['username'];?></div></div><a href="<?php echo url('shop','view',0,array('id'=>$shop['id']));?>"><img src="<?php echo $shop['g_photo1'];?>" border=0 width="80" height="80" onmouseover="$('#shopsid<?php echo $shop['id'];?>').css('display','block');" onMouseOut="$('#shopsid<?php echo $shop['id'];?>').css('display','none');"></a></div>
    <?php } ?>
    </td>
  </tr>
</table>
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0" class="t10" background="img/zhishi_s1.jpg">
  <tr>
    <td width="480" height="16" align="right"><a href="<?php echo url('news','infolist');?>"><img src="blank.gif" border="0" width="111" height="16" /></a></td>
    <td><strong style="text-indent:166px; color:#F00;"><?php echo $orders['0'][sellerusername];?></strong></td>
  </tr>
  <tr>
    <?php $i=1; ?>
    <td height="102"><div style="margin-left:10px;"><?php foreach($newsseller as $item) { ?>
  <strong style="font-size:12px;<?php if($i==1) { ?> color:#F00;<?php } ?><?php if($i==2) { ?> color:#c40;<?php } ?><?php if($i==3) { ?> color:#c83;<?php } ?>"><?php echo $i;?>.</strong><?php echo $item['username'];?>, 
   <?php $i++;?>
    <?php } ?></div></td>
    <?php $i=1; ?>
    <td><?php foreach($orders as $item) { ?>
  <strong style="font-size:12px;<?php if($i==1) { ?> color:#F00;<?php } ?><?php if($i==2) { ?> color:#c40;<?php } ?><?php if($i==3) { ?> color:#c83;<?php } ?>"><?php echo $i;?>.</strong><?php echo $item['sellerusername'];?>, 
   <?php $i++;?>
    <?php } ?></td>
  </tr>
</table>
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0" class="t10">
  <tr>
    <td width="188" height="166" background="img/jiameng_r1_c1_s1.jpg"></td>
    <td valign="top" style="border:1px #CCC solid; border-left:none;"><table width="640" border="0" align="center" cellpadding="0" cellspacing="0" class="t10">
      <tr>
        <td><strong style="font-size:16px; color:#F00">500</strong> 여개 매장등록</td>
        <td width="120"><a href="<?php echo url('corp','reg');?>"><img src="img/jiameng_r2_c5_s1.jpg" width="111" height="17" border="0" /></a></td>
        <td width="78"><a href="<?php echo url('shop','sellers');?>"><img src="img/jiameng_r2_c7_s1.jpg" width="78" height="17" border="0" /></a></td>
      </tr>
    </table>
      <table width="640" border="0" align="center" cellpadding="0" cellspacing="0" class="t10">
        <tr>
         <?php foreach($corps as $item) { ?><td align="center"><a href="http://<?php echo $site_domain;?>/?u=<?php echo $item['username'];?>"><img src="<?php echo $item['photo1'];?>" width="80" height="80" class="jiamengpic" /></a><br /><?php echo $item['shopname'];?><div style="overflow:hidden; height:18px; line-height:18px; width:100px;"><?php echo $item['shopproject'];?></div></td><?php } ?>
        </tr>
    </table></td>
  </tr>
</table>
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0" class="t10">
  <tr>
    <td height="26" align="right" background="img/wen_r1_c1_s1.jpg"><a href="<?php echo url('news','infolist');?>"><img src="blank.gif" border="0" width="135" height="20" /></a></td>
  </tr>
  <tr>
    <td id="wenti"><?php foreach($infos as $item) { ?>
<ul>
<li class="xu">[<?php echo $item['typename'];?> #<?php echo $item['id'];?>]</li>
<li class="lei">[<?php echo $item['pcatename'];?> > <?php echo $item['catename'];?>]</li>
<li class="text"><?php echo $item['title'];?></li>
<li class="about"><strong class="id">ID：</strong><?php echo $item['username'];?>　답변：<strong class="hui"><?php echo $item['replynum'];?></strong>조회：<strong class="hui"><?php echo $item['hits'];?></strong>등록：<strong class="time"><?php echo substr($item['addtime'],0,10);?></strong></li>
<li style=" width:860px;overflow:hidden;"><?php echo nl2br($item['content']);?></li>
<?php if($replys) { ?>
<?php foreach($replys as $reply) { ?>
<li class="re">[<?php echo $reply['username'];?>] <?php echo $reply['content'];?></li>
<?php } ?>
<?php } ?>
</ul>
<?php } ?></td>
  </tr>
</table>
<?php echo template('footer.html'); ?>
</body>
</html>