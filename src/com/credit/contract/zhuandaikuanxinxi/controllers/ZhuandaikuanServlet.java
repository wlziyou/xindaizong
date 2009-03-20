package com.credit.contract.zhuandaikuanxinxi.controllers;

import java.util.*;
import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.credit.contract.zhuandaikuanxinxi.models.*;

public class ZhuandaikuanServlet extends HttpServlet{
			
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		Zhuandaikuan zdk1 = new Zhuandaikuan();
		ArrayList<Zhuandaikuan> allZuzhixingshi = zdk1.returnZuzhixingshi();
		ArrayList<Zhuandaikuan> allZhuandaixingshi = zdk1.returnZhuandaixingshi();
		ArrayList<Zhuandaikuan> allJingwaijigouleibie = zdk1.returnJingwaijigouleibie();
		
		
		HttpSession session = request.getSession();
		session.setAttribute("allZuzhixingshiInfo", allZuzhixingshi);
		session.setAttribute("allZhuandaixingshiInfo", allZhuandaixingshi);
		session.setAttribute("allJingwaijigouleibieInfo", allJingwaijigouleibie);
		
		
if(allZuzhixingshi == null || allZhuandaixingshi == null || allJingwaijigouleibie == null){
			response.sendRedirect("../nook.html");
		}else{
			response.sendRedirect("../contract/zhuandaikuanxinxi.jsp");
		}
	}
	
		
	

}