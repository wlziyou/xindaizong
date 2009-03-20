<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" import="java.util.ArrayList" %>
<%@ page import="com.credit.contract.zhuandaikuanxinxi.models.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
	"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html>
	
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
		<title>信贷 -合同转贷款信息</title>
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
			<h1 class="lrfpb">合同转贷款信息</h1>
		
			<h2 class="lrfpb">合同（协议）标识信息</h2>
			<table id="htxybsxx">	
							<tr>
								<td>客户全称</td>
								<td colspan="3">（静态文本）</td>
							</tr>
							<tr>
								<td>营业执照号</td>
								<td colspan="3">（静态文本）</td>
							</tr>
							<tr>
								<td>项目编号</td>
								<td>（静态文本）</td>
								<td>项目名称</td>
								<td>（静态文本）</td>
							</tr>
							<tr>
								<td>贷种</td>
								<td>（静态文本）</td>								
								<td>币种</td>
								<td>（静态文本）</td>
							</tr>
							<tr>
								<td>借款金额</td>
								<td>（静态文本）</td>								
								<td>签订日期</td>
								<td>（静态文本）</td>
							</tr>
							<tr>
								<td>合同（协议）编号</td>
								<td>（静态文本）</td>								
								<td>合同系统编号</td>
								<td>（静态文本）</td>
							</tr>
			</table>
			
			<h2 class="lrfpb">转贷款信息</h2>
			<form action="../servlet/ZhuandaikuanWriteServlet" method="post">
			<table id="zdkxx" >
				<tr>
					<td>转贷协议编号</td>
					<td><input type="text" name="zdkxybh" /></td>
				</tr>
				<tr>
					<td>组织形式</td>
					<td>
		<%	ArrayList<Zhuandaikuan> list1 = (ArrayList<Zhuandaikuan>) session.getAttribute("allZuzhixingshiInfo");
		for(Zhuandaikuan a : list1){	
		out.println("<input type='radio' name='zzxs' value=\""+ a.getZuzhixingshidaima() +"\" />"+ a.getZuzhixingshihanyi() );		
	}
		
		%>
						
					</td>
				</tr>
				<tr>
					<td>转贷形式</td>
					<td>
		<% ArrayList<Zhuandaikuan> list2 = (ArrayList<Zhuandaikuan>) session.getAttribute("allZhuandaixingshiInfo"); 
		for(Zhuandaikuan a : list2){
			out.println("<input type='radio' name='zdxs' value=\""+ a.getZhuandaixingshidaima()+ "\" />" + a.getZhuandaixingshihanyi() );
		}
		%>						
					</td>
				</tr>
				<tr>
					<td>境外机构类别</td>
					<td>
						<% 
		ArrayList<Zhuandaikuan> list3 = (ArrayList<Zhuandaikuan>) session.getAttribute("allJingwaijigouleibieInfo");
						
		for(Zhuandaikuan a : list3){
			out.println("<input type='radio' name='jwjglb' value=\"" + a.getJingwaijigouleibiedaima() + "\" />" + a.getJingwaijigouleibiehanyi() );
		}
						%>
					</td>
				</tr>
				<tr>
					<td>境外机构全称</td>
					<td><input type="text" name="jwjgqc" /></td>
				</tr>
				<tr>
					<td>宽限期</td>
					<td><input type="text" name="kxq" />&nbsp;月</td>
				</tr>
				<tr>
					<td>转贷费</td>
					<td><input type="text" name="zdf" />&nbsp;元</td>
				</tr>
			</table>
			
			
		</div>
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