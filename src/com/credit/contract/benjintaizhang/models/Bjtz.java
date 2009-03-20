package com.credit.contract.benjintaizhang.models;

import java.util.*;
import java.sql.*;

import java.text.SimpleDateFormat;
import java.text.ParseException;

public class Bjtz{
	static{
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
			}catch(ClassNotFoundException e){
				e.printStackTrace();
			}
	}
		
	public boolean baoCun(){

		Connection conn = null;
		PreparedStatement ps = null;
		int result = 0;	
		
		try{
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XINDAI","system","netcop");
			
			ps = conn.prepareStatement("INSERT INTO d85bjtext VALUES(?,?,?)");
			
			ps.setInt(1,f85zyxh);
			ps.setFloat(2,f85fse);
			java.sql.Date sd= new java.sql.Date(f85rq.getTime());
			ps.setDate(3,sd);

			

			result = ps.executeUpdate();
			
			ps.close();
			conn.close();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return result ==1;
	}
	
	public Bjtz(){}
	public Bjtz(int f85zyxh, float f85fse, int year, int month, int day){
		
		this.f85zyxh = f85zyxh;
		this.f85fse = f85fse;
	
		GregorianCalendar calendar = new GregorianCalendar(year,month-1,day); 
	
		f85rq = calendar.getTime();
	}
	public void setF85zyxh(int f85zyxh){
		this.f85zyxh = f85zyxh;
	}
	public int getF85zyxh(){
		return f85zyxh;
	}
	public void setF85fse(float f85fse){
		this.f85fse = f85fse;
	}
	public float getF85fse(){
		return f85fse;
	}
	public void setF85rq(java.util.Date f85rq){
		this.f85rq = f85rq;
	}
	public java.util.Date getF85rq(){
		return f85rq;
	}
	private int f85zyxh = 0;
	private float f85fse = 0;
	private java.util.Date f85rq = null;	
}