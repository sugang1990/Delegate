<%@ page import="org.springframework.ui.Model"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.jlxy.graduationDesin.model.Employee"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<title>用户审核</title>
<LINK href="/css/Default.css" type=text/css rel=stylesheet>
  </head>
<style>
.text{width:150px; height:20px; border:solid 1px #699; background:#CFC;}
p{ margin-top:30px;}
#main{ text-align:center;}
</style>
  <body bgcolor="E7F2FF">
<div style="margin:0px auto; width:800px; height:500px; text-align:center">
    	<p><font size="+3" face="华文行楷">用户审核</font></p>
    	<form name="FormcheckUser" method="post" action="UserServlet">
    <table width="49%"  border="1" cellpadding="4" cellspacing="0" bordercolor="#3E8A91" bgcolor="E7F2FF" align="center" >
  <tr>
    <td width="100">用户名</td>
    <td width="100">状态</td>
    <td width="100">部门</td>
    <td colspan="2">操作</td>
    </tr>
 <%  
   List<Employee> employees=(List<Employee>)request.getAttribute("unckeckEmployees");
   for(Employee employ:employees){
%> 
 	   
  <tr>
    <td><%= employ.getName() %></td> 
    <td><%=(employ.getCheckFlag()==1)?"正常":"未审核"%></td>    
      <td><%= employ.getDepartment()%></td> 
    <td width="50"><a href="/checkUser">审核</a></td>
    <td width="50"><a href="/deleteUser">删除</a></td>
  </tr>
<%} %>
  <tr>
    <td colspan="5" align="center"><a href="javascript:history.back()">返回</a></td>
    </tr>
</table>
</form>
  </div>
  </body>
</html>
