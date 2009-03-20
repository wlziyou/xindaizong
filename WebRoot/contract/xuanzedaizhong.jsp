<%@ page language="java" pageEncoding="UTF-8"  contentType="text/html;charset=UTF-8" import="java.util.ArrayList" %>
<%@ page import="com.credit.contract.main.models.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
	"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html>
	
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
		<title>信贷 -选择贷种</title>
		<link rel="stylesheet" href="../css/link.css" type="text/css" media="screen" >
	</head>
	
	
	
	<body id="" onload="">
		<div id="frame">
			
			<div id="header">
					<div id="signoutlink">				
							<span>&quot;Welcome<span>|<a href="http://www.baidu.com">退出登录!</a>
					</div>
					<h1>信贷管理系统 <span class="module">-合同管理</span></h1> 
			</div>
			
	<br />
					
		
		<div id="workspace">
			<h1 class="lrfpb">选择贷种</h1>
			<form id="xzdz" action="../servlet/XuanzeDaizhongServlet" method="post">
				<ul>
					<li><label>是否展期合同</label>
						<input type="radio" name="zqht" value="1" />是
						<input type="radio" name="zqht" value="0" />否
					</li>
					<br />
					<br />
					<br />
						
					<li><label>信贷品种</label>
						<select name="xdpz">
						<% 
						ArrayList<Daizhong> list = (ArrayList<Daizhong>)session.getAttribute("allDaizhongsInfo");
						
							
						for(Daizhong a : list ){
out.println("<option value=\"" + a.getHetongbiaodan()+"\">"+a.getPinzhongmingcheng()+"</option>");
								}			
						%>
						</select>					
					</li>
				</ul>
				
			
		</div>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		
		<div class="lrfpb" id="name">
			<input type="submit" value="确定">	
			<a href="../contract_main.jsp"><input type="button" value="退出"></a>			
		</div>
		</form>	
		
		
		<div id="footer"><p>&copy;2008 CrossCloud</p></div>
		
		</div>
		something changed
	</body>

</html>