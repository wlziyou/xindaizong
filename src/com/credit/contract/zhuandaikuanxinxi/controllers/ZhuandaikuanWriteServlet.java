package com.credit.contract.zhuandaikuanxinxi.controllers;

import java.util.*;
import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.credit.contract.zhuandaikuanxinxi.models.*;

public class ZhuandaikuanWriteServlet extends HttpServlet{
		

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		request.setCharacterEncoding("UTF-8");
		
		String zhuandaixieyibianhao = request.getParameter("zdkxybh");
		String jingwaijigouquancheng =request.getParameter("jwjgqc");
		
		int kuanxianqi = Integer.parseInt(request.getParameter("kxq"));
		double shouxufei = Double.parseDouble(request.getParameter("zdf"));
		
		String zuzhixingshidaima = request.getParameter("zzxs");
		String zhuandaixingshidaima = request.getParameter("zdxs");
		String jingwaijigouleibiedaima = request.getParameter("jwjglb");
		
		
		Zhuandaikuan zdk2 = new Zhuandaikuan(zhuandaixieyibianhao, jingwaijigouquancheng, kuanxianqi, shouxufei, zuzhixingshidaima, zhuandaixingshidaima, jingwaijigouleibiedaima);
		boolean isWriteInSuccess = zdk2.writeIn();
		
		
		if(isWriteInSuccess){
			response.sendRedirect("../contract_main.jsp");
		}else{
			response.sendRedirect("../contract/zhuandaikuanxinxi.jsp");
		}
	}
	
	
	

}