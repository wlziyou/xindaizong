package com.credit.contract.zhuandaikuanxinxi.models;

import java.sql.*;
import java.util.ArrayList;

public class Zhuandaikuan{
	
	static{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	public ArrayList<Zhuandaikuan> returnZuzhixingshi(){
		
		ArrayList<Zhuandaikuan> list = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		
		try{
			
conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xindai", "user", "netcop");

			ps = conn.prepareStatement("SELECT * FROM c38zzxs");
			rs = ps.executeQuery();
			
			list = new ArrayList();
			
			while(rs.next()){
				String zuzhixingshidaima = rs.getString("b38dm");
				String zuzhixingshihanyi = rs.getString("b38hy");
	Zhuandaikuan zdk = new Zhuandaikuan(zuzhixingshidaima, zuzhixingshihanyi);
	list.add(zdk);
			//	list.add(rs.getString("b38dm"),rs.getString("b38hy"));
			}
			
			rs.close();
			ps.close();
			conn.close();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	
	
	
	
	
	public ArrayList<Zhuandaikuan> returnZhuandaixingshi(){
		
		ArrayList<Zhuandaikuan> list = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
			
		try{
			
conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xindai", "user", "netcop");

			ps = conn.prepareStatement("SELECT * FROM c39xs");
			rs = ps.executeQuery();
			
			list = new ArrayList();
			
			while(rs.next()){
				String zhuandaixingshidaima = rs.getString("b39dm");
				String zhuandaixingshihanyi = rs.getString("b39hy");
	Zhuandaikuan zdk = new Zhuandaikuan(zhuandaixingshidaima, zhuandaixingshihanyi, null);
	list.add(zdk);
			//	list.add(rs.getString("b39dm"),rs.getString("b39hy"));
			}
			
			rs.close();
			ps.close();
			conn.close();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	
	
	
	
	
	public ArrayList<Zhuandaikuan> returnJingwaijigouleibie(){
		
		ArrayList<Zhuandaikuan> list = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
			
		try{
			
conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xindai","user","netcop");
			ps = conn.prepareStatement("SELECT * FROM c40jwjg");
			rs = ps.executeQuery();
			
			list = new ArrayList();
			
			while(rs.next()){
				String jingwaijigouleibiedaima = rs.getString("b40dm");
				String jingwaijigouleibiehanyi = rs.getString("b40hy");
	Zhuandaikuan zdk = new Zhuandaikuan(jingwaijigouleibiedaima, jingwaijigouleibiehanyi, null, null);
	list.add(zdk);
			//	list.add(new Zhuandaikuan(rs.getString("b40dm"),rs.getString("b40hy")));
			}
			
			rs.close();
			ps.close();
			conn.close();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	
	
	
	
	public boolean writeIn(){
		Connection conn = null;
		PreparedStatement ps = null;
		int result = 0;
		
	
		
		try{
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xindai","user","netcop");
ps = conn.prepareStatement("INSERT INTO d58zdk VALUES(f58htbh_seq.nextval, ?, ?, ?, ?, ?, ?, ?)");
			
		//	ps.setString(1, 合同编号);
			ps.setString(1, jingwaijigouquancheng);
			ps.setString(2, zhuandaixieyibianhao);
			
			ps.setString(3, zuzhixingshidaima);
			ps.setString(4, zhuandaixingshidaima);
			ps.setString(5, jingwaijigouleibiedaima);
		
			ps.setInt(6, kuanxianqi);
			ps.setDouble(7, shouxufei);

			
			System.out.println("--->jingwaijigouquancheng : " + jingwaijigouquancheng + "<---");
			System.out.println("--->zhuandaixieyibianhao : " + zhuandaixieyibianhao + "<---");
			System.out.println("--->zuzhixingshidaima : " + zuzhixingshidaima + "<---");
			System.out.println("--->zhuandaixingshidaima : " + zhuandaixingshidaima + "<---");
	System.out.println("--->jingwaijigouleibiedaima : " + jingwaijigouleibiedaima + "<---");
			System.out.println("--->kuanxianqi : " + kuanxianqi + "<---");
			System.out.println("--->shouxufei : " + shouxufei + "<---");
			
			result = ps.executeUpdate();
			
			ps.close();
			conn.close();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		return result==1;
		
	}
	
	public Zhuandaikuan(){}
	
	public Zhuandaikuan(String zuzhixingshidaima, String zuzhixingshihanyi){
		this.zuzhixingshidaima = zuzhixingshidaima;
		this.zuzhixingshihanyi = zuzhixingshihanyi;
	}
	
	
	public Zhuandaikuan(String zhuandaixingshidaima, String zhuandaixingshihanyi, String a){
		this.zhuandaixingshidaima = zhuandaixingshidaima;
		this.zhuandaixingshihanyi = zhuandaixingshihanyi;
	}
	
	public Zhuandaikuan(String jingwaijigouleibiedaima, String jingwaijigouleibiehanyi, String a, String b){
		this.jingwaijigouleibiedaima = jingwaijigouleibiedaima;
		this.jingwaijigouleibiehanyi = jingwaijigouleibiehanyi;
	}
	
	
	public Zhuandaikuan(String zhuandaixieyibianhao, String jingwaijigouquancheng, int kuanxianqi, double shouxufei, String zuzhixingshidaima, String zhuandaixingshidaima, String jingwaijigouleibiedaima){
		
		this.zhuandaixieyibianhao = zhuandaixieyibianhao;
		this.jingwaijigouquancheng = jingwaijigouquancheng;
		
		this.kuanxianqi = kuanxianqi;
		this.shouxufei = shouxufei;
		
		this.zuzhixingshidaima = zuzhixingshidaima;
		this.zhuandaixingshidaima = zhuandaixingshidaima;
		this.jingwaijigouleibiedaima = jingwaijigouleibiedaima;
	}
	
	
	public void setJingwaijigouquancheng(String ingwaijigouquancheng){
		this.jingwaijigouquancheng = jingwaijigouquancheng;
	}
	public String getJingwaijigouquancheng(){
		return jingwaijigouquancheng;
	}
	
	
	
	public void setZhuandaixieyibianhao(String zhuandaixieyibianhao){
		this.zhuandaixieyibianhao = zhuandaixieyibianhao;
	}
	public String getZhuandaixieyibianhao(){
		return zhuandaixieyibianhao;
	}
	
	
	
	public void setKuanxianqi(int kuanxianqi){
		this.kuanxianqi = kuanxianqi;
	}
	public int getKuanxianqi(){
		return kuanxianqi;
	}
	
	
	
	public void setShouxufei(double shouxufei){
		this.shouxufei = shouxufei;
	}
	public double getShouxufei(){
		return shouxufei;
	}
	
	
	
	
	public String getZuzhixingshidaima(){
		return zuzhixingshidaima;
	}
	public String getZuzhixingshihanyi(){
		return zuzhixingshihanyi;
	}
	
	
	
	
	public String getZhuandaixingshidaima(){
		return zhuandaixingshidaima;
	}
	public String getZhuandaixingshihanyi(){
		return zhuandaixingshihanyi;
	}
	
	
	
	public String getJingwaijigouleibiedaima(){
		return jingwaijigouleibiedaima;
	}
	public String getJingwaijigouleibiehanyi(){
		return jingwaijigouleibiehanyi;
	}
	
	
	
	private String zhuandaixieyibianhao = null;
	private String jingwaijigouquancheng = null;
	
	private int kuanxianqi = 0;
	private double shouxufei = 0.00;
	
//	private String zuzhixingshi = null;
//	private String zhuandaixingshi = null;
//	private String jingwaijigouleibie = null;
	
	private String zuzhixingshidaima = null; 
	private String zuzhixingshihanyi = null;
	
	private String zhuandaixingshidaima = null;
	private String zhuandaixingshihanyi = null;
	
	private String jingwaijigouleibiedaima = null;
	private String jingwaijigouleibiehanyi = null;
	
	
	
	
}
