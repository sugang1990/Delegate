package com.jlxy.graduationDesin.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.jlxy.graduationDesin.dao.EmployDao;
import com.jlxy.graduationDesin.model.Employee;

@Repository
public class EmployDaoImpl extends SqlMapClientDaoSupport implements EmployDao {
@Autowired
	public void setSqlMapClientTemp(SqlMapClient sqlMapClient) {
		setSqlMapClient(sqlMapClient);
	}

	public List<Employee> getSelectedCompany() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employee getEmployee(String name) {
		Employee employeeSeacrch=(Employee) getSqlMapClientTemplate().queryForObject(
				"getEmployee", name);
		if (null==employeeSeacrch) {
			employeeSeacrch=new Employee();
		}
		return employeeSeacrch;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> getEmployees(Object key) {
		// TODO Auto-generated method stub
		return (List<Employee>) getSqlMapClientTemplate().queryForList(
				"queyEmployees", key);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> queryAllEmployees() {
		// TODO Auto-generated method stub
		return (List<Employee>) getSqlMapClientTemplate().queryForList(
				"queyallEmployees");
	}

	@Override
	public boolean insertEmployee(Employee employee) {
	  getSqlMapClientTemplate().insert("insertEmployee",employee);
		return true;
	}

	@Override
	public boolean updateEmployee(Employee employee) {
		int  flag= getSqlMapClientTemplate().update("updateEmployee",employee);
		if(flag>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteEmployee(Employee employee) {
		int flag=getSqlMapClientTemplate().delete("deleteEmployee", employee);
		if (flag>0) {
			return true;
		}
		return false;
	}
}