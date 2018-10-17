package com.ibm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.ibm.dao.cusdao;
import com.ibm.model.customer;

/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginservlet() {
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
		String email=request.getParameter("Email");
		String Pwd=request.getParameter("Pwd");
		
		customer obj=new customer();
		obj.setEmail(email);
		obj.setPwd(Pwd);
		
		String sql="select * from register where Email=? and Pwd=?";
		
		cusdao obj1=new cusdao();
		String msg=obj1.ValidateUser(obj, sql);
		if(msg.equals("success"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("usersession",email);
			response.sendRedirect("CUSTOMERSERVICE.jsp");
			
		}
		else
		{
			response.sendRedirect("login.jsp?error=INVALID EMAIL AND PASSWORD");
		}
		doGet(request, response);
	}

}
