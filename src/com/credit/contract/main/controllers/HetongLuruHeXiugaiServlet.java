package com.credit.contract.main.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HetongLuruHeXiugaiServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		String xuanze = request.getParameter("xuanze");
		System.out.println("----------------->"+xuanze+"<-----------------");
		
	//	int hetongluru = Integer.parseInt(request.getParameter("xuanze"));
		
	/*	switch(hetongluru){
		case 0: response.sendRedirect("../contract/nook.html");//主合同基本信息
				break;
		case 1: response.sendRedirect("../contract/xindai_BZHT.html");//保证合同
				break;
		case 2: response.sendRedirect("../contract/nook.html");//抵押合同
				break;
		case 3: response.sendRedirect("../contract/nook.html");//质押合同
				break;
		case 4: response.sendRedirect("../contract/nook.html");//用款计划
				break;
		case 5: response.sendRedirect("../contract/nook.html");//还款计划
				break;
		case 6: response.sendRedirect("../contract/shenpixinxi.jsp");//审批信息
				break;
		case 7: response.sendRedirect("../contract/benjintaizhang.html");//本金台帐
				break;
		case 8: response.sendRedirect("../contract/nook.html");//利息台帐
				break;
		case 9: response.sendRedirect("../contract/nook.html");//非正常贷款
				break;
		case 10: response.sendRedirect("../contract/nook.html");//信用证执行情况
				break;
		case 11: response.sendRedirect("servlet/ZhuandaikuanServlet");//合同转贷款信息
				break;
		}
		
		*/
	}

}
