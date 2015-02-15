<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>显示所有用户</title> 	
    <link href="css/Default.css" type="text/css" rel="stylesheet">
<style>
td{border:solid 1px #39C;}
</style>
</head>  
  <body bgcolor="E7F2FF"> 
  <div style="margin:20px auto;width:800px;height:auto;text-align:center">
  <p><font size="+3" face="华文行楷">查看所有部门</font></p>
  <% 
  	String departNumber=null; 	
  	String departName=null;
  	String highDepartId=null;
  	boolean departState=false;
  	int levelId=0; 
  %>
  
  <table width="70%" cellspacing="0" style=" border:solid 1px #39C;">
  <tr>
    <td colspan="7" align="center"><div align="center">部门信息</div></td>
    </tr>
  <tr>
    <td colspan="7" align="right" ><a href="addDepartment.jsp"><font face="宋体">新增</font></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
  <tr>
    <td width="10%">部门编号</td>
    <td width="20%">部门名称</td>
    <td width="20%">上级部门编号</td>
    <td width="10%">级别序号</td>
    <td width="20%">部门状态</td>
    <td colspan="2">操作</td>   
    </tr>    
    <%    
    int i=6;
	while(i-->0){
	highDepartId = "asdfa";
	departName = "asfasfasdf";
	departNumber = "asfdasdf";
	levelId = 343;
	departState = true;	
 	%>  
 	 	
  <tr>
    <td><%= departNumber %></td>
    <td><%= departName %></td>
    <td><%= highDepartId %></td> 
    <td><%= levelId %></td>
    <td><%= departState==true?"正常":"挂起" %></td>   
    <td width="50"><a href="updateDepartment">修改</a></td>
    <td width="50"><a href="deleteDepartment">删除</a></td>
  </tr>
  <%
	}
%>
<tr>
	<td colspan="7" align="center"><a href="admin">返回</a></td>
    </tr>
</table> 
</div> 
  </body>
</html>
