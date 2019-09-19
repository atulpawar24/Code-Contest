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

import com.service.dao.BRANCHES;

@WebServlet("/SearchDetails")
public class SearchDetails extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		if (session.getAttribute("name") == null) {
			response.sendRedirect("login.jsp");
		}

		int BranchId = Integer.parseInt(request.getParameter("branchID"));
		String BranchName = request.getParameter("branchName");
		String BranchCon;
		String BranchState;
		String BranchCity;
		int BranchZip;
		long BranchNum;
		String searchCriteria = request.getParameter("search");
		System.out.println(searchCriteria);

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("project");
		EntityManager em = emf.createEntityManager();

		BRANCHES b = em.find(BRANCHES.class, BranchId);

		if (b.getBRANCHID() == BranchId && b.getBRANCHNAME().equals(BranchName)) {
			BranchCon = b.getBRANCHCON();
			BranchState = b.getBRANCHSTATE();
			BranchCity = b.getBRANCHCITY();
			BranchZip = b.getBRANCHZIP();
			BranchNum = b.getBRANCHNUM();
			request.setAttribute("BranchId", BranchId);
			request.setAttribute("BranchName", BranchName);
			request.setAttribute("BranchCon", BranchCon);
			request.setAttribute("BranchState", BranchState);
			request.setAttribute("BranchCity", BranchCity);
			request.setAttribute("BranchZip", BranchZip);
			request.setAttribute("BranchNum", BranchNum);
			RequestDispatcher rd = request.getRequestDispatcher("/DetailsSearched.jsp");
			rd.forward(request, response);
			// response.sendRedirect("DetailsSearched.jsp");
		} else {
			response.sendRedirect("searchFailed.jsp");
		}

	}

}
