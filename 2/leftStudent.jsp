<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="css/vanceleft.css" rel=stylesheet>
		<script type="text/javascript" src="./js/ext/adapter/ext/ext-base.js">
        </script>
		<script type="text/javascript" src="./js/ext/ext-all.js">
        </script>
		<script type="text/javascript"
			src="./js/ext/build/locale/ext-lang-zh_CN-min.js">
        </script>
		<link rel="stylesheet" type="text/css"
			href="./js/ext/resources/css/ext-all.css" />


		<script type="text/javascript" src="./js/fg_left.js">
        </script>

		<title>新生入学管理系统</title>
		<script language="JavaScript" type="text/JavaScript">

function showsubmenu(sid)
{
	whichEl = eval("submenu" + sid);
	imgmenu = eval("imgmenu" + sid);
	if (whichEl.style.display == "none") {
		eval("submenu" + sid + ".style.display=\"\";");
		pucker(sid);
		imgmenu.className = "menu_title2";
	} else {
		eval("submenu" + sid + ".style.display=\"none\";");
		pucker(sid);
		imgmenu.className = "menu_title";
	}
	function pucker(sid) {
		if (screen.availWidth>1024) {
			return;
		}
		var menuArr = new Array('submenu2','submenu3','submenu4','submenu5','submenu6','submenu7','submenu8');
		var menuArr2 = new Array('imgmenu2','imgmenu3','imgmenu4','imgmenu5','imgmenu6','imgmenu7','imgmenu8');
		var currentMenu = 'submenu'+sid;
		for (var i=0; i<menuArr.length; i++) {
		  	if (currentMenu != menuArr[i]) {
				document.getElementById(menuArr[i]).style.display="none";
				document.getElementById(menuArr2[i]).className="menu_title";
			}
		}
	}
	
}
top.document.title="学生登陆界面";


</script>

		<style type="text/css">
.sub_menu {
	line-height: 20px;
	height: 100%;
	text-align: left;
	background: $ mout_color;
	width: 158px;
}

.menu_title {
	background: url(images/menudown.gif);
	height: 25px;
	line-height: 25px;
	cursor: hand;
}

.menu_title2 {
	background: url(images/menuup.gif);
	height: 25px;
	line-height: 25px;
	cursor: hand;
}

.fill {
	width: 40px;
}

.leftmenu {
	
}
</style>
	</head>
	<body>

			
			<div id="messages" style="display: none"> <!-- Messages are shown when a link with these attributes are clicked: href="#messages" rel="modal"  -->
				
				<h3>3 Messages</h3>
			 
				<p>
					<strong>17th May 2009</strong> by Admin<br />
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue.
					<small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
				</p>
			 
				<p>
					<strong>2nd May 2009</strong> by Jane Doe<br />
					Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.
					<small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
				</p>
			 
				<p>
					<strong>25th April 2009</strong> by Admin<br />
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue.
					<small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
				</p>
				
				<form action="#" method="post">
					
					<h4>New Message</h4>
					
					<fieldset>
						<textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
					</fieldset>
					
					<fieldset>
					
						<select name="dropdown" class="small-input">
							<option value="option1">Send to...</option>
							<option value="option2">Everyone</option>
							<option value="option3">Admin</option>
							<option value="option4">Jane Doe</option>
						</select>
						
						<input class="button" type="submit" value="Send" />
						
					</fieldset>
					
				</form>
				
			</div> <!-- End #messages -->
			
		</div></div> <!-- End #sidebar -->

		<div class="leftmenu">
			<table cellspacing="0" cellpadding="0" width="158" align="center">


				<TR>
					<TD class=height5 id=submenu1></TD>
				</TR>

				<tr>
					<td height=42 valign=bottom>
						<img src="img/manage_title1.gif" width=158 height=39>
					</td>
				</tr>


				<tr>
					<td height=25 class=menu_title onmouseover=this.className=
						'menu_title2'; onmouseout=this.className=
						'menu_title'; background=img/title_bg_quit.gif>
						&nbsp;
						<font color="red"> <%
 	if (session.getAttribute("user") == null) {
 		out.println("尚未");
 	} else
 		out.print(session.getAttribute("user"));
 %> </font> &nbsp;已登陆&nbsp;|&nbsp;
						<a href="login.jsp" target=_parent>注销</a>
					</td>
				</tr>

				<tr>
					<td class="menu_title" id="imgmenu2" onclick="showsubmenu(2)">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="images/x_youjgl.gif" class="icon">
						&nbsp;学院信息查询
					</td>
				</tr>
				<tr>
					<td id="submenu2" style="display: none">
						<div class="sub_menu">
							<ul>
								<li>
									<a href="./collage/list.do" target="right" class="link"><span
										class="fill"></span>查看学院信息</a>

								</li>
							</ul>
						</div>
					</td>
				</tr>

				<tr>
					<td class="menu_title" id="imgmenu3" onclick="showsubmenu(3)">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="images/x_youjianj.gif" class="icon">
						&nbsp;专业信息查询
					</td>
				</tr>
				<tr>
					<td id="submenu3" style="display: none">
						<div class="sub_menu">
							<ul>
								<li>
									<a href="./professions/list.do" target="right" class="link"><span
										class="fill"></span>查询专业信息</a>
								</li>
							</ul>
						</div>
					</td>
				</tr>
				<tr>
					<td class="menu_title" id="imgmenu4" onclick="showsubmenu(4)">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="images/x_youjgl.gif" class="icon">
						&nbsp;班级信息查询
					</td>
				</tr>
				<tr>
					<td id="submenu4" style="display: none">
						<div class="sub_menu">
							<ul>
								<li>
									<a href="./classes/list.do" target="right" class="link"><span
										class="fill"></span>查询班级信息</a>
								</li>
							</ul>
						</div>
					</td>
				</tr>
				<tr>
					<td class="menu_title" id="imgmenu5" onclick="showsubmenu(5)">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="images/x_tongxml.gif" class="icon" alt="">
						课程信息
					</td>
				</tr>

				<tr>

					<td id="submenu5" style="display: none">
						<div class="sub_menu">
							<ul>
								<li>
									<a href="student/listCourse.jsp" target="right" class="link"><span
										class="fill"></span>学生选课</a>
								</li>

								<li>
									<a href="./course/list.do" target="right" class="link"><span
										class="fill"></span>查询课程信息</a>
								</li>
								<li>
									<a href="./score/listSelf1.do" target="right"><span class="fill"></span>查看选课情况</a>
								</li>
	                            <li>
									<a href="./courseArrange/list.do" target="right" class="link"><span
										class="fill"></span>课程表查询</a>
								</li>
							
				 
				</ul>
				</div>
				</td>
				</tr>

				<tr>
					<td class="menu_title" id="imgmenu6" onclick="showsubmenu(6)">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="images/x_guolsz.gif" class="icon" alt="">
						&nbsp;个人资料管理
					</td>
				</tr>
				<tr>
					<td id="submenu6" style="display: none">
						<div class="sub_menu">
							<ul>
								<li>
									<a href="./student/changePsw.do" target="right"><span
										class="fill"></span>修改登录密码</a>
								</li>


							</ul>
						</div>
					</td>
				</tr>

				<tr>
					<td class="menu_title" id="imgmenu7" onclick="showsubmenu(7)">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="images/x_gersz.gif" class="icon">
						&nbsp;课程成绩查询
					</td>
				</tr>
				<tr>
					<td id="submenu7" style="display: none">
						<div class="sub_menu">
							<ul>
								<li>
									<a href="./score/pinfen1.do" target="right" class="link"><span
										class="fill"></span>课程成绩查询</a>
								</li>
							
							</ul>
						</div>
					</td>
				</tr>

			</table>

		</div>
		<div id="left"></div>
	</body>
</html>


