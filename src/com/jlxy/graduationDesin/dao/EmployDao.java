package com.jlxy.graduationDesin.dao;

import java.util.List;

import com.jlxy.graduationDesin.model.Employee;

public interface EmployDao {
	public List<Employee> getSelectedCompany();

	public Employee getEmployee(String id);
	
	public List<Employee> getEmployees(Object name);
	
	public List<Employee> queryAllEmployees();
	
	boolean insertEmployee(Employee employee);
	
	boolean updateEmployee(Employee employee);
	
	boolean deleteEmployee(Employee employee);
	
}