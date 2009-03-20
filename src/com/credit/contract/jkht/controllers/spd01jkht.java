package com.credit.contract.jkht.controllers;

import java.util.*;
import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.credit.contract.jkht.models.*;

public class spd01jkht extends HttpServlet{

	public void doPost(HttpServletRequest request, 
						HttpServletResponse response) 
						throws IOException, ServletException{
		System.out.println("-------into Servlet----");				
		System.out.println("-------into Servlet----");	
							
		// 1. receive data from browser
		String f51sgbh = request.getParameter("f51sgbh");
	    double f51je   = Double.parseDouble(request.getParameter("f51je"));
	    double f51jkll = Double.parseDouble(request.getParameter("f51jkll"));
	    double f51nyll = Double.parseDouble(request.getParameter("f51nyll"));
	    double f51yqll = Double.parseDouble(request.getParameter("f51yqll"));
	    double f51eyyq = Double.parseDouble(request.getParameter("f51eyyq"));
	    String f51bxqk = request.getParameter("f51bxqk");
	    String f51qdr  = request.getParameter("f51qdr");  
	    String f51yt   = request.getParameter("f51yt");
	    String f51wyzr = request.getParameter("f51wyzr");
	    String f51bz   = request.getParameter("f51bz");
	    String f51bzbs = request.getParameter("f51bzbs");
	    
	     
	    
	    
	    
	    
	    
	    
		// 2. send data to model
		System.out.println("-------Servlet----");
		Account acc = new  Account(f51sgbh,f51je,f51jkll,f51nyll,f51yqll,f51eyyq,f51bxqk,f51qdr,f51yt,f51wyzr,f51bz,f51bzbs);
		boolean isRegSuccess = acc.signUp();
		
		// 3. find a view 
		if(isRegSuccess){
			response.sendRedirect("ok.html");
		}else{
			response.sendRedirect("/nook.html");
		}
							
							
	}
	
	
}

