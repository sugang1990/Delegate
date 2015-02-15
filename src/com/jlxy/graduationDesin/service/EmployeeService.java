package com.jlxy.graduationDesin.service;


import java.util.List;

import com.jlxy.graduationDesin.model.Employee;

public interface EmployeeService{
	Employee getEmployee(String id);
	List<Employee> getEmployees(Object key);
	boolean isMember(Employee employee);
	List<Employee> getAllEmployees();
	boolean updateEmployee(Employee employee);
	boolean deleteEmployee(Employee employee);
	boolean indsertEmployee(Employee employee);
}