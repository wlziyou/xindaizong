package com.credit.contract.main.controllers;

import java.util.*;
import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.credit.contract.main.models.*;

public class DisplayDaizhongServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, 
						HttpServletResponse response) 
						throws IOException, ServletException{
							
		// 1. receive data from browser
	
		
		// 2. send data to model
		
		Daizhong dz = new Daizhong();
		ArrayList<Daizhong> allDaizhongs= dz.returnDaizhong();
		
		// 3. Session Space
		
		HttpSession session = request.getSession();
		session.setAttribute("allDaizhongsInfo", allDaizhongs);
		
		
		
		if(allDaizhongs == null){
			response.sendRedirect("../nook.html");
		}else{
			response.sendRedirect("../contract/xuanzedaizhong.jsp");
		}
		
	}
	
}			
		
		

	