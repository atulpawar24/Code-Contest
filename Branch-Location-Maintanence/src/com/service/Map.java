package com.service;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.dao.LATLONG;

@WebServlet("/Map")
public class Map extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("name") == null) {
			response.sendRedirect("login.jsp");
		}

		int BranchZip = Integer.parseInt(request.getParameter("BranchZip"));
		System.out.println(BranchZip);
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("project");
		EntityManager em = emf.createEntityManager();
		LATLONG L = em.find(LATLONG.class, BranchZip);
		// System.out.println(L);

		double lat = Double.parseDouble(L.getLAT());
		double lon = Double.parseDouble(L.getLON());

		request.setAttribute("lat", lat);
		request.setAttribute("lon", lon);
		RequestDispatcher rd = request.getRequestDispatcher("/map.jsp");
		rd.forward(request, response);
	}

}