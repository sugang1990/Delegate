<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>显示所有用户</title> 	
    <LINK href="css/Default.css" type="text/css" rel="stylesheet">
<style>
td{border:solid 1px #39C;}
</style>
</head>  
  <body bgcolor="E7F2FF"> 
  <div style="margin:20px auto;width:800px;height:auto;text-align:center">
  <p><font size="+3" face="华文行楷">查看所有用户</font></p>
  <%
  	int userId=0;
  	String userName=null,userPwd=null,userEmail=null;
  	boolean isManager=false;
  	boolean state=false;
  	int workerId=0; 
  %>
  
  <table width="650" cellspacing="0" style=" border:solid 1px #39C;">
  <tr>
    <td colspan="9" align="center"><div align="center">用户信息列表</div></td>
    </tr>
  <tr>
    <td colspan="9" align="right" ><a href="addUser"><font face="宋体">新增</font></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
  <tr>
    <td width="70">用户编号</td>
    <td width="70">用户名</td>
    <td width="70">密码</td>
    <td width="150">Email</td>
    <td width="80">是否管理员</td>
    <td width="50">状态</td>
    <td width="50">工号</td>
    <td colspan="2" align="center">管理操作</td>
    </tr>    
    <%    
    int index=8;
	while(index-->0){
	userId = 2134234;
	userName = "asdf";
	userPwd = "asfdasdf";
	userEmail = "asdfasdf@fd.asdf";
	isManager =true;
	state=true;
	workerId = 243;
 	%>  
 	 	
  <tr>
    <td><%= userId %></td>
    <td><%= userName %></td>
    <td><%= userPwd %></td>
    <td><%= userEmail %></td>
    <td><%= isManager==true?"是":"否" %></td>
    <td><%= state==true?"审核":"未审核" %></td>
    <td><%= workerId %></td>
    <td width="50"><a href="updateUser">修改</a></td>
    <td width="50"><a href="delete">删除</a></td>
  </tr>
  <%
	}
%>
<tr>
	<td colspan="9" align="center"><a href="admin">返回</a></td>
    </tr>
</table> 
</div> 
  </body>
</html>
