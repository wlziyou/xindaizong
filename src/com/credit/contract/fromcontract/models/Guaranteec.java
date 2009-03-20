package com.credit.contract.fromcontract.models;

import java.util.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;


public class Guaranteec{
	
	
		
	
	
	
	
	
	
	
	
	
	static{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
		
	public boolean insertIntoBZHT(){
		
		Connection conn = null;
		PreparedStatement ps = null;
		int result = 0;
		
		
		try{
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xindai","user","netcop");
			ps = conn.prepareStatement("INSERT INTO d61bz VALUES(  ?, ?, ?, ?, ?, ?, ?)");
			//ps.setString(1,f61htbh);
			//ps.setString(2,f61chth );
			ps.setString(1,f61sgbh );
			ps.setString(2,f61bzbh );
			ps.setString(3,f61bzfl );
			ps.setDouble(4,f61bzje );
			ps.setString(5,f61wyzr );
			ps.setDate(6,java.sql.Date.valueOf(f61qdrq.replace('/','-'))); 
			ps.setString(7,f61xztk );
			result = ps.executeUpdate(); // INSERT DELETE UPDATE
			ps.close();
			conn.close();
			
					
		}catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			try{
				if(ps != null){ps.close();ps = null;}
			}
			catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			try{
				if(conn != null){conn.close();conn = null;}
			}
			catch(SQLException e){
			e.printStackTrace();
		}
		}
			
		}
		return result==1;
		
}
	
	
	
	





        String sgbh = null;
	
	
		public Guaranteec returnInfo(){
		
		Guaranteec Info = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null; 
		
		System.out.println(f61sgbh + "h123213erer");
		sgbh = f61sgbh;
		try{
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xindai","user","netcop");
			ps = conn.prepareStatement("SELECT * FROM d61bz where f61sgbh=?");
			ps.setString(1,f61sgbh );

			rs = ps.executeQuery();// SELECT
			
			System.out.println(f61sgbh + "after");
			while(rs.next()){
				System.out.println("in sql =============");
				System.out.println("SQL---" + rs.getString("f61sgbh"));
				Info=new Guaranteec(/*rs.getString("f61htbh"), rs.getString("f61chth"),*/rs.getString("f61sgbh"),rs.getString("f61bzbh"),rs.getString("f61bzfl"),rs.getDouble("f61bzje"),rs.getString("f61wyzr"),rs.getString("f61qdrq"),rs.getString("f61xztk"));
			}

		}catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			try{
				if(rs != null){rs.close();rs = null;}
			}
			catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			try{
				if(ps != null){ps.close();ps = null;}
			}
			catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			try{
				if(conn != null){conn.close();conn = null;}
			}
			catch(SQLException e){
				e.printStackTrace();
			}
		}
		}
			
		}
				
		return Info;
		
	}
		
	
	
	
	
		public boolean upDateBZHT(){
		
		Connection conn = null;
		PreparedStatement ps = null;
		int resu = 0;
		
		
		try{
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xindai","user","netcop");
			ps = conn.prepareStatement("UPDATE d61bz SET f61sgbh=?,f61bzbh=?,f61bzfl=?,f61bzje=?,f61wyzr=?,f61qdrq=?,f61xztk=? WHERE f61sgbh =112");
			
			//ps.setString(1,f61htbh);
			//ps.setString(2,f61chth );
			ps.setString(1,f61sgbh );
			ps.setString(2,f61bzbh );
			ps.setString(3,f61bzfl );
			ps.setDouble(4,f61bzje );
			ps.setString(5,f61wyzr );
			ps.setDate(6,java.sql.Date.valueOf(f61qdrq.replace('/','-'))); 
			ps.setString(7,f61xztk );
			
			resu = ps.executeUpdate(); // INSERT DELETE UPDATE
			
					
		}catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			try{
				if(ps != null){ps.close();ps = null;}
			}
			catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			try{
				if(conn != null){conn.close();conn = null;}
			}
			catch(SQLException e){
			e.printStackTrace();
		}
		}
			
		}
		return resu==1;
		
		
}
		
		
		
		public boolean deleteBZHT(){
			
			Connection conn = null;
			PreparedStatement des = null;
			int resu = 0;
			
			
			try{
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xindai","user","netcop");
				des = conn.prepareStatement("DELETE d61bz WHERE f61sgbh=");
				//ps.setString(1,f61htbh);
				//ps.setString(2,f61chth );
				des.setString(1,f61sgbh );
				resu = des.executeUpdate(); // INSERT DELETE UPDATE
				
						
			}catch(SQLException e){
				e.printStackTrace();
			}
			finally{
				try{
					if(des != null){des.close();des = null;}
				}
				catch(SQLException e){
				e.printStackTrace();
			}
			finally{
				try{
					if(conn != null){conn.close();conn = null;}
				}
				catch(SQLException e){
				e.printStackTrace();
			}
			}
				
			}
			return resu==1;
			
	}
	
	
	
	
	
	
	
	
	
		
	public Guaranteec(){}
	
	public Guaranteec( String f61sgbh ){
		this.f61sgbh = f61sgbh;
	}
	

	
	public Guaranteec( String f61sgbh, String f61bzbh, String f61bzfl, double f61bzje, String f61wyzr, String f61qdrq, String f61xztk){
		
		//this.f61htbh = f61htbh;
		//this.f61chth = f61chth;
		this.f61sgbh = f61sgbh;
		
		this.f61bzbh = f61bzbh;
		this.f61bzfl = f61bzfl;
		this.f61bzje = f61bzje;
		
		this.f61wyzr = f61wyzr;
		this.f61qdrq = f61qdrq;
		this.f61xztk = f61xztk;

	}

	/*public void setHtbh(String f61htbh){
		this.f61htbh = f61htbh;
	}
	
	public String getHtbh(){
		return f61htbh;		
	}
	
	public void setChtxh(String f61chth){
		this.f61chth = f61chth;
	}
	
	public String getChtxh(){
		return f61chth;
	}
	*/
	public void setBzhtsgbh(String f61sgbh){
		this.f61sgbh = f61sgbh;
	}
	
	public String getBzhtsgbh(){
		return f61sgbh;
	}
	
	public void setBzrbh(String f61bzbh){
		this.f61bzbh = f61bzbh;
	}
	
	public String getBzrbh(){
		return f61bzbh;		
	}
	
	public void setBzrfl(String f61bzfl){
		this.f61bzfl = f61bzfl;
	}
	
	public String getBzrfl(){
		return f61bzfl;
	}
	
	public void setBzje(double f61bzje){
		this.f61bzje = f61bzje;
	}
	
	public double getBzje(){
		return f61bzje;
	}
	
	public void setWyzr(String f61wyzr){
		this.f61wyzr = f61wyzr;
	}
	
	public String getWyzr(){
		return f61wyzr;		
	}
	
	public void setQdrq(String f61qdrq){
		this.f61qdrq = f61qdrq;
	}
	
	public String getQdrq(){
		return f61qdrq;
	}
	
	public void setBzxhtk(String f61xztk){
		this.f61xztk = f61xztk;
	}
	
	public String getBzxztk(){
		return f61xztk;
	}
	
	
	
	
	private String f61htbh = null;
	private String f61chth = null; 
	private String f61sgbh = null;
	private String f61bzbh = null;
	private String f61bzfl = null;
	private double f61bzje = 0.0;
	private String f61wyzr = null; 
	private String f61qdrq = null;
	private String f61xztk = null;
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	