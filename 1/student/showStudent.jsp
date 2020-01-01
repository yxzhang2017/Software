<%@ taglib uri="http://www.extremecomponents.org" prefix="ec"%>
<%@ page language="java"
	import="java.util.*,com.vanceinfo.school.hibernate.pojo.*"
	pageEncoding="gbk"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.extremecomponents.org" prefix="ec"%>
<html>

	<head>
		<title>eXtremeTest</title>
		<link rel="stylesheet" type="text/css"
			href="/css/extremecomponents.css">
		<style type="text/css">
.eXtremeTable {
	margin: 0;
	padding: 0;
}

.eXtremeTable select {
	font-family: Verdana;
	font-size: 9px;
	border: solid 1px #EEE;
	width: 75px;
}

.eXtremeTable .tableRegion {
	border: 1px solid silver;
	padding: 2px;
	font-family: Verdana;
	font-size: 10px;
	margin-top: 7px;
}

.eXtremeTable .filter {
	background-color: #efefef;
}

.eXtremeTable .filter input {
	font-family: Verdana;
	font-size: 13px;
	width: 100%;
}

.eXtremeTable .filter select {
	font-family: Verdana;
	font-size: 9px;
	border: solid 1px #EEE;
	width: 100%;
}

.eXtremeTable .tableHeader {
	background-color: #308dbb;
	color: white;
	font-family: Verdana;
	font-size: 11px;
	font-weight: bold;
	text-align: left;
	padding-right: 3px;
	padding-left: 3px;
	padding-top: 4;
	padding-bottom: 4;
	margin: 0;
	border-right-style: solid;
	border-right-width: 1px;
	border-color: white;
}

.eXtremeTable .tableHeaderSort {
	background-color: #3a95c2;
	color: white;
	font-family: Verdana;
	font-size: 11px;
	font-weight: bold;
	text-align: left;
	padding-right: 3px;
	padding-left: 3px;
	padding-top: 4;
	padding-bottom: 4;
	border-right-style: solid;
	border-right-width: 1px;
	border-color: white;
}

.eXtremeTable .odd a,.even a {
	color: Black;
	text-decoration: none;
	font-size: 13px;
}

.eXtremeTable .odd td,.eXtremeTable .even td {
	padding-top: 2px;
	padding-right: 3px;
	padding-bottom: 2px;
	padding-left: 3px;
	vertical-align: middle;
	font-family: Verdana;
	font-size: 13px;
}

.eXtremeTable .odd {
	background-color: #FFFFFF;
}

.eXtremeTable .even {
	background-color: #dfe4e8;
}

.eXtremeTable .highlight td {
	color: black;
	font-size: 10px;
	padding-top: 2px;
	padding-right: 3px;
	padding-bottom: 2px;
	padding-left: 3px;
	vertical-align: middle;
	background-color: #fdecae;
}

.eXtremeTable .highlight a,.highlight a {
	color: black;
	font-size: 10px;
}

.eXtremeTable .toolbar {
	background-color: #F4F4F4;
	font-family: Verdana;
	font-size: 9px;
	margin-right: 1px;
	border-right: 1px solid silver;
	border-left: 1px solid silver;
	border-top: 1px solid silver;
	border-bottom: 1px solid silver;
}

.eXtremeTable .toolbar td {
	color: #444444;
	padding: 0px 3px 0px 3px;
	text-align: center;
}

.eXtremeTable .separator {
	width: 7px;
}

.eXtremeTable .statusBar {
	background-color: #F4F4F4;
	font-family: Verdana;
	font-size: 13px;
}

.eXtremeTable .filterButtons {
	background-color: #efefef;
	text-align: right;
}

.eXtremeTable .title {
	color: #444444;
	font-weight: bold;
	font-family: Verdana;
	font-size: 15px;
	vertical-align: middle;
}

.eXtremeTable .title span {
	margin-left: 7px;
}

.eXtremeTable .formButtons {
	display: block;
	margin-top: 10px;
	margin-left: 5px;
}

.eXtremeTable .formButton {
	cursor: pointer;
	font-family: Verdana;
	font-size: 10px;
	font-weight: bold;
	background-color: #308dbb;
	color: white;
	margin-top: 5px;
	border: outset 1px #333;
	vertical-align: middle;
}

.eXtremeTable .tableTotal {
	background-color: #FFFFFF;
	border-top: solid 1px Silver;
}

.eXtremeTable .tableTotalEmpty {
	background-color: #FFFFFF;
}
</style>

	</head>


	<body style="margin: 25px;" bgcolor=#39867b>

		<td width="910">
			<table width="100%" height="20" border="0" cellpadding="0"
				cellspacing="0">
				<tr>
					<td height="20" class="title_s">
						<font color="white"><b>ѧ������</b>
						</font>
					</td>
				</tr>
				<tr>
					<td height="3" bgcolor="#A3BED9"></td>
				</tr>
			</table>
		</td>
		<br>
		<ec:table items="studentlist"
			action="${pageContext.request.contextPath}/student/list.do"
			imagePath="${pageContext.request.contextPath}/images/table/*.gif"
			title="��ʾ����������������ݿɽ���������ѯ" width="96%" rowsDisplayed="5"
			var="student">
			<ec:exportXls fileName="student.xls" tooltip="Excel" />
			<ec:row>
				<ec:column property="name" title="����" />
				<ec:column property="studentNo" title="ѧ��" />
				<ec:column property="psw" title="��½����" />
				<ec:column property="born" title="��������" />
				<ec:column property="sex" title="�Ա�" />
				<ec:column property="tel" title="�绰" />
				<ec:column property="schooltime" title="��ѧʱ��" />
				<ec:column property="email" title="����" />
				<ec:column property="addr" title="��ַ" />
				<ec:column property="certid" title="����֤��" />
				<ec:column property="politics" title="������ò" />
				<ec:column property="hobby" title="��ע" />
				<ec:column property="classes.classesNo" title="�����༶" alias="classes" />
			    <ec:column sortable="false" filterable="false" viewsDenied="xls"
					alias="id1" title="�༭">
					<html:link action="/student/toEdit1?id=${student.id}"
						onclick="return confirm('ȷ�����¸�ѧ����Ϣ��')"> 
							<%
							if (request.getSession().getAttribute("type").equals("admin")||request.getSession().getAttribute("type").equals("teacher"))
					      { out.print("<font color='blue'>�༭</font>");}
				else{
					        out.print("");
					       }
					 %>
						
						
						</html:link>
				</ec:column>
				<ec:column sortable="false" filterable="false" viewsDenied="xls"
					alias="id1" title="ɾ��">
					<html:link action="/student/delete?id=${student.id}"
						onclick="return confirm('ȷ��ɾ����ѧ����')"> 
							<%
							if (request.getSession().getAttribute("type").equals("admin")||request.getSession().getAttribute("type").equals("teacher"))
					      { out.print("<font color='blue'>ɾ��</font>");}
				else{
					        out.print("");
					       }
					 %>
						
						
						</html:link>
				</ec:column>
			</ec:row>
		</ec:table>


	</body>
</html>