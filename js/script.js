function setTab(name,cursel,n){
	for(i=1;i<=n;i++){
		var menu=document.getElementById(name+i);
		var con=document.getElementById("con_"+name+"_"+i);
		menu.className=i==cursel?"hover":"";
		con.style.display=i==cursel?"block":"none";
	}
}
function setTab1(name,cursel,n){
		for(i=1;i<=n;i++){
			var menu=document.getElementById(name+i);
			var con=document.getElementById("con_"+name+"_"+i);
			if(i==cursel){
				menu.src='img/tab1_'+i+'_1.gif';
				con.style.display="";
			}else{
				menu.src='img/tab1_'+i+'_2.gif';
				con.style.display="none";
			}
		}
}
function setTab2(name,cursel,n){
	for(i=1;i<=n;i++){
		var menu1=document.getElementById(name+'1'+i);
		var menu2=document.getElementById(name+'2'+i);
		var menu3=document.getElementById(name+'3'+i);
		var con=document.getElementById("con_"+name+"_"+i);
		menu1.className=i==cursel?"hover1":"out1";
		menu1.className=i==cursel?"hover2":"out2";
		menu1.className=i==cursel?"hover3":"out3";
		con.style.display=i==cursel?"":"none";
	}
}
function open_win(url,id,width,height){
    file_window=window.open(url,id,"height="+height+",width="+width+", scrollbars=yes,status=no,menubar=no,resizable=no, left=100, top=10");
}