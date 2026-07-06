package com.nit.controller;

import java.io.IOException;
import java.sql.SQLException;

import com.nit.dao.EmployeeDao;
import com.nit.dto.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class AddEmployeeServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Employee emp = new Employee();
		emp.setName(req.getParameter("name"));
		emp.setEmail(req.getParameter("email"));
		emp.setSalary(Integer.parseInt(req.getParameter("salary")));
		
		EmployeeDao dao=new EmployeeDao();
		
		
			try {
				dao.addEmployee(emp);
				resp.sendRedirect("list");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		

	}

}
