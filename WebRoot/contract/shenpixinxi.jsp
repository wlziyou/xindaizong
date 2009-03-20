<%@ page language="java" pageEncoding="UTF-8"  contentType="text/html;charset=UTF-8"  import="java.util.ArrayList" %>
<%@ page import="com.credit.contract.main.models.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
	"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html>
	
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
		<title>信贷 -审批信息</title>
		<link rel="stylesheet" href="../css/link.css" type="text/css" media="screen" >
	</head>
	
	
	
	<body id="" onload="">
		<div id="frame">
			
			<div id="header">
					<div id="signoutlink">				
							<span>&quot;Welcome<span>|<a href="http://www.baidu.com">退出登录!</a>
					</div>
					<h1>信贷管理系统 <span id="hetongguanli">-合同管理</span></h1> 
			</div>
			
	<br />
					
		
		<div id="workspace">
			<h1 class="lrfpb">审批信息</h1>
		
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
			
			<h2 class="lrfpb">审批、经办信息</h2>
				<form action="servlet/ShenpiServlet" method="post">
			<table id="spjbjg" >
			
				<tr>
					<td colspan="2">&nbsp;</td>
					<td>经办机构</td>
					<td>上级机构</td>
					<td>上级机构</td>
					<td>上级机构</td>
				</tr>
				<tr>
					<td colspan="2">机构名称</td>
					<td><input type="text" name="jgmc_0" /></td>
					<td><input type="text" name="jgmc_1" /></td>
					<td><input type="text" name="jgmc_2" /></td>
					<td><input type="text" name="jgmc_3" /></td>
				</tr>
				<tr>
					<td rowspan="6">审批人</td>
					<td>经办人</td>
					<td><input type="text" name="jbr_0" /></td>
					<td><input type="text" name="jbr_1" /></td>
					<td><input type="text" name="jbr_2" /></td>
					<td><input type="text" name="jbr_3" /></td>
				</tr>
				<tr>
					<td>信贷（储蓄）部门负责人</td>
					<td><input type="text" name="xdfzr_0" /></td>
					<td><input type="text" name="xdfzr_1" /></td>
					<td><input type="text" name="xdfzr_2" /></td>
					<td><input type="text" name="xdfzr_3" /></td>
				</tr>
				<tr>
					<td>计划部门负责人</td>
					<td><input type="text" name="jhfzr_0" /></td>
					<td><input type="text" name="jhfzr_1" /></td>
					<td><input type="text" name="jhfzr_2" /></td>
					<td><input type="text" name="jhfzr_3" /></td>
				</tr>
				<tr>
					<td>财会部门负责人</td>
					<td><input type="text" name="ckfzr_0" /></td>
					<td><input type="text" name="ckfzr_1" /></td>
					<td><input type="text" name="ckfzr_2" /></td>
					<td><input type="text" name="ckfzr_3" /></td>
				</tr>
				<tr>
					<td>国际业务部门负责人</td>
					<td><input type="text" name="gjywfzr_0" /></td>
					<td><input type="text" name="gjywfzr_1" /></td>
					<td><input type="text" name="gjywfzr_2" /></td>
					<td><input type="text" name="gjywfzr_3" /></td>
				</tr>
				<tr>
					<td>机构负责人</td>
					<td><input type="text" name="jgfzr_0" /></td>
					<td><input type="text" name="jgfzr_1" /></td>
					<td><input type="text" name="jgfzr_2" /></td>
					<td><input type="text" name="jgfzr_3" /></td>
				</tr>
				<tr>
					<td colspan="2">现经办人</td>
					<td><input type="text" name="xjbr" /></td>
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