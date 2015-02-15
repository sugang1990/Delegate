<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.jlxy.graduationDesin.model.Employee"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>员工信息</title> 	
<!--     <link href="/css/Default.css" type="text/css" rel="stylesheet"> -->
<style>
td{border:solid 1px #39C;}
</style>
</head>  
  <body bgcolor="E7F2FF"> 
  <div id="main" style="margin:20px auto;width:1020px;height:auto;text-align:center">
  <p><font size="+3" face="华文行楷">员工信息</font></p>
  <table width="100%" cellspacing="0" style=" border:solid 1px #39C;">  
  <tr>
    <td width="8%">姓名</td>
    <td width="8%">部门</td>
    <td width="8%">工资</td>
    <td colspan="3" align="center">操作</td>      
    </tr>    
     <%  
   List<Employee> employees=(List<Employee>)request.getAttribute("allEmployees");
   for(Employee employ:employees){
%> 
 	
 	 	
  <tr>
    <td><%= employ.getName() %></td>
    <td><%= employ.getDepartment() %></td> 
    <td><%= employ.getSalary() %></td>  
    <td width="50"><a target="_blank" href="/employee/updateUser?userName=<%=employ.getName()%>">修改</a></td>
    <td width="50"><a target="_blank" href="/employee/deleteUser?userName=<%=employ.getName()%>">删除</a></td>
     <td width="50" ><a target="_blank" href="/employee/addWorker">新增</a></td>
  </tr>
<%} %>
<tr>
	<td colspan="12" align="center"><a href="/welcome.html">返回</a></td>
    </tr>
</table> 
</div> 
  </body>
</html>
