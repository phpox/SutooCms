function enterdel(msg){
  if(confirm(msg)){
      return true;
  }else {
      return false;
  }
}

function showhtml(id,isshow){
	if(isshow){
		document.getElementById(id).style.display = '';
	}else{
		document.getElementById(id).style.display = 'none';	
	}
}

function getIFrameWin(id){
	return document.getElementById(id).contentWindow || document.frames[id].window;
}
function getIFrameDom(id){
	return document.getElementById(id).contentDocument || document.frames[id].document;
}
function refiframe(){
	getIFrameWin('rightMain').location.reload();
}

function checkall(form){
	for (var i=0;i<form.elements.length;i++){
		var e = form.elements[i];
		if (e.name != 'chkall'){
			e.checked = form.chkall.checked;
		}
	}
}