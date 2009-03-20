package com.credit.contract.benjintaizhang.controllers;

import java.util.*;
import java.io.*;

import java.text.SimpleDateFormat;
import java.text.ParseException;

import javax.servlet.*;
import javax.servlet.http.*;

import com.credit.contract.benjintaizhang.models.*;

public class AddServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws IOException,ServletException{

		try{	
			// 1.receive data from browser
			int f85zyxh = Integer.parseInt(request.getParameter("f85zyxh"));
			float f85fse = Float.parseFloat(request.getParameter("f85fse"));
			Date f85rq = new SimpleDateFormat("yyy-MM-dd").parse(request.getParameter("f85rq")); 
			
			GregorianCalendar calendar = new GregorianCalendar(); 
			calendar.setTime(f85rq);
			
			int year = calendar.get(Calendar.YEAR);
			int month = calendar.get(Calendar.MONTH);
			int day = calendar.get(Calendar.DAY_OF_MONTH);
	
			
			// 2.send data to model                               
			Bjtz bj = new Bjtz(f85zyxh,f85fse,year,month,day);
			
				boolean ii = bj.baoCun();
					
				// 3. find a view
				if(ii){
					response.sendRedirect("../ok.html");
				}else{
					response.sendRedirect("../nook.html");
				}
			}catch(ParseException e){
					e.printStackTrace();
				}
}			

}
