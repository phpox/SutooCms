<?php defined('SUTOOCMS') or exit('Can\'t Access !'); ?>
<!--头部-->
<script type="text/javascript" src="/iepngfix_tilebg.js"></script>
<script type="text/javascript">
var isopen = false;
function openquick(){
if(!isopen){
document.getElementById("quick_floater").style.display = "";
isopen = true;
}else{
document.getElementById("quick_floater").style.display = "none";
isopen = false;
}
}
</script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/hprose.js"></script>
<script type="text/javascript">
var client = new HproseHttpClient("<?php echo url('rpc');?>", ["getSubCate"]);
jQuery(function($) {
$("#spcatid").change(function(e) {
$("#scatid").html("");
$("#scatid").append("<option value='' selected=\"selected\">소분류 선택</option>");
if($("#spcatid").val() == ''){
return false;	
}
        client.getSubCate($("#spcatid").val(),function(result){
for(i=0;i<result.length;i++){
$("#scatid").append("<option value='"+result[i].catid+"'>"+result[i].catename+"</option>");	
}
});
    });
});
</script>
<script type="text/javascript">
function setComma(str) {
  str = ''+str+''; 
  var retValue = ''; 
  for(i=0; i<str.length; i++){ 
  	if (i > 0 && (i%3)==0)
retValue = str.charAt(str.length - i -1) + ',' + retValue; 
else
retValue = str.charAt(str.length - i -1) + retValue; 
  } 
  return retValue; 
} 
function change_max_price() {
    for (var i = 1; i=document.search_form.sprice_max.length-1; i++) document.search_form.sprice_max.options[1] = null;
var sp = document.search_form.sprice_small.value*1;
var p_index=10000;

if(sp<10000) return;

var i_count=1
if(sp<10000) i_count=1
else if(sp==10000) i_count=6
else if(sp<50000) i_count=8
else if(sp<100000) i_count=12
else i_count=16

for(var i=1; i <= i_count ; i++){
if(sp/10000 >= 4000) p_index=40000000
else if(sp/10000 >= 2000) p_index=10000000
else if(sp/10000 >= 1000) p_index=2000000
else if(sp/10000 >= 700) p_index=1000000
else if(sp/10000 >= 400) p_index=500000
else if(sp/10000 >= 200) p_index=200000
else if(sp/10000 >= 100) p_index=100000
else if(sp/10000 >= 50) p_index=50000
else if(sp/10000 >= 20) p_index=20000
else p_index=10000

var sp=sp + (p_index)

document.search_form.sprice_max.options[i] =  new Option(setComma(sp), sp);
}
document.search_form.sprice_max.options[2].selected = true;
}
</script>
<script language="JavaScript" type="text/javascript">
function detail_search() {
if(document.search_form.keywords.value.length==1){
alert('키워드는 2글자 이상이 되어야 합니다');
return false;
}
if(
(document.search_form.sbrandid.value.length==0)&&
(document.search_form.spcatid.value.length==0)&&
(document.search_form.sprice_small.value.length==0)&&
(document.search_form.new_old_key.value.length==0)&&
(document.search_form.keywords.value.length<2)
){
alert('검색조건을 입력해 주시기 바랍니다');
return false;
}
var g_price_small=document.search_form.sprice_small.value*1;
var g_price_max=document.search_form.sprice_max.value*1

if(g_price_small > 0 && g_price_small >= g_price_max){

alert('가격범위를 정확히 설정해 주시기 바랍니다');
document.search_form.sprice_max.focus();
return false;
}
return true;
}
</script>
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
function setTab(name,cursel,n){
for(i=1;i<=n;i++){
var menu=document.getElementById(name+i);
var con=document.getElementById("con_"+name+"_"+i);
con.style.display=i==cursel?"block":"none";
}

}
</script>
<script type="text/javascript"> 
function login_check1(){
if (document.login_form1.username.value.length < 5 ) {
alert("5자 이상(영문, 숫자혼합) 아이디를 입력하세요");
document.login_form1.username.focus();
return false;
}
if (document.login_form1.password.value.length < 4 ) {
alert("4자리 이상의 비밀번호를 입력해 주세요");
document.login_form1.password.focus();
return false;
}
return true;
}
function addfavorite()
{
   if (document.all)
   {
      window.external.addFavorite('http://hdplus.sutoo.com','『HDplus』');
   }
   else if (window.sidebar)
   {
      window.sidebar.addPanel('『HDplus』', 'http://hdplus.sutoo.com', "");
   }
} 
</script>
<table width="870" border="0" align="center" cellpadding="0" cellspacing="0" id="header">
  <tr>
    <td width="175" height="129" valign="top"><img onclick="addfavorite()" src="img/headv2_01.gif" border="0" style="margin:2px 0 30px 0; cursor:pointer;" /><div id="aindex"><a href="/"><strong>홈</strong></a></div></td>
    <td align="right" valign="top">
    <table width="690" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="27" align="right" style="font-family: 돋움, 돋움체, Arial, seoul, Helvetica, sans-serif; font-size:11px;">
Welcom to HDPLUS! <a href="<?php echo url('user');?>"><?php echo $st_user['username'];?> 마이페이지</a> | <a href="<?php echo url('bbs');?>">게시판S</a> | <?php if(!$st_user['username']) { ?><a href="<?php echo url('user','login');?>">로그인</a> | <a href="<?php echo url('user','reg');?>">회원가입</a><?php } else { ?><a href="<?php echo url('user','edit');?>">회원정보 수정</a> | <a href="<?php echo url('user','logout');?>"> 로그아웃</a><?php } ?>　<img src="img/quick_menu_s1.jpg" width="119" height="16" border="0" align="absmiddle" onclick="openquick()" />
        </td>
      </tr>
    </table>
    <table width="690" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="top">
<style>
#quick_floater td {font-family: 돋움, 돋움체, Arial, seoul, Helvetica, sans-serif; font-size:11px; line-height:20px;}
#quick_floater  a {font-family: 돋움, 돋움체, Arial, seoul, Helvetica, sans-serif; font-size:11px;}
</style>
<div id="quick_floater" style="position:absolute; display:none;"> 
  <table width="119" border="0" cellspacing="1" cellpadding="0" bgcolor="#cccccc" style="position:absolute; top:-6px; left:571px;">
    <tr> 
      <td bgcolor=#ffffff align="left">
<table width="117" border="0" cellspacing="2" cellpadding="0" align=center>
<tr>
<tr>
  <td height=20 class=br>
<a href="<?php echo url('news','qalist');?>">Q&amp;A 게시판</a>
</td>
</tr>
<tr><td height=20 class=br>
<a href="<?php echo url('news','infolist');?>">명품지식</a>
</td></tr>
<td height=20 class=br>
<a href="<?php echo url('user');?>">마이페이지</a>
</td></tr>
<tr><td height="20" class=brs style='line-height:16px'>
&nbsp;&nbsp;<a href="<?php echo url('usershop','sell');?>">판매처리중주문</a><br>
&nbsp;&nbsp;<a href="<?php echo url('usershop','selllist');?>">나의등록상품</a><br>
&nbsp;&nbsp;<a href="<?php echo url('shop','sell');?>">상품판매등록</a><br>
&nbsp;&nbsp;<a href="<?php echo url('news','sellergoodsqalist');?>">상품문의(판매)</a><br>

</td></tr>
<tr><td height=5></td></tr>
<tr><td height="20" class=brs style='line-height:16px'>
&nbsp;&nbsp;<a href="<?php echo url('user','myorder');?>">구매처리중주문</a><br>
&nbsp;&nbsp;<a href="<?php echo url('fav','myfavshop');?>">관심상품</a><br>
&nbsp;&nbsp;<a href="<?php echo url('fav','myfavseller');?>">관심판매자</a><br>
&nbsp;&nbsp;<a href="<?php echo url('news','buyergoodsqalist');?>">상품문의(구매)</a>
</td></tr>
<tr><td height=5></td></tr>
<tr><td height="20" class=brs style='line-height:16px'>
&nbsp;&nbsp;<a href=mypage_interest_info.php>관심지식</a><br>
&nbsp;&nbsp;<a href=mypage_info_ask.php>나의등록/답변지식</a><br>

</td></tr>

<tr><td height=20 class=br>
<a href="<?php echo url('shop','sellers');?>">전국매장</a>
</td></tr>
<tr><td height=20 class=br>
<a href="<?php echo url('shop','brands');?>">명품top10</a>
</td></tr>
<tr><td height=20 class=br>
<a href="http://www.inicis.com" target=blank>신용카드결제내역확인</a>
</td></tr>
<tr><td height=20 class=br>
<a href="javascript:open_win('<?php echo url('news','help');?>','help',857,641)">이용안내</a>
</td></tr>
</table>
      </td>
    </tr>
  </table>
</div>
        </td>
      </tr>
    </table>
    <form action="index.php" name="allserach" id="allsearch" method="get" style="margin:0px; padding:0px;"><input name="ctl" type="hidden" value="shop" /><input name="act" type="hidden" value="allsearch" />
    <table width="680" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="20" colspan="2" align="left"><img src="img/headv2_11.gif" width="261" height="25" /></td>
        <td rowspan="3" align="right">
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="350" height="60" id="player" name="player">
<param name="movie" value="img/banner_h1.swf" />
<param name="allowfullscreen" value="true" />
<param name="wmode" value="transparent">
<param name="allowscriptaccess" value="always" />
<embed src="img/banner_h1.swf" width="350" height="60"></embed>
</object> 
        </td>
      </tr>
      <tr>
        <td width="266" height="40" align="center" style="background:url(img/headv2_14.gif) left 2px no-repeat;">
        <select name="key" style="font-size: 12px; color: rgb(100, 100, 100); border:none;" id="key">
          <option value="g_name">명품검색</option>
          <option value="g_code">상품번호</option>
          <option value="username">아이디</option>
        </select> 
<input name="keywords" type="text" value="" style="border:1px #FFF solid; height:18px; width:165px;" />
    </td>
    <td width="60" align="center"><input type="image" src="img/headv2_15.gif" /></td>
        </tr>
      <tr>
        <td height="8" colspan="2" align="center"></td>
        </tr>
    </table>
    <table width="680" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="75" align="left"><img src="img/headv2_17.gif" width="69" height="16" align="absmiddle" /></td>
        <td width="235" align="left" style="width:235px; overflow:hidden;"><div style="overflow:hidden; width:235px; height:20px; line-height:20px;"><?php foreach($keywordsarr as $item) { ?><a href="<?php echo url('shop','allsearch',0,array('key'=>'g_name','keywords'=>$item['keyword']));?>" style="font-family: 돋움, 돋움체, Arial, seoul, Helvetica, sans-serif; font-size:11px;"><?php echo $item['keyword'];?></a> <?php } ?></div></td>
        <td width="370" align="right">
<table width="354" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="60"><a href="<?php echo url('shop','sell');?>"><img src="img/1.png" width="67" height="20" style="border:0px;" /></a></td>
            <td width="9" class="menufen"></td>
            <td width="60"><a href="<?php echo url('shop','sellers');?>"><img src="img/2.png" width="60" height="20" style="border:0px;" /></a></td>
            <td width="9" class="menufen"></td>
            <td width="60"><a href="<?php echo url('news','infolist');?>"><img src="img/3.png" width="60" height="20" style="border:0px;" /></a></td>
            <td width="9" class="menufen"></td>
            <td><a href="<?php echo url('shop','brands');?>"><img src="img/4.png" width="80" height="20" style="border:0px;" /></a></td>
            <td width="9" class="menufen"></td>
            <td width="58"><img onclick="open_win('<?php echo url('news','help');?>','help',857,641)" style="cursor:pointer;" src="img/5.png" width="58" height="20" /></td>
          </tr>
</table>
        </td>
      </tr>
    </table>
    </form>
    </td>
    <td width="5"></td>
  </tr>
</table>
<SCRIPT language=JavaScript type=text/JavaScript>
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_showHideLayers() { //v6.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
//-->
</SCRIPT>
<style>
#Layer2 a { color:#FFF;}
</style>
<table width="860" border="0" align="center" cellpadding="0" cellspacing="0" class="b10">
  <tr>
    <td onMouseOver="MM_showHideLayers('Layer2','','show')" onmouseout="MM_showHideLayers('Layer2','','hide')"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image1','','img/nmenu_1_r1_c1_s1.jpg',1)"><img src="img/nmenu_0_r1_c1_s1.jpg" name="Image1" width="110" height="38" border="0" id="Image1" /></a></td>
    <td onMouseOver="MM_showHideLayers('Layer3','','show')" onmouseout="MM_showHideLayers('Layer3','','hide')"><a href="/index.php?ctl=shop&act=list&catid=30" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image2','','img/nmenu_1_r1_c2_s1.jpg',1)"><img src="img/nmenu_0_r1_c2_s1.jpg" name="Image2" width="56" height="38" border="0" id="Image2" /></a></td>
    <td width="2" background="img/nmenu_0_r1_c3_s1.jpg"></td>
    <td onMouseOver="MM_showHideLayers('Layer4','','show')" onmouseout="MM_showHideLayers('Layer4','','hide')"><a href="/index.php?ctl=shop&act=list&catid=31" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image3','','img/nmenu_1_r1_c4_s1.jpg',1)"><img src="img/nmenu_0_r1_c4_s1.jpg" name="Image3" width="57" height="38" border="0" id="Image3" /></a></td>
    <td width="2" background="img/nmenu_0_r1_c3_s1.jpg"></td>
    <td onMouseOver="MM_showHideLayers('Layer5','','show')" onmouseout="MM_showHideLayers('Layer5','','hide')"><a href="/index.php?ctl=shop&act=list&catid=32" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image4','','img/nmenu_1_r1_c6_s1.jpg',1)"><img src="img/nmenu_0_r1_c6_s1.jpg" name="Image4" width="70" height="38" border="0" id="Image4" /></a></td>
    <td width="2" background="img/nmenu_0_r1_c3_s1.jpg"></td>
    <td onMouseOver="MM_showHideLayers('Layer6','','show')" onmouseout="MM_showHideLayers('Layer6','','hide')"><a href="/index.php?ctl=shop&act=list&catid=33" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image5','','img/nmenu_1_r1_c8_s1.jpg',1)"><img src="img/nmenu_0_r1_c8_s1.jpg" name="Image5" width="60" height="38" border="0" id="Image5" /></a></td>
    <td width="2" background="img/nmenu_0_r1_c3_s1.jpg"></td>
    <td onMouseOver="MM_showHideLayers('Layer7','','show')" onmouseout="MM_showHideLayers('Layer7','','hide')"><a href="/index.php?ctl=shop&act=list&catid=34" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image6','','img/nmenu_1_r1_c10_s1.jpg',1)"><img src="img/nmenu_0_r1_c10_s1.jpg" name="Image6" width="55" height="38" border="0" id="Image6" /></a></td>
    <td width="2" background="img/nmenu_0_r1_c3_s1.jpg"></td>
    <td onMouseOver="MM_showHideLayers('Layer8','','show')" onmouseout="MM_showHideLayers('Layer8','','hide')"><a href="/index.php?ctl=shop&act=list&catid=35" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image7','','img/nmenu_1_r1_c12_s1.jpg',1)"><img src="img/nmenu_0_r1_c12_s1.jpg" name="Image7" width="57" height="38" border="0" id="Image7" /></a></td>
    <td width="2" background="img/nmenu_0_r1_c3_s1.jpg"></td>
    <td onMouseOver="MM_showHideLayers('Layer9','','show')" onmouseout="MM_showHideLayers('Layer9','','hide')"><a href="/index.php?ctl=shop&act=list&catid=36" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image8','','img/nmenu_1_r1_c14_s1.jpg',1)"><img src="img/nmenu_0_r1_c14_s1.jpg" name="Image8" width="56" height="38" border="0" id="Image8" /></a></td>
    <td width="2" background="img/nmenu_0_r1_c3_s1.jpg"></td>
    <td onMouseOver="MM_showHideLayers('Layer10','','show')" onmouseout="MM_showHideLayers('Layer10','','hide')"><a href="/index.php?ctl=shop&act=list&catid=37" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image9','','img/nmenu_1_r1_c16_s1.jpg',1)"><img src="img/nmenu_0_r1_c16_s1.jpg" name="Image9" width="70" height="38" border="0" id="Image9" /></a></td>
    <td width="2" background="img/nmenu_0_r1_c3_s1.jpg"></td>
    <td onMouseOver="MM_showHideLayers('Layer11','','show')" onmouseout="MM_showHideLayers('Layer11','','hide')"><a href="/index.php?ctl=shop&act=list&catid=38" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image10','','img/nmenu_1_r1_c18_s1.jpg',1)"><img src="img/nmenu_0_r1_c18_s1.jpg" name="Image10" width="80" height="38" border="0" id="Image10" /></a></td>
    <td width="2" background="img/nmenu_0_r1_c3_s1.jpg"></td>
    <td onMouseOver="MM_showHideLayers('Layer12','','show')" onmouseout="MM_showHideLayers('Layer12','','hide')"><a href="/index.php?ctl=shop&act=list&catid=39" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image11','','img/nmenu_1_r1_c20_s1.jpg',1)"><img src="img/nmenu_0_r1_c20_s1.jpg" name="Image11" width="35" height="38" border="0" id="Image11" /></a></td>
    <td width="2" background="img/nmenu_0_r1_c3_s1.jpg"></td>
    <td onMouseOver="MM_showHideLayers('Layer13','','show')" onmouseout="MM_showHideLayers('Layer13','','hide')"><a href="/index.php?ctl=shop&act=list&catid=40" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image12','','img/nmenu_1_r1_c22_s1.jpg',1)"><img src="img/nmenu_0_r1_c22_s1.jpg" name="Image12" width="56" height="38" border="0" id="Image12" /></a></td>
    <td width="2" background="img/nmenu_0_r1_c3_s1.jpg"></td>
    <td onMouseOver="MM_showHideLayers('Layer14','','show')" onmouseout="MM_showHideLayers('Layer14','','hide')"><a href="/index.php?ctl=shop&act=list&catid=41" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image13','','img/nmenu_1_r1_c24_s1.jpg',1)"><img src="img/nmenu_0_r1_c24_s1.jpg" name="Image13" width="38" height="38" border="0" id="Image13" /></a></td>
    <td width="2" background="img/nmenu_0_r1_c3_s1.jpg"></td>
    <td onMouseOver="MM_showHideLayers('Layer15','','show')" onmouseout="MM_showHideLayers('Layer15','','hide')"><a href="/index.php?ctl=shop&act=list&catid=42" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image14','','img/nmenu_1_r1_c26_s1.jpg',1)"><img src="img/nmenu_0_r1_c26_s1.jpg" name="Image14" width="36" height="38" border="0" id="Image14" /></a></td>
  </tr>
  <tr>
    <td colspan="26">
<DIV id=Layer1 style="Z-INDEX: 2; WIDTH: 1px; POSITION: absolute; HEIGHT: 1px">
<DIV id=Layer2 onMouseOver="MM_showHideLayers('Layer2','','show');MM_swapImage('Image1','','img/nmenu_1_r1_c1_s1.jpg',1)" style="Z-INDEX: 99; LEFT: 0; VISIBILITY: hidden; WIDTH: 860px; POSITION: absolute; TOP: 0px;" onmouseout="MM_showHideLayers('Layer2','','hide');MM_swapImgRestore()">
<table onMouseOver="MM_showHideLayers('Layer2','','show')" onmouseout="MM_showHideLayers('Layer2','','hide')" cellSpacing=0 cellPadding=0 width="100%" style="border:1px #C00 solid; background-color:#444; border-top:none;" >
    <td>
<table width="840" border="0" align="center" cellpadding="0" cellspacing="0" class="t10 b10">
        <tr>
         <?php $brands = getBrands(0);$i=1;?>
        <?php foreach($brands as $brand) { ?>
          <td width="140" height="20"><a href="<?php echo url('shop','plist',0,array('brandid'=>$brand['id']));?>"><?php echo $brand['brandname'];?></a></td>
          <?php if($i%6 ==0) { ?>
          </tr>
         <tr><?php } ?>
         <?php $i++;?>
        <?php } ?>
        <?php $i=0;?>
        </tr>
</table>
</td>
</table>
</DIV>
<DIV id=Layer3 onMouseOver="MM_showHideLayers('Layer3','','show');MM_swapImage('Image2','','img/nmenu_1_r1_c2_s1.jpg',1)" style="Z-INDEX: 99; LEFT: 110px; VISIBILITY: hidden; WIDTH: 200px; POSITION: absolute; TOP: 0px;" onmouseout="MM_showHideLayers('Layer3','','hide');MM_swapImgRestore()">
<TABLE onMouseOver="MM_showHideLayers('Layer3','','show')" onmouseout="MM_showHideLayers('Layer3','','hide')" cellSpacing=0 cellPadding=0 width="100%" style="border:1px #C00 solid; background-color:#fff; border-top:none;" height="200">
    <TD valign="top">
<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" class="t10 b10">
<?php $subcates = getsubcates(30);?>
        <tr>
<?php foreach($subcates as $cate) { ?>
<?php $i++;?>
<td width="140" height="20"><a href="<?php echo url('shop','list',0,array('catid'=>$cate['catid']));?>"><?php echo $cate['catename'];?></a></td>
<?php if($i%2==0) { ?>
        </tr><tr>
<?php } ?>
<?php } ?>
        <?php $i=0;?>
</tr>
</table>
    </td>
</table>
</DIV>
<DIV id=Layer4 onMouseOver="MM_showHideLayers('Layer4','','show');MM_swapImage('Image3','','img/nmenu_1_r1_c4_s1.jpg',1)" style="Z-INDEX: 99; LEFT: 168px; VISIBILITY: hidden; WIDTH: 200px; POSITION: absolute; TOP: 0px;" onmouseout="MM_showHideLayers('Layer4','','hide');MM_swapImgRestore()">
<TABLE onMouseOver="MM_showHideLayers('Layer4','','show')" onmouseout="MM_showHideLayers('Layer4','','hide')" cellSpacing=0 cellPadding=0 width="100%" style="border:1px #C00 solid; background-color:#fff; border-top:none;" height="200">
    <TD valign="top">
<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" class="t10 b10">
<?php $subcates = getsubcates(31);?>
        <tr>
<?php foreach($subcates as $cate) { ?>
<?php $i++;?>
<td width="140" height="20"><a href="<?php echo url('shop','list',0,array('catid'=>$cate['catid']));?>"><?php echo $cate['catename'];?></a></td>
<?php if($i%2==0) { ?>
        </tr><tr>
<?php } ?>
<?php } ?>
        <?php $i=0;?>
</tr>
</table>
    </td>
</table>
</DIV>
<DIV id=Layer5 onMouseOver="MM_showHideLayers('Layer5','','show');MM_swapImage('Image4','','img/nmenu_1_r1_c6_s1.jpg',1)" style="Z-INDEX: 99; LEFT: 227px; VISIBILITY: hidden; WIDTH: 200px; POSITION: absolute; TOP: 0px;" onmouseout="MM_showHideLayers('Layer5','','hide');MM_swapImgRestore()">
<TABLE onMouseOver="MM_showHideLayers('Layer5','','show')" onmouseout="MM_showHideLayers('Layer5','','hide')" cellSpacing=0 cellPadding=0 width="100%" style="border:1px #C00 solid; background-color:#fff; border-top:none;" height="200">
    <TD valign="top">
<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" class="t10 b10">
<?php $subcates = getsubcates(32);?>
        <tr>
<?php foreach($subcates as $cate) { ?>
<?php $i++;?>
<td width="140" height="20"><a href="<?php echo url('shop','list',0,array('catid'=>$cate['catid']));?>"><?php echo $cate['catename'];?></a></td>
<?php if($i%2==0) { ?>
        </tr><tr>
<?php } ?>
<?php } ?>
        <?php $i=0;?>
</tr>
</table>
    </td>
</table>
</DIV>
<DIV id=Layer6 onMouseOver="MM_showHideLayers('Layer6','','show');MM_swapImage('Image5','','img/nmenu_1_r1_c8_s1.jpg',1)" style="Z-INDEX: 99; LEFT: 299px; VISIBILITY: hidden; WIDTH: 200px; POSITION: absolute; TOP: 0px;" onmouseout="MM_showHideLayers('Layer6','','hide');MM_swapImgRestore()">
<TABLE onMouseOver="MM_showHideLayers('Layer6','','show')" onmouseout="MM_showHideLayers('Layer6','','hide')" cellSpacing=0 cellPadding=0 width="100%" style="border:1px #C00 solid; background-color:#fff; border-top:none;" height="200">
    <TD valign="top">
<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" class="t10 b10">
<?php $subcates = getsubcates(33);?>
        <tr>
<?php foreach($subcates as $cate) { ?>
<?php $i++;?>
<td width="140" height="20"><a href="<?php echo url('shop','list',0,array('catid'=>$cate['catid']));?>"><?php echo $cate['catename'];?></a></td>
<?php if($i%2==0) { ?>
        </tr><tr>
<?php } ?>
<?php } ?>
        <?php $i=0;?>
</tr>
</table>
    </td>
</table>
</DIV>
<DIV id=Layer7 onMouseOver="MM_showHideLayers('Layer7','','show');MM_swapImage('Image6','','img/nmenu_1_r1_c10_s1.jpg',1)" style="Z-INDEX: 99; LEFT: 361px; VISIBILITY: hidden; WIDTH: 200px; POSITION: absolute; TOP: 0px;" onmouseout="MM_showHideLayers('Layer7','','hide');MM_swapImgRestore()">
<TABLE onMouseOver="MM_showHideLayers('Layer7','','show')" onmouseout="MM_showHideLayers('Layer7','','hide')" cellSpacing=0 cellPadding=0 width="100%" style="border:1px #C00 solid; background-color:#fff; border-top:none;" height="200">
    <TD valign="top">
<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" class="t10 b10">
<?php $subcates = getsubcates(34);?>
        <tr>
<?php foreach($subcates as $cate) { ?>
<?php $i++;?>
<td width="140" height="20"><a href="<?php echo url('shop','list',0,array('catid'=>$cate['catid']));?>"><?php echo $cate['catename'];?></a></td>
<?php if($i%2==0) { ?>
        </tr><tr>
<?php } ?>
<?php } ?>
        <?php $i=0;?>
</tr>
</table>
    </td>
</table>
</DIV>
<DIV id=Layer8 onMouseOver="MM_showHideLayers('Layer8','','show');MM_swapImage('Image7','','img/nmenu_1_r1_c12_s1.jpg',1)" style="Z-INDEX: 99; LEFT: 418px; VISIBILITY: hidden; WIDTH: 200px; POSITION: absolute; TOP: 0px;" onmouseout="MM_showHideLayers('Layer8','','hide');MM_swapImgRestore()">
<TABLE onMouseOver="MM_showHideLayers('Layer8','','show')" onmouseout="MM_showHideLayers('Layer8','','hide')" cellSpacing=0 cellPadding=0 width="100%" style="border:1px #C00 solid; background-color:#fff; border-top:none;" height="200">
    <TD valign="top">
<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" class="t10 b10">
<?php $subcates = getsubcates(35);?>
        <tr>
<?php foreach($subcates as $cate) { ?>
<?php $i++;?>
<td width="140" height="20"><a href="<?php echo url('shop','list',0,array('catid'=>$cate['catid']));?>"><?php echo $cate['catename'];?></a></td>
<?php if($i%2==0) { ?>
        </tr><tr>
<?php } ?>
<?php } ?>
        <?php $i=0;?>
</tr>
</table>
    </td>
</table>
</DIV>
<DIV id=Layer9 onMouseOver="MM_showHideLayers('Layer9','','show');MM_swapImage('Image8','','img/nmenu_1_r1_c14_s1.jpg',1)" style="Z-INDEX: 99; LEFT: 477px; VISIBILITY: hidden; WIDTH: 200px; POSITION: absolute; TOP: 0px;" onmouseout="MM_showHideLayers('Layer9','','hide');MM_swapImgRestore()">
<TABLE onMouseOver="MM_showHideLayers('Layer9','','show')" onmouseout="MM_showHideLayers('Layer9','','hide')" cellSpacing=0 cellPadding=0 width="100%" style="border:1px #C00 solid; background-color:#fff; border-top:none;" height="200">
    <TD valign="top">
<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" class="t10 b10">
<?php $subcates = getsubcates(36);?>
        <tr>
<?php foreach($subcates as $cate) { ?>
<?php $i++;?>
<td width="140" height="20"><a href="<?php echo url('shop','list',0,array('catid'=>$cate['catid']));?>"><?php echo $cate['catename'];?></a></td>
<?php if($i%2==0) { ?>
        </tr><tr>
<?php } ?>
<?php } ?>
        <?php $i=0;?>
</tr>
</table>
    </td>
</table>
</DIV>
<DIV id=Layer10 onMouseOver="MM_showHideLayers('Layer10','','show');MM_swapImage('Image9','','img/nmenu_1_r1_c16_s1.jpg',1)" style="Z-INDEX: 99; LEFT: 535px; VISIBILITY: hidden; WIDTH: 200px; POSITION: absolute; TOP: 0px;" onmouseout="MM_showHideLayers('Layer10','','hide');MM_swapImgRestore()">
<TABLE onMouseOver="MM_showHideLayers('Layer10','','show')" onmouseout="MM_showHideLayers('Layer10','','hide')" cellSpacing=0 cellPadding=0 width="100%" style="border:1px #C00 solid; background-color:#fff; border-top:none;" height="200">
    <TD valign="top">
<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" class="t10 b10">
<?php $subcates = getsubcates(37);?>
        <tr>
<?php foreach($subcates as $cate) { ?>
<?php $i++;?>
<td width="140" height="20"><a href="<?php echo url('shop','list',0,array('catid'=>$cate['catid']));?>"><?php echo $cate['catename'];?></a></td>
<?php if($i%2==0) { ?>
        </tr><tr>
<?php } ?>
<?php } ?>
        <?php $i=0;?>
</tr>
</table>
    </td>
</table>
</DIV>
<DIV id=Layer11 onMouseOver="MM_showHideLayers('Layer11','','show');MM_swapImage('Image10','','img/nmenu_1_r1_c18_s1.jpg',1)" style="Z-INDEX: 99; LEFT: 607px; VISIBILITY: hidden; WIDTH: 200px; POSITION: absolute; TOP: 0px;" onmouseout="MM_showHideLayers('Layer11','','hide');MM_swapImgRestore()">
<TABLE onMouseOver="MM_showHideLayers('Layer11','','show')" onmouseout="MM_showHideLayers('Layer11','','hide')" cellSpacing=0 cellPadding=0 width="100%" style="border:1px #C00 solid; background-color:#fff; border-top:none;" height="200">
    <TD valign="top">
<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" class="t10 b10">
<?php $subcates = getsubcates(38);?>
        <tr>
<?php foreach($subcates as $cate) { ?>
<?php $i++;?>
<td width="140" height="20"><a href="<?php echo url('shop','list',0,array('catid'=>$cate['catid']));?>"><?php echo $cate['catename'];?></a></td>
<?php if($i%2==0) { ?>
        </tr><tr>
<?php } ?>
<?php } ?>
        <?php $i=0;?>
</tr>
</table>
    </td>
</table>
</DIV>
<DIV id=Layer12 onMouseOver="MM_showHideLayers('Layer12','','show');MM_swapImage('Image11','','img/nmenu_1_r1_c20_s1.jpg',1)" style="Z-INDEX: 99; LEFT: 524px; VISIBILITY: hidden; WIDTH: 200px; POSITION: absolute; TOP: 0px;" onmouseout="MM_showHideLayers('Layer12','','hide');MM_swapImgRestore()">
<TABLE onMouseOver="MM_showHideLayers('Layer12','','show')" onmouseout="MM_showHideLayers('Layer12','','hide')" cellSpacing=0 cellPadding=0 width="100%" style="border:1px #C00 solid; background-color:#fff; border-top:none;" height="200">
    <TD valign="top">
<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" class="t10 b10">
<?php $subcates = getsubcates(39);?>
        <tr>
<?php foreach($subcates as $cate) { ?>
<?php $i++;?>
<td width="140" height="20"><a href="<?php echo url('shop','list',0,array('catid'=>$cate['catid']));?>"><?php echo $cate['catename'];?></a></td>
<?php if($i%2==0) { ?>
        </tr><tr>
<?php } ?>
<?php } ?>
        <?php $i=0;?>
</tr>
</table>
    </td>
</table>
</DIV>
<DIV id=Layer13 onMouseOver="MM_showHideLayers('Layer13','','show');MM_swapImage('Image12','','img/nmenu_1_r1_c22_s1.jpg',1)" style="Z-INDEX: 99; LEFT: 582px; VISIBILITY: hidden; WIDTH: 200px; POSITION: absolute; TOP: 0px;" onmouseout="MM_showHideLayers('Layer13','','hide');MM_swapImgRestore()">
<TABLE onMouseOver="MM_showHideLayers('Layer13','','show')" onmouseout="MM_showHideLayers('Layer13','','hide')" cellSpacing=0 cellPadding=0 width="100%" style="border:1px #C00 solid; background-color:#fff; border-top:none;" height="200">
    <TD valign="top">
<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" class="t10 b10">
<?php $subcates = getsubcates(40);?>
        <tr>
<?php foreach($subcates as $cate) { ?>
<?php $i++;?>
<td width="140" height="20"><a href="<?php echo url('shop','list',0,array('catid'=>$cate['catid']));?>"><?php echo $cate['catename'];?></a></td>
<?php if($i%2==0) { ?>
        </tr><tr>
<?php } ?>
<?php } ?>
        <?php $i=0;?>
</tr>
</table>
    </td>
</table>
</DIV>
<DIV id=Layer14 onMouseOver="MM_showHideLayers('Layer14','','show');MM_swapImage('Image13','','img/nmenu_1_r1_c24_s1.jpg',1)" style="Z-INDEX: 99; LEFT: 622px; VISIBILITY: hidden; WIDTH: 200px; POSITION: absolute; TOP: 0px;" onmouseout="MM_showHideLayers('Layer14','','hide');MM_swapImgRestore()">
<TABLE onMouseOver="MM_showHideLayers('Layer14','','show')" onmouseout="MM_showHideLayers('Layer14','','hide')" cellSpacing=0 cellPadding=0 width="100%" style="border:1px #C00 solid; background-color:#fff; border-top:none;" height="200">
    <TD valign="top">
<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" class="t10 b10">
<?php $subcates = getsubcates(41);?>
        <tr>
<?php foreach($subcates as $cate) { ?>
<?php $i++;?>
<td width="140" height="20"><a href="<?php echo url('shop','list',0,array('catid'=>$cate['catid']));?>"><?php echo $cate['catename'];?></a></td>
<?php if($i%2==0) { ?>
        </tr><tr>
<?php } ?>
<?php } ?>
        <?php $i=0;?>
</tr>
</table>
    </td>
</table>
</DIV>
<DIV id=Layer15 onMouseOver="MM_showHideLayers('Layer15','','show');MM_swapImage('Image14','','img/nmenu_1_r1_c26_s1.jpg',1)" style="Z-INDEX: 99; LEFT: 660px; VISIBILITY: hidden; WIDTH: 200px; POSITION: absolute; TOP: 0px;" onmouseout="MM_showHideLayers('Layer15','','hide');MM_swapImgRestore()">
<TABLE onMouseOver="MM_showHideLayers('Layer15','','show')" onmouseout="MM_showHideLayers('Layer15','','hide')" cellSpacing=0 cellPadding=0 width="100%" style="border:1px #C00 solid; background-color:#fff; border-top:none;" height="200">
    <TD valign="top">
<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" class="t10 b10">
<?php $subcates = getsubcates(42);?>
        <tr>
<?php foreach($subcates as $cate) { ?>
<?php $i++;?>
<td width="140" height="20"><a href="<?php echo url('shop','list',0,array('catid'=>$cate['catid']));?>"><?php echo $cate['catename'];?></a></td>
<?php if($i%2==0) { ?>
        </tr><tr>
<?php } ?>
<?php } ?>
</tr>
</table>
    </td>
</table>
</DIV>
</DIV>
    </td>
  </tr>
</table>
<!--头部结束-->