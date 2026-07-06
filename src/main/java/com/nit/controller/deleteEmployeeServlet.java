package com.nit.controller;

import java.io.IOException;
import java.sql.SQLException;

import com.nit.dao.EmployeeDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/delete")
public class deleteEmployeeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	  int id =Integer.parseInt(req.getParameter("id")) ;  
    	EmployeeDao dao=new EmployeeDao();
    	
    	try {
			dao.deleteEmployee(id);
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
