package com.service;

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

import com.service.dao.BRANCHES;

@WebServlet("/SaveDetails")
public class SaveDetails extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("name") == null) {
			response.sendRedirect("login.jsp");
		}

		int BranchId = Integer.parseInt(request.getParameter("branchID"));
		String BranchName = request.getParameter("branchName");
		String BranchCon = request.getParameter("countySel");
		String BranchState = request.getParameter("stateSel");
		String BranchCity = request.getParameter("citySel");
		int BranchZip = Integer.parseInt(request.getParameter("zipSel"));
		long BranchNum = Long.parseLong(request.getParameter("branchPhNum"));

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("project");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		BRANCHES b = new BRANCHES();
		b.setBRANCHID(BranchId);
		b.setBRANCHNAME(BranchName);
		b.setBRANCHCON(BranchCon);
		b.setBRANCHSTATE(BranchState);
		b.setBRANCHCITY(BranchCity);
		b.setBRANCHZIP(BranchZip);
		b.setBRANCHNUM(BranchNum);

		em.persist(b);
		em.getTransaction().commit();
		emf.close();

		response.sendRedirect("DetailsSaved.jsp");

	}

}
