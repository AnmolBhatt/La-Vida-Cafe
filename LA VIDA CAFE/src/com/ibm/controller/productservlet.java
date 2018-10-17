package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.prodao;
import com.ibm.model.product;

/**
 * Servlet implementation class productservlet
 */
@WebServlet("/productservlet")
public class productservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public productservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int PID=Integer.parseInt(request.getParameter("PID"));
		String Pname=request.getParameter("Pname");
		String Pprice=request.getParameter("Pprice");
		String Pexpiry=request.getParameter("Pexpiry");
		String Ppic=request.getParameter("Ppic");
		
		product obj=new product();
		obj.setPID(PID);
		 obj.setPname(Pname);
		 obj.setPprice(Pprice);
		 obj.setPexpiry(Pexpiry);
		 obj.setPpic(Ppic);
		
		String sql="insert into food(PID,Pname,Pprice,Pexpiry,Ppic)values(?,?,?,?,?)";
		prodao obj1=new prodao();
		String msg=obj1.InsertRecord(obj, sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("fooddetails.jsp");
		}
		else
		{
			response.sendRedirect("food.jsp?error=FAIL TO INSERT RECORD");
		}
		doGet(request, response);
	}

}
