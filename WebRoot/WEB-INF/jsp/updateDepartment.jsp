<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" errorPage="errorpage.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% String departNumber=request.getParameter("departNumber"); %>
<html>
  <head>    
    <title>修改部门信息</title>	
    <LINK href="css/Default.css" type="text/css" rel="stylesheet" />
</head>
<style>
	.text{width:150px; height:20px; border:solid 1px #699; background:#CFC;}
	p{ margin-top:30px;}
	#main{ text-align:center;}
</style>

<body bgcolor="E7F2FF">
  <div id="main">
    <form name="formUpdateDepart" method="post" action = "DepartServlet">
    <p><font size="+3" face="华文行楷">修改部门信息</font></p>
    <input type="hidden" name="action" value="update">    
    <table width="40%"  border="1" cellpadding="4" cellspacing="0" bordercolor="#3E8A91" bgcolor="E7F2FF" align=center>
  <tr>
  	<td width="40%" align="right" >部门编号：</td>
  	<td width="60%"><input type="text" name="departNumber" readonly="readonly" value="<%=departNumber %>" class="text"></td>
  </tr>
  <tr>
    <td  align="right">部门名：</td>
    <td ><input type="text" name="departName" class="text"></td>
  </tr>
  <tr>
    <td align="right">上级部门编号:</td>
    <td><input type="text" name="highDepartId" class="text" ></td>
  </tr>  
  <tr>
    <td align="right">部门级别:</td>
    <td><input type="text" name="levelId" class="text" ></td>
  </tr>
  <tr>
    <td align="right">部门状态：</td>
    <td><select name="departState">
    <option value="true">正常</option>
    <option value="false">已撤销</option>
    </select></td>
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
