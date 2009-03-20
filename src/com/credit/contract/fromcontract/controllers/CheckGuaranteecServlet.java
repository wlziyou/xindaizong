package com.credit.contract.fromcontract.controllers;

import javax.servlet.*;
import javax.servlet.http.*;

import java.util.*;
import java.io.*;

import com.credit.contract.fromcontract.models.*;

public class CheckGuaranteecServlet extends HttpServlet{

	public void doPost(HttpServletRequest request, 
						HttpServletResponse response) 
						throws IOException, ServletException{
								
		//  receive data from browser
		//String f61htbh = request.getParameter("f61htbh");
		
		//String f61chth = request.getParameter("f61chth");
		
		String f61sgbh = request.getParameter("f61sgbh");
		System.out.println(f61sgbh + "---jjjjjjjjjj");
		
		//  send data to model
		
		Guaranteec acc = new Guaranteec(f61sgbh);
		
		Guaranteec theGuaranteec= acc.returnInfo();
		
		
		// Session Space
		HttpSession session = request.getSession();
		
		session.setAttribute("theGuaranteecinfo", theGuaranteec);
		
		//  find a view
		System.out.println("fdfdfd");
		
		/*for( int i = 0; i < theGuaranteec.size(); i ++ ){
			Guaranteec g = (Guaranteec)theGuaranteec.get(i);
			System.out.println(g.getBzhtsgbh());
			System.out.println(i);
		}*/
		
		if( theGuaranteec == null || theGuaranteec.equals("")){
			response.sendRedirect("../contract/nook.html");
		}else{
			response.sendRedirect("../xindai-BZHT.html");
		}
							
							
	}
	
	
}