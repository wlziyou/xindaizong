<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" import="java.util.ArrayList" %>
<%@ page import="com.credit.contract.main.models.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
	"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html>
	
	<head>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
		<title>信贷 -合同主界面</title>
		<link rel="stylesheet" href="css/link.css" type="text/css" media="screen" >
		
		<script src="js/prototype-1.6.0.3.js" type="text/javascript" charset="utf-8">
		</script> 
		<script src="js/effects.js" type="text/javascript"></script>	
		
		<script type="text/javascript" charset="utf-8">
	//	window.document.hetong.focus();
			function qiandingxinhetong(){
				new Effect.Appear('xiangmuxuanze1');      //项目1选择出现
				new Effect.Appear('xiangmuxuanze2');     //项目2选择出现
				new Effect.DropOut('hetongxuanze1');   //合同1选择消失
				new Effect.DropOut('hetongxuanze2');   //合同2选择消失
				
			}
			function hetongxiugai(){
				new Effect.Appear('hetongxuanze1');      //合同1选择出现
				new Effect.Appear('hetongxuanze2');     //合同2选择出现		
				new Effect.DropOut('xiangmuxuanze1');  //项目1选择消失
				new Effect.DropOut('xiangmuxuanze2'); //项目2选择消失
				
			}
		</script>
		
		<script>  
  function  get()  
  {  
  	for(var   i=0;i<document.htxz.xuanze.length;i++) {
  		if(document.htxz.xuanze[i].checked) {
  			alert(document.htxz.xuanze[i].value);
  			return(document.htxz.xuanze[i].value);
  		}  
  	} 
  	
  }   
  		 </script> 
	</head>
	
	
	
	<body id="" onload="">
		<div id="frame">
			
			<div id="header">
					<div id="signoutlink">				
							<span>Welcome<span>|<a href="http://www.baidu.com">退出登录!</a>
					</div>
					<h1>信贷管理系统 <span class="module">-合同管理</span></h1> 
						
					<div id="navibar">
							<ul>
								<li class="current_tab"><a href="http://www.">合同管理</a></li>
								<li class="current_tab"><a href="http://www.">项目管理</a></li>
								<li class="current_tab"><a href="http://www.">客户管理</a></li>
								<li class="current_tab"><a href="http://www.">数据仓库</a></li>
							</ul>
					</div>
			</div>
			
	<br />
					
		
		<div id="workspace">
			<h1 class="lrfpb">合同信息</h1>
			
		
				<fieldset id="" class="">
					<input type="radio" name="hetong" onclick="qiandingxinhetong();" /> 签订新合同
					<input type="radio" name="hetong" onclick="hetongxiugai();" /> 合同信息录入修改
						</fieldset>
		
		
			<h2 class="lrfpb">客户选择<span class="bianhao">（/）</span></h2>
			<table id="kehuxuanze" >	
							<tr>
								<td>查找条件</td>
								<td colspan="2"><input type="text" name="chazhaotiaojian"></td>
								<td><input type="button" value="查找" name="chazhao"></td>
							</tr>
							<tr>
								<td>客户编号 <input type="button" value="查找" name="choose_customer" /></td>
								<td>13060063200000010</td>
								<td>客户类型 </td>
								<td>报送财政部规定会计报表的客户</td>
							</tr>
							<tr>
								<td>客户全称</td>
								<td>中国耀华玻璃有限公司</td>
								<td>执照号</td>
								<td>23599355-3</td>
							</tr>
							<tr id="four">
								<td id="first" colspan="2">
											<input type="button" value="第一个" />
											<input type="button" value="前一个" />
											<input type="button" value="后一个" />
											<input type="button" value="最后一个" />
								</td>
								<td>&nbsp;</td>
								<td><a href="servlet/DisplayDaizhongServlet"><input type="button" value="签订新合同" /></a></td>
							</tr>
			</table>
			
			<h2 class="lrfpb" id="xiangmuxuanze1">项目选择<span class="bianhao">（1/1）</span></h2>
			<table id="xiangmuxuanze2">
				<tr>
					<td>项目编号</td>
					<td>4106701001998111</td>
					<td>项目名称</td>
					<td>xiangmumingcheng</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="第一个" />
						<input type="button" value="前一个" />
						<input type="button" value="后一个" />
						<input type="button" value="最后一个" />
					</td>
					<td>&nbsp;</td>
					<td><a href="servlet/DisplayDaizhongServlet"><input type="button" value="签订新合同" /></a></td>
				</tr>
			</table>
			
			<h2 class="lrfpb" id="hetongxuanze1" style="display:none;">合同选择<span class="bianhao">（1/22）</span></h2>
			<form name="htxz">
			<table id="hetongxuanze2" style="display:none;">
				<tr>
					<td>合同编号</td>
					<td>13063520602199900004</td>
					<td>信贷品种</td>
					<td>技术改造贷款</td>
				</tr>
				<tr>
					<td>合同金额</td>
					<td>1000000.00</td>
					<td>币种</td>
					<td>人民币</td>
				</tr>
				<tr>
					<td>发送方式</td>
					<td>信用</td>
					<td>签订日期</td>
					<td>95-08-08</td>
				</tr>
				<tr>
					<td>合同系统编号</td>
					<td>&nbsp;</td>
					<td>项目编号</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="第一个" />
						<input type="button" value="前一个" />
						<input type="button" value="后一个" />
						<input type="button" value="最后一个" />
					</td>
					<td><input type="button" value="合同执行状态" /></td>
					<td><input type="button" value="执行合同" /></td>
					
				</tr>
				<tr>
					<td colspan="3">
						<fieldset>
							<input type="radio" name="xuanze" value="0" /> 合同基本信息
							<input type="radio" name="xuanze" value="1" /> 保证合同
							<input type="radio" name="xuanze" value="2" /> 抵押合同
							<input type="radio" name="xuanze" value="3" /> 质押合同
							<br />
							<input type="radio" name="xuanze" value="4" /> 用款计划
							<input type="radio" name="xuanze" value="5" /> 还款计划
							<input type="radio" name="xuanze" value="6" /> 审批情况
							<input type="radio" name="xuanze" value="7" /> 本金台帐
							<br />
							<input type="radio" name="xuanze" value="8" /> 利息台帐
							<input type="radio" name="xuanze" value="9" /> 非正常贷款
							<input type="radio" name="xuanze" value="10" /> 信用证执行情况
							<input type="radio" name="xuanze" value="11" /> 合同转贷款信息
						</fieldset>
					</td>
					<td>
					
						<input class="lrxg" onclick="get()" name="luru" type="button" value="录入" /><br />
						<input class="lrxg" name="xiugai" type="button" value="修改" />
					</td>
				</tr>	
			</table>	
			</form>		
		</div>
		
		<div class="lrfpb" id="name">
			<a href=""><input type="button" value="退出"></a>
			</div>
		
		
		<div id="footer"><p>&copy;2008 CrossCloud</p></div>
		
		</div>
		something changed
	</body>

</html>