package com.jlxy.graduationDesin.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jlxy.graduationDesin.dao.EmployDao;
import com.jlxy.graduationDesin.model.Employee;
import com.jlxy.graduationDesin.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployDao employDao;

	/* @Override
	public Employee getEmployee(String nameId) {
       Employee employSearch=employDao.getEmployee(nameId);
        if(null==employSearch){
        	employSearch=new Employee();
        }
		return employSearch;
	}*/

	@Override
	public boolean isMember(Employee employee) {
		String nameId = employee.getName();
		Employee employeeSearch = getEmployee(nameId);
		if (null == employeeSearch) {
			employeeSearch = new Employee();
		}
		if (employeeSearch.getPassword().equals(employee.getPassword())) {
			return true;
		}
		return false;
	}

	public List<Employee> getEmployees(Object key) {
	       List<Employee> employSearch=employDao.getEmployees(key);
			return employSearch;
	}

	@Override
	public Employee getEmployee(String name) {
		 Employee employSearch=employDao.getEmployee(name);
		return employSearch;
	}

	@Override
	public List<Employee> getAllEmployees() {
	       List<Employee> employSearch=employDao.queryAllEmployees();
			return employSearch;
	}


	@Override
	public boolean updateEmployee(Employee employee) {
		boolean flag=employDao.updateEmployee(employee);
		return flag;
	}

	@Override
	public boolean deleteEmployee(Employee employee) {
		boolean size=employDao.deleteEmployee(employee);
		return size;
	}

	@Override
	public boolean indsertEmployee(Employee employee) {
		boolean flag = true;
		try {
			flag = employDao.insertEmployee(employee);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return flag;
	}

}