package com.nit.controller;

import java.io.IOException;
import java.sql.SQLException;

import com.nit.dao.EmployeeDao;
import com.nit.dto.Employee;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/edit")
public class EditEmployeeServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		
		
		EmployeeDao dao=new EmployeeDao();
		Employee e1;
		try {
			e1 = dao.getEmployeeById(id);
			req.setAttribute("emp", e1);
			RequestDispatcher rd=req.getRequestDispatcher("edit-employee.jsp");
			rd.forward(req, resp);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
	
	
}
