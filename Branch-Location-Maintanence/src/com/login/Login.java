package com.login;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.ADMIN_CREDENTIALS;

@WebServlet("/Login")
public class Login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String s1 = request.getParameter("uname");
		String s2 = request.getParameter("pass");

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("project");
		EntityManager em = emf.createEntityManager();
		ADMIN_CREDENTIALS a = em.find(ADMIN_CREDENTIALS.class, "Admin");
		// System.out.println(a.getUSERNAME());

		if (s1.equals(a.getUSERNAME()) && s2.equals(a.getPASSWORD())) {
			HttpSession s = request.getSession();
			s.setAttribute("name", s1);
			response.sendRedirect("home.jsp");
		} else {
			response.sendRedirect("validationFailed.jsp");
		}

	}

	public static void main(String[] args) {

	}
}
