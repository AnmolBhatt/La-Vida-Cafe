package com.ibm.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.ibm.model.product;
public class prodao {
	public static Connection con=null;
	public final static String url="jdbc:mysql://localhost:3306/CAFE";
	public final static String username="root";
	public final static String  password="root";
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
	public String InsertRecord(product obj,String sql)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setInt(1,obj.getPID());
			ps.setString(2,obj.getPname());
			ps.setString(3,obj.getPprice());
			ps.setString(4,obj.getPexpiry());
			ps.setString(5,obj.getPpic());
			
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
	public  ResultSet FetchDataById(String sql,int PID)
	{
		ResultSet rs=null;
		try
		{
			ps=con.prepareStatement(sql);
			ps.setInt(1,PID);
			rs=ps.executeQuery();
			System.out.println(PID);
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
	public String DeleteUser(String sql,String id)
	{
		
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,id);
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
	public String  updateRecord( product obj,String sql)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setInt(1, obj.getPID());
			ps.setString(2, obj.getPname());
			ps.setString(3, obj.getPprice());
			ps.setString(4, obj.getPexpiry());
			ps.setString(5, obj.getPpic());
			ps.setInt(6,obj.getPID());
			
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
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
