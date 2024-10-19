package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.nt.model.Employee;

public class EmployeeDAOImpl implements IEmployeeDAO {
	private static final String GET_EMPS_BY_DESGS = "SELECT EMPNO,ENAME,JOB,SAL FROM EMP WHERE  JOB=?";

	@Override
	public List<Employee> getEmpsByDesg(String desg) throws Exception {
		List<Employee> empList = null;
		try (// getPooledConnection
				Connection con = getPooledConnection();
				// create prepared statement object
				PreparedStatement ps = con.prepareStatement(GET_EMPS_BY_DESGS)) {
			// set query param value
			ps.setString(1, desg);
			// execute query
			try (ResultSet rs = ps.executeQuery()) {
				// convert RS object record List of Employee objs
				empList = new ArrayList<Employee>();
				while (rs.next()) {
					Employee e = new Employee();
					e.setEno(rs.getInt(1));
					e.setEname(rs.getString(2));
					e.setDesg(rs.getString(3));
					e.setSalary(rs.getFloat(4));
					empList.add(e);
				} // while
			} // try2
		} // try1
		catch (SQLException se) {
			se.printStackTrace();
			throw se;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return empList;
	}

	// private methods are taken as helper methods.
	private Connection getPooledConnection() throws Exception {
		InitialContext ic = new InitialContext();
		DataSource ds = (DataSource) ic.lookup("java:/comp/env/DsJndi");
		return ds.getConnection();
	}
}
