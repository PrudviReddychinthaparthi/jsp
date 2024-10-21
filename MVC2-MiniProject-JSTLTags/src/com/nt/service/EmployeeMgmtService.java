package com.nt.service;

import java.util.List;

import com.nt.dao.EmployeeDAOImpl;
import com.nt.dao.IEmployeeDAO;
import com.nt.model.Employee;

public class EmployeeMgmtService implements IEmployeeMgmtService {
	private IEmployeeDAO empDAO;

	public EmployeeMgmtService() {
		empDAO = new EmployeeDAOImpl();
	}

	@Override
	public List<Employee> fetchEmpsByDesg(String desg) throws Exception {
		List<Employee> empList = empDAO.getEmpsByDesg(desg);
		empList.forEach(emp -> {
			emp.setGrossSalary(emp.getSalary() * 1.4f);
			emp.setNetSalary(emp.getGrossSalary() - (emp.getGrossSalary() * 0.2f));
		});
		return empList;
	}

}
