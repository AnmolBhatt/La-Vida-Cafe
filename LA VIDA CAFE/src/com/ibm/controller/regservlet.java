package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.cusdao;
import com.ibm.model.customer;

/**
 * Servlet implementation class regservlet
 */
@WebServlet("/regservlet")
public class regservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public regservlet() {
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
		String Fname=request.getParameter("Fname");
		String Lname=request.getParameter("Lname");
		String Pwd=request.getParameter("Pwd");
		String Contact=request.getParameter("Contact");
		String Email=request.getParameter("Email");
		String Address=request.getParameter("Address");
		
		customer obj=new customer();
		obj.setFname(Fname);
		 obj.setLname(Lname);
		 obj.setPwd(Pwd);
		 obj.setContact(Contact);
		 obj.setEmail(Email);
		 obj.setAddress(Address);
		 
		 String sql="insert into Register(Fname,Lname,Pwd,Contact,Email,Address)values(?,?,?,?,?,?)";
		cusdao oo=new cusdao(); 
		String msg=oo.InsertRecord(obj, sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("login.jsp");
		}
		else
		{
			response.sendRedirect("Register.jsp?error=FAIL TO INSERT RECORD");
		}
		doGet(request, response);
	}

}
