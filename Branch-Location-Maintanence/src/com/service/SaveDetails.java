package com.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SaveDetails")
public class SaveDetails extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("name") == null) {
			response.sendRedirect("login.jsp");
		}

		String BranchId = request.getParameter("branchID");
		String BranchName = request.getParameter("branchName");
		String BranchAddr = request.getParameter("branchAddr");
		String BranchNum = request.getParameter("branchPhNum");

	}

}
