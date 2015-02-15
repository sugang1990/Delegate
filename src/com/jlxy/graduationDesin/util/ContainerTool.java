package com.jlxy.graduationDesin.util;
import javax.servlet.ServletContext;

import org.springframework.context.ApplicationContext;


public abstract class ContainerTool{
	//����������
	private static ApplicationContext applicationContext;
	private static ServletContext servletContext;
	public static ApplicationContext getApplicationContext() {
		return applicationContext;
	}
	public static void setApplicationContext(ApplicationContext applicationContext) {
		ContainerTool.applicationContext = applicationContext;
	}
	public static ServletContext getServletContext() {
		return servletContext;
	}
	public static void setServletContext(ServletContext servletContext) {
		ContainerTool.servletContext = servletContext;
	}
	
	static public Object lookup(String id){
		Object bean=null;
		try {
			bean=applicationContext.getBean(id);
			return bean;
		} catch (Exception e) {
			return null;
		}
	}
	/**
	 * ��������ң����������׳�Բ��У���Ҫ����
	 * @param classType
	 * @return
	 */
	public static Object lookup(Class<?> classType){
		final String className=classType.getCanonicalName();
		int index=className.lastIndexOf(".")+1;
		String simpleClassName=className.substring(index);
		return lookup(simpleClassName);
	} 
	public static void release (Object object) {
		object=null;
	}
	
}