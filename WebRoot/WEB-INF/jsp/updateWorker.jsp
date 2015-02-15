<%-- <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,com.bean.DepartmentBean" errorPage="errorPage.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% request.setCharacterEncoding("UTF-8");%>
<% int workerId=Integer.parseInt(request.getParameter("workerId"));
	String registerDate = request.getParameter("registerDate");
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
    <form name="formUpdateWorker" method="post" action = "WorkerServlet">
    <p><font size="+3" face="华文行楷">修改员工信息</font></p>
    <input type="hidden" name="action" value="update">   
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
    <td align="right">部门编号：</td>
    <td><select name="departNumber">
    <%
	    DepartmentBean depart = new DepartmentBean();
	    ResultSet rs = depart.getAllDepartNumber(); 
	   String number = null;
	    while(rs.next()){
	    number = rs.getString("departNumber");	    
	    	out.write("<option value=\"");
	    	out.write(number+"\">");
	    	out.write(number);	    		    
	    }      
     %>
    
    
    </select></td>
  </tr>
  <tr>
    <td align="right">工作状态：</td>
    <td><select name="workerState">
    <option value="true">在职</option>
    <option value="false">挂起</option>
    </select></td>
  </tr><tr>
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
    <td align="right">注册日期：</td>
    <td><input type="text" name="registerDate" class="text" readonly="readonly" value="<%=registerDate %>"/></td>
  </tr>    
  <tr>
    <td align="right">工资：</td>
    <td><input type="text" name="salary" class="text" ></td>
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