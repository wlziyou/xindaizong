package com.credit.contract.fromcontract.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.credit.contract.fromcontract.models.Guaranteec;

public class DeleteServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String f61sgbh = request.getParameter("f61sgbh");
		
		Guaranteec acc = new Guaranteec(f61sgbh);
		
		if( acc.deleteBZHT()){
			response.sendRedirect("../contract/xindai_BZHT.html");
		}
		else
		{
			response.sendRedirect("../contract/nook.html");
		}
	}

}
