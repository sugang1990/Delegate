package com.jlxy.graduationDesin.component.impl;
import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.jlxy.graduationDesin.component.ParameterComponent;

public class ParameterComponentImpl implements ParameterComponent{
	/**
	 * jdbcTemplate由配置文件注入
	 */
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	@Override
	public String getPataMeter(Object id) {
		getJdbcTemplate().queryForLong("select *  from table_pa");
		return null;
	}

	@Override
	public String getRandomNum(int num) {
		String str="";
		while (str.length()<num) {
			int number=(int)(Math.random()*10);
			str+=number;
		}
		return str;
	}
	
	
}