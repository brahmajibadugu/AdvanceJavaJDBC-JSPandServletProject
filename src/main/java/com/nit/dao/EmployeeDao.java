package com.nit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.nit.dto.Employee;
import com.nit.util.DBUtil;

public class EmployeeDao {

	public void addEmployee(Employee emp) throws SQLException, ClassNotFoundException {
		String sql = "INSERT INTO EMPLOYEE(NAME,EMAIL,SALARY) VALUES (?,?,?)";
		Connection conn = DBUtil.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, emp.getName());
		ps.setString(2, emp.getEmail());
		ps.setInt(3, emp.getSalary());

		ps.executeUpdate();
	}

	public void updateEmployee(Employee emp) throws ClassNotFoundException, SQLException {
		String sql = "UPDATE EMPLOYEE SET NAME=?,EMAIL=?,SALARY=? WHERE ID=?";
		Connection conn = DBUtil.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, emp.getName());
		ps.setString(2, emp.getEmail());
		ps.setInt(3, emp.getSalary());
		ps.setInt(4, emp.getId());

		ps.executeUpdate();
	}

	public void deleteEmployee(int id) throws ClassNotFoundException, SQLException {
		String sql = "DELETE FROM EMPLOYEE WHERE ID=?";
		Connection conn = DBUtil.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		ps.executeUpdate();

	}

	public List<Employee> getAllEmployees() throws ClassNotFoundException, SQLException {
		ArrayList<Employee> list = new ArrayList<Employee>();
		String sql = "SELECT * FROM EMPLOYEE";
		Connection conn = DBUtil.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Employee e = new Employee();
			e.setId(rs.getInt("id"));
			e.setName(rs.getString("name"));
			e.setEmail(rs.getString("email"));
			e.setSalary(rs.getInt("salary"));
			list.add(e);
		}
		return list;
	}

	public Employee getEmployeeById(int id) throws ClassNotFoundException, SQLException {
		String sql = "SELECT * FROM EMPLOYEE WHERE ID=?";
		Connection conn = DBUtil.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Employee e = new Employee();
			e.setId(rs.getInt("id"));
			e.setName(rs.getString("name"));
			e.setEmail(rs.getString("email"));
			e.setSalary(rs.getInt("salary"));
            return e;
		}
		return null;
	}

}
