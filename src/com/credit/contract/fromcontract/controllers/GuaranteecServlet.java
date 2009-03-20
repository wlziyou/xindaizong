package com.credit.contract.fromcontract.controllers;

import javax.servlet.*;
import javax.servlet.http.*;

import java.util.*;
import java.io.*;

import com.credit.contract.fromcontract.models.*;

public class GuaranteecServlet extends HttpServlet{

	public void doPost(HttpServletRequest request, 
						HttpServletResponse response) 
						throws IOException, ServletException{
								
		//  receive data from browser
		//String f61htbh = request.getParameter("f61htbh");
		
		//String f61chth = request.getParameter("f61chth");
		
		String f61sgbh = request.getParameter("f61sgbh");
		
		String f61bzbh = request.getParameter("f61bzbh");
		
		String f61bzfl = request.getParameter("f61bzfl");
		
		double f61bzje =Double.parseDouble(request.getParameter("f61bzje"));
		
		String f61wyzr = request.getParameter("f61wyzr");
		
		String f61qdrq = request.getParameter("f61qdrq"); 
		
		String f61xztk = request.getParameter("f61xztk");
		
		
		//  send data to model
		Guaranteec acc = new Guaranteec(/*f61htbh, f61chth,*/ f61sgbh, f61bzbh, f61bzfl, f61bzje, f61wyzr, f61qdrq, f61xztk);
		
		//  find a view
		if(acc.upDateBZHT()||acc.insertIntoBZHT()){
			response.sendRedirect("../contract/xindai_xuanzeBZHT.html");
		}else{
			response.sendRedirect("../contract/nook.html");
		}
							
							
	}
	
	
}