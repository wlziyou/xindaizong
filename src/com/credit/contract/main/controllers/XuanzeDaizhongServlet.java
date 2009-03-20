package com.credit.contract.main.controllers;

import java.util.*;
import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.credit.contract.main.models.*;

public class XuanzeDaizhongServlet extends HttpServlet{

	public void doPost(HttpServletRequest request, 
						HttpServletResponse response) 
						throws IOException, ServletException{
					
		request.setCharacterEncoding("UTF-8");
		// 1. receive data from browser
		String shifouzhanqi = request.getParameter("zqht");
		String xindaipinzhong = request.getParameter("xdpz");
		
		//参数为字符串时不能用switch-case语句   只能用if-else进行判断
		
		if(xindaipinzhong.equals("d.jkht")){
			response.sendRedirect("../contract/jkht.jsp");//借款合同
		}else if(xindaipinzhong.equals("d.cdxy")){
			response.sendRedirect("../nook.html");//承兑协议
		}else if(xindaipinzhong.equals("d.dbxy")){
			response.sendRedirect("../nook.html");//出具保函协议
		}else if(xindaipinzhong.equals("d.txht")){
			response.sendRedirect("../nook.html");//贴现合同
		}else if(xindaipinzhong.equals("d.xyzxx")){
			response.sendRedirect("../nook.html");//信用证信息
		}else{
			response.sendRedirect("../nook.html");//展期协议
		}
		
		
	
		
		// 2. send data to model
		
		
	}
	
}		
		
		

	