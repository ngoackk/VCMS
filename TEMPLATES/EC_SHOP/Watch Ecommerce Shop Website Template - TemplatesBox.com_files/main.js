// JavaScript Document

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
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

function ow(strSrc, W, H) {
var left;
var top;
if (!W) W = 650;
if (!H) H = 400;
left = (screen.width - W) / 2;
top = (screen.height - H) / 2 - 20;
window.open(strSrc, "uploadw", "width=" + W + ",height=" + H + ",top=" + top + ",left=" + left + ",alwaysRaised=yes,toolbar=0,directories=0,menubar=0,status=0,resizable=1,location=0,scrollbars=0,copyhistory=0");
}
function fullscale_preview(div_width, div_height, divsrc){
	 document.getElementById("full_scale_preview_div").style.display="block";
     document.getElementById("full_scale_preview").height=div_height;
     document.getElementById("full_scale_preview").width=div_width;
     document.getElementById("full_scale_preview").src=divsrc;
}
function hide_fullscale_preview(div_width, div_height, divsrc){
	 document.getElementById("full_scale_preview_div").style.display="none";
}