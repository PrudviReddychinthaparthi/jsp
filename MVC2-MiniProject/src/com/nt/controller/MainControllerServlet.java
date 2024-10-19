package com.nt.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.model.Employee;
import com.nt.service.EmployeeMgmtService;
import com.nt.service.IEmployeeMgmtService;

@WebServlet(urlPatterns = "/controllerurl", loadOnStartup = 1)
public class MainControllerServlet extends HttpServlet {
	IEmployeeMgmtService service;
	private static final long serialVersionUID = -943184187908177584L;

	@Override
	public void init() throws ServletException {
		service = new EmployeeMgmtService();
	}

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// read form data
		String desg = req.getParameter("job");
		String action = req.getParameter("s1");
		try {
			// invoke b.method
			List<Employee> empList = service.fetchEmpsByDesg(desg);
			// keep the results in request scope to send to view comps
			req.setAttribute("empDetails", empList);
			// forward the request to result page based on the button that is clicked
			String resultPage = null;
			if (action.equalsIgnoreCase("HtmlOutput"))
				resultPage = "/html_screen.jsp";
			else
				resultPage = "/excel_screen.jsp";
			// forward the request to result page
			RequestDispatcher rd = req.getRequestDispatcher(resultPage);
			rd.forward(req, res);
		} catch (SQLException se) {
			se.printStackTrace();
			RequestDispatcher rd = req.getRequestDispatcher("/error.html");
			rd.forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher rd = req.getRequestDispatcher("/error.html");
			rd.forward(req, res);
		}
	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}

}
