package com.credit.contract.main.models;

import java.sql.*;
import java.util.ArrayList; 


public class Daizhong{
	
	// 2. load JDBC driver
	static{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<Daizhong> returnDaizhong(){
		
		ArrayList<Daizhong> list = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null; 
		
		try{
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xindai","user","netcop");
			ps = conn.prepareStatement("SELECT * FROM c04xdpz");
			rs = ps.executeQuery();// SELECT
			
			list = new ArrayList();
			
			while(rs.next()){
			/*
				String username = rs.getString("username");
				String password = rs.getString("password");
				Account acc = new Account(username, password);
				list.add(acc);*/
				list.add(new Daizhong(rs.getString("b04pzmc"), rs.getString("b04httbk")));
			}
			
			rs.close();
			ps.close();
			conn.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
				
		return list;
		
	}
	
	
	
	
	
	
	public Daizhong(){}
	public Daizhong(String pinzhongmingcheng, String hetongbiaodan){
		this.pinzhongmingcheng = pinzhongmingcheng;
		this.hetongbiaodan = hetongbiaodan;		
	}
	
	public void setPinzhongmingcheng(String pinzhongmingcheng){
		this.pinzhongmingcheng = pinzhongmingcheng;
	}
	
	public String getPinzhongmingcheng(){
		return pinzhongmingcheng;
	}
	
	public void setHetongbiaodan(String hetongbiaodan){
		this.hetongbiaodan = hetongbiaodan;
	}
	
	public String getHetongbiaodan(){
		return hetongbiaodan;
	}
	
	public int getPinzhongdaima(){
		return pinzhongdaima;
	}
	
	private String pinzhongmingcheng = "";
	private String hetongbiaodan = "";
	private int pinzhongdaima = 0;
}

	
