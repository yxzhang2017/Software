<%@ page language="java" import="java.util.*" pageEncoding="gbk"
	contentType="text/html; charset=gbk"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gbk">
	<link rel="stylesheet" href="image/style.css" type="text/css">

	<script>
 
</script>
</head>
<body bgcolor=#39867b>

	<td width="910">
			<table width="100%" height="20" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td height="20" class="title_s">
						<font color="white"><b>更改管理员密码</b>
						</font>
					</td>
				</tr>
				<tr>
					<td height="3" bgcolor="#A3BED9"></td>
				</tr> 
			</table>
		</td>

        <p><p>
	<html:form action="/admin/edit" method="post">
		<table width="100%" border="0" align="center" cellpadding="3"
			cellspacing="1" bgcolor="#FFFFFF">

 
			<tr bgcolor="c6ebde">
				<td width="29%" height="26" align="center">
					用户名
				</td>
				<td width="71%" bgcolor="c6ebde">
					<html:text property="name" readonly="true"></html:text>
				</td>
			</tr>
			<tr bgcolor="c6ebde">
				<td width="29%" height="26" align="center">
					密&nbsp&nbsp码
				</td>
				<td width="71%" bgcolor="c6ebde">
					<html:text property="psw"></html:text>
					<font color='red'>&nbsp*您可以请输入新密码</font>
				</td>
			</tr>
			<tr bgcolor="c6ebde">
				<td height="26" align="right">
					<div align="center"></div>
				</td>
				<td bgcolor="c6ebde">
					<html:submit>确定修改</html:submit>
					&nbsp;&nbsp;&nbsp;
				</td>
			</tr>
		</table>
	</html:form>
</body>
</html:html>
