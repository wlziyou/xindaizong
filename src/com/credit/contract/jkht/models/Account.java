package com.credit.contract.jkht.models;

// 1. import package
import java.sql.*;
import java.io.*;
import java.util.Date;






public class Account{
	
	// 2. load JDBC driver
	static{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	
	
			
	
	
	
	
	public boolean signUp(){
		
		Connection conn = null;
		PreparedStatement ps = null;
		int resu = 0;
		
		// 3. Connection
		try{
	
			
			conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.1.180:1521:xindai","user","netcop");
			ps = conn.prepareStatement("INSERT INTO d51ht VALUES(TRAccID_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? ,?)");
		    ps.setString(1 ,f51sgbh);
		    ps.setDouble(2 ,f51je);
	        ps.setDouble(3 ,f51jkll);
	    	ps.setDouble(4 ,f51nyll);
     		ps.setDouble(5 ,f51yqll);
			ps.setDouble(6 ,f51eyyq);
			ps.setString(7 ,f51bxqk);
			ps.setDate(8,java.sql.Date.valueOf(f51qdr.replace('/','-')));
			ps.setString(9 ,f51yt);
			ps.setString(10 ,f51wyzr);
			ps.setString(11 ,f51bz);
			ps.setString(12 ,f51bzbs);
			
			
			
			
			
			
			resu= ps.executeUpdate(); // INSERT DELETE UPDATE
			ps.close();
			conn.close();
			
					
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		return resu ==1;
	
		
		
		
	}
	
	
	
	public Account(){}
	public Account( String f51sgbh ,
	    		    double f51je ,
		            double f51jkll ,
	                double f51nyll ,
	                double f51yqll ,
	                double f51eyyq ,
	                String f51bxqk ,
	                String f51qdr,
                    String f51yt ,
	                String f51wyzr ,
	                String f51bz ,
	                String f51bzbs 
	                
	                
	     ){
		            this.f51sgbh = f51sgbh;  
	    		    this.f51je   = f51je;
		            this.f51jkll = f51jkll;
	                this.f51nyll = f51nyll;
	                this.f51yqll = f51yqll;
	                this.f51eyyq = f51eyyq;
	                this.f51bxqk = f51bxqk;
	                this.f51qdr  = f51qdr;
                    this.f51yt   = f51yt;
	                this.f51wyzr = f51wyzr;
	                this.f51bz   = f51bz;
	                this.f51bzbs = f51bzbs;	
	                
	}
	
	public void setF51sgbh(String f51sgbh){
		this.f51sgbh = f51sgbh;
	}
	
	public String getF51sgbh(){
		return f51sgbh;
	}
	
	public void setF51je(double f51je){
		this.f51je = f51je;
	}
	
	public double getF51je(){
		return f51je;
	}
	
	public void setF51jkll(double f51jkll){
		this.f51jkll = f51jkll;
	}
	
	public double getF51jkll(){
		return f51jkll;
	}
	
	public void setF51nyll(double f51nyll){
		this.f51nyll = f51nyll;
	}
	
	public double getF51nyll(){
		return f51nyll;
	}
	
	public void setF51yqll(double f51yqll){
		this.f51yqll = f51yqll;
	}
	
	public double getF51yqll(){
		return f51yqll;
	}
	
	public void setF51eyyq(double f51eyyq){
		this.f51eyyq = f51eyyq;
	}
	
	public double getF51eyyq(){
		return f51eyyq;
	}
	
	public void setF51bxqk(String f51bxqk){
		this.f51bxqk = f51bxqk;
	}
	
	public String getF51bxqk(){
		return f51bxqk;
	}
	public void setF51qdr(String f51qdr){
		this.f51qdr = f51qdr;
	}
	
	public String getf51qdr(){
		return f51qdr;
	}
	
	public void setF51yt(String f51yt){
		this.f51yt = f51yt;
	}
	
	public String getF51yt(){
		return  f51yt;
	}
	
	public void setF51wyzr(String f51wyzr){
		this.f51wyzr = f51wyzr;
	}
	
	public String getF51wyzr(){
		return  f51wyzr;
	}
	
	public void setF51bz(String f51bz){
		this.f51bz = f51bz;
	}
	
	public String getF51bz(){
		return  f51bz;
	}
	
	public void setF51bzbs(String f51bzbs){
		this.f51bzbs = f51bzbs;
	}
	
	public String getF51bzbs(){
		return  f51bzbs;
	}










	private String f51sgbh = "";  
	private double f51je   = 0.0;
	private double f51jkll = 0.0;
	private double f51nyll = 0.0;
	private double f51yqll = 0.0;
	private double f51eyyq = 0.0;
	private String f51bxqk = "";
	private String  f51qdr =""; 
	private String f51yt   = "";
	private String f51wyzr = "";
	private String f51bz   = "";
	private String f51bzbs = "";
	
	


}

