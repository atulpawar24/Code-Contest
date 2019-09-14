package com.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;;

@WebServlet("/Login")
public class Login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String s1 = request.getParameter("uname");
		String s2 = request.getParameter("pass");
		if (s1.equals("Admin") && s2.equals("admin")) {
			HttpSession s = request.getSession();
			s.setAttribute("name", s1);
			response.sendRedirect("home.jsp");
		} else {
			response.sendRedirect("validationFailed.jsp");
		}
	}
}
