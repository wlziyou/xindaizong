<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" import="java.util.ArrayList" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
	"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
	<title>信贷-借款合同</title>
	<link rel="stylesheet" href="../css/link.css" type="text/css" media="screen" title="no title" charset="utf-8">
	<script language="javascript" src="../js/cal2.js"> 
//more javascript from http://Www.VeryAsp.Net
</script> 
 <script language="javascript" src="../js/cal_conf2.js"></script>
</head>
<body>
	<form action="../servlet/RegisterServlet" method="post" accept-charset="utf-8" name="sampleform">
		
	
	
	
	<div id="frame">
		<div id="header">
			<div id="signoutlink">
				<span>Welcome !</span> | <a href="http://www.google.com">退出登录!</a>
			</div>
       		 <h1>信贷管理信息系统 <span class="module">- 合同信息</span></h1>
       		 <div id="navibar">
       		 	
       		 	<span id="s">合同系统编码:</span>
       		 </div>
       		
        </div>
        <div id="workspace">
        	<h2 class ="lrfpb">客户标识信息</h2>
             <table>
        		<tr>
        			<td>客户全称：</td>
                </tr>
                <tr>
             		<td>项目全称：</td>
             	</tr>
             </table>
             <h2 class ="lrfpb">合同信息</h2>
             <table>
        		<tr>
        			<td>借款合同编号：</td>
                	<td colpspan="3"><input type="text" name="f51sgbh"></td>
                	<td>借款金额：</td>
                	<td colpspan="3"><input type="text"name="f51je"></td>
                </tr>
                <tr>
             		<td>贷种代码：</td>
             		
             		<td>贷种名称：</td>
             	</tr>
             
             	<tr>
        	 		<td>币种代码：</td>
        	 	  
				     <td>币种：</td>  
                </tr>
			   <tr>
        	 		<td>发放方式：</td>
        	 	    		
							<td colspan="3">
							<input type="checkbox" name="fruit" value = "1" >信用贷款
							<input type="checkbox" name="fruit" value = "2" >抵押贷款
							<input type="checkbox" name="fruit" value = "3" >质押贷款
							<input type="checkbox" name="fruit" value = "4" >保证贷款
							</td>
						
						</form>
				
				</tr>
				<tr>
        			<td>借款利率：</td>
                	<td colpspan="3"><input type="text" name="f51jkll"></td>
                	<td>挪用利率：</td>
                	<td colpspan="3"><input type="text" name="f51nyll"></td>
                </tr>
                <tr>
        			<td>逾期利率：</td>
                	<td colpspan="3"><input type="text" name="f51yqll"></td>
                	<td>恶意逾期利率：</td>
                	<td colpspan="3"><input type="text" name="f51eyyq"></td>
                </tr>
                <tr>
        			<td>参加贷款保险：</td>
                	<td colpspan="3"><input type="text" name="f51bxqk"></td>
                	<td>><a href="javascript:showCal('Calendar1')"> 合同签订日期：</a></td>
                	<td colpspan="3"><input type="text" name="f51qdr" size=20></td>
                </tr>	
			  </table>
			  <h2 class ="lrfpb">共同申请人情况</h2>
             <table>
        		<tr>
        			<td>序号</td>
        		
        	        <td>共同申请人总数：</td>
             	</tr>
             	<tr>
             		<td></td>
             	
                    <td>共同申请人编号：<input type="text"></td>
                  
                     <td colpspan="3">
            			<input type="submit" value="选客户"> 
            	   </td>
             	</tr>
             	<tr>
             		<td></td>
             	
                    <td>共同申请人编号：<input type="text"></td>
                    <td colpspan="3">
            			<input type="submit" value="选客户"> 
            	   </td>
             	</tr>
             	<tr>
             		<td>o</td>
             
                    <td colpspan="3">
            			<input type="submit" value="增加"> 
            			&nbsp
            			<input type="submit" value="删除">
            			&nbsp
            		    <input type="submit" value="上翻">
            		    &nbsp
            		    <input type="submit" value="下翻">
            		</td>
                    
             	</tr>
             	
             </table>
			  <h3 class="lrfpb">合同授信用途</h3>
             <textarea  rows="3" cols="114" name="f51yt"></textarea>
             <h3 class="lrfpb">其他违约责任</h3>
             <textarea  rows="3" cols="114" name="f51wyzr"></textarea>
              <h3 class="lrfpb">备注（合并、转贷、补充文本、信用证编号等需要特殊说明的情况）</h3>
             <textarea  rows="3" cols="114" name="f51bz"></textarea>
              <h3 class="lrfpb">并帐贷款标识信息</h3>
              <td colpspan="3"> 
        	 	       
							<input type="radio" name="f51bzbs" value = "0">非并帐贷款
							<input type="radio" name="f51bzbs" value = "1">违规绕规模并帐
							<input type="radio" name="f51bzbs" value = "2">帐外帐并帐
							<input type="radio" name="f51bzbs" value = "3">"三部并帐"
							<input type="radio" name="f51bzbs" value = "4">未并帐违规贷款<br>
					
			</td>
        </div>
        <div class ="lrfpb">
        <input type="submit" value="确定">
         <a href="../contract_main.jsp"><input type="button" value="退出" /><a>
        </form>
        </div>
        <div id="footer">
        	<p>&copy 2009 CloudCross</p>
        </div>
	</div>
</body>

</html>