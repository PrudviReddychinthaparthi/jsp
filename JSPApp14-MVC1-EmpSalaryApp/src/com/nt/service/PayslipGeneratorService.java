package com.nt.service;

import com.nt.beans.Employee;

public class PayslipGeneratorService {
	public void paySlipGenerator(Employee emp) {
		// calculate gross salary and net salary
		float grossSalary = emp.getBasicSalary() * 1.4f;
		float netSalary = grossSalary - grossSalary * 0.2f;
		emp.setGrossSalary(grossSalary);
		emp.setNetSalary(netSalary);
	}
}
