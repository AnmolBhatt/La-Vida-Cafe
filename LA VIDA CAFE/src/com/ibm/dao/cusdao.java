package com.ibm.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ibm.model.customer;
public class cusdao {
	public static Connection con=null;
	public final static String url="jdbc:mysql://localhost:3306/CAFE";
	public final static String username="root";
	public final static String password="root";
	public static String driver="com.mysql.jdbc.Driver";
	PreparedStatement ps=null;
	static
	{
		try
		{

			Class.forName(driver);
			con=DriverManager.getConnection(url,username,password);
			System.out.println("connection success");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public String InsertRecord(customer obj,String sql)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,obj.getFname());
			ps.setString(2,obj.getLname());
			ps.setString(3,obj.getPwd());
			ps.setString(4,obj.getContact());
			ps.setString(5,obj.getEmail());
			ps.setString(6,obj.getAddress());
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "";
	}
	public String ValidateUser(customer obj,String sql)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,obj.getEmail());
			ps.setString(2,obj.getPwd());
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				return "success";
			}
			else
			{
				return "fail";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "";
	}
	public ResultSet FechdataByemail(String sql,String email)
	{
		ResultSet rs=null;
		
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,email);
		    rs=ps.executeQuery();
		    System.out.println(email);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return rs;
	}
	public ResultSet FechAlldata(String sql)
	{
		ResultSet rs=null;
		
		try
		{
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
		   
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		   return rs;
	}
	
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
