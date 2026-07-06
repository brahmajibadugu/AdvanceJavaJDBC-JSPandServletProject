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

@WebServlet("/update")
public class updateEmployeeServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		int salary =Integer.parseInt( req.getParameter("salary"));
		
		Employee emp=new Employee();
		emp.setId(id);
		emp.setName(name);
		emp.setEmail(email);
		emp.setSalary(salary);
		
		
		EmployeeDao dao=new EmployeeDao();
		
		
		try {
			dao.updateEmployee(emp);
			resp.sendRedirect("list");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
