<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" errorPage="errorPage.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>删除部门</title>	
    <LINK href="css/Default.css" type="text/css" rel="stylesheet">
</head>

<style>
.text{width:150px; height:20px; border:solid 1px #699; background:#CFC;}
p{ margin-top:30px;}
#main{ text-align:center;}
</style>

<body bgcolor="E7F2FF">

  <div id="main">
    <form name="formDeleteDepart" method="post" action = "DepartServlet">
    <p><font size="+3" face="华文行楷">删除部门</font></p>
    <input type="hidden" name="action" value="delete">
    <table width="40%"  border="1" cellpadding="4" cellspacing="0" bordercolor="#3E8A91" align="center">
  <tr>
    <td align="center">请输入您要删除的部门编号</td>
    </tr>
    <tr>
    <td align="center"><input type="text" name="departId"  class="text"></td>
  </tr>
  
  <tr>
    <td align="center">
    <input class="Button1" type="submit" value="提交">&nbsp;&nbsp;
    <input class="Button1" type="reset" value="清空">&nbsp;&nbsp;
    <input class="Button1" type = "button" value = "返回" onclick="javascript:history.back()"></td>
    </tr>
</table>
</form>
    </div>
  </body>
</html>
