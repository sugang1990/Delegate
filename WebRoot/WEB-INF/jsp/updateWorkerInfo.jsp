<%-- <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% request.setCharacterEncoding("UTF-8");%>
<%@page import="com.bean.sqlBean"%>
<%@page import="com.bean.WorkerBean"%>
<%
	 int workerId=Integer.parseInt(request.getParameter("workerId"));
	 String FdepartNumber=null;
	 boolean workerState=false;
	 String registerDate =null;
	 int salary = 0;
	 
	 WorkerBean  worker= new WorkerBean();
	 ResultSet rs = worker.getWorkerById(workerId);
	  	
	 FdepartNumber = rs.getString("FdepartNumber");
	 workerState = rs.getBoolean("workerState");
	 registerDate = rs.getString("registerDate");
	 salary = rs.getInt("salary");
%>
<html>
  <head>    
    <title>修改员工信息</title>	
    <link href="css/Default.css" type="text/css" rel="stylesheet" />
</head>
<style>
	.text{width:150px; height:20px; border:solid 1px #699; background:#CFC;}
	p{ margin-top:30px;}
	#main{ text-align:center;}
</style>

<body bgcolor="E7F2FF">
  <div id="main">
    <form name="formUpdateWorker" method="post" action = "UpdateWorkerServlet">
     <input type="hidden" name="registerDate" value="<%=registerDate%>" />
    <input type="hidden" name="workerState" value="<%=workerState%>"  />   
    <input type="hidden" name="FdepartNumber" value="<%=FdepartNumber%>" /> 
    <input type="hidden" name="salary" value="<%=salary %>">  
    <input type="hidden" name="action" value="update">  
    <p><font size="+3" face="华文行楷">修改员工信息</font></p> 
    <table width="50%"  border="1" cellpadding="4" cellspacing="0" bordercolor="#3E8A91" bgcolor="E7F2FF" align=center>
  <tr>
    <td align="right">工号：</td>
    <td>
    <input type="text" name="workerId" value="<%=workerId %>" readonly class="text" /> </td>
  </tr>
  <tr>
    <td align="right">姓名：</td>
    <td><input type="text" name="workerName" class="text" ></td>
  </tr>
  <tr>
    <td align="right">性别：</td>
    <td><select name="sex">
    <option value="true">男</option>
    <option value="false">女</option>
    </select></td>
  </tr> 
  <tr>
    <td align="right">生日：</td>
    <td><input type="text" name="birthday" class="text" ></td>
  </tr><tr>
    <td align="right">电话：</td>
    <td><input type="text" name="telephone" class="text" ></td>
  </tr>
  <tr>
    <td align="right">住址：</td>
    <td><input type="text" name="address" class="text" ></td>
  </tr>  
  <tr>
    <td colspan="2" align="center">
    <input class="Button1" type="submit" value="提交">&nbsp;&nbsp;
    <input class="Button1" type="reset" value="清空">&nbsp;&nbsp;
    <input class="Button1" type ="button" value = "返回" onclick="javascript:history.back()"></td>
    </tr>
</table>
</form>
    </div>
  </body>
</html>
 --%>