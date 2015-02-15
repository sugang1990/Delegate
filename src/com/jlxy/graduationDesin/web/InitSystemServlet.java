package com.jlxy.graduationDesin.web;


import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.util.Log4jWebConfigurer;

import com.jlxy.graduationDesin.util.ContainerTool;


public class InitSystemServlet implements ServletContextListener{
	
	private static final SimpleDateFormat Formated_DATE=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	ContextLoader contextLoader;
	protected ServletContext servletContext;

	@Override
	public void contextDestroyed(ServletContextEvent event) {
		Log4jWebConfigurer.shutdownLogging(servletContext);
		if (null!=contextLoader) {
			contextLoader.closeWebApplicationContext(servletContext);
		}
		
	}
	@Override
	public void contextInitialized(ServletContextEvent event) {
		servletContext=event.getServletContext();
		System.out.println(Formated_DATE.format(new Date())+" 初始化Log4J日志系统");
		Log4jWebConfigurer.initLogging(servletContext);
        System.out.println(Formated_DATE.format(new Date())+" 正在初始化Spring 容器");
        contextLoader=new ContextLoader();
        WebApplicationContext webApplicationContext=contextLoader.initWebApplicationContext(servletContext);
        ContainerTool.setApplicationContext(webApplicationContext);
        ContainerTool.setServletContext(servletContext);
        System.out.println(Formated_DATE.format(new Date())+" 共有："+webApplicationContext.getBeanDefinitionCount()+"个Bean初始化......");
	}
	
	
}