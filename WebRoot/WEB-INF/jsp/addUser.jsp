<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" errorPage="errorpage.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>添加用户</title>	
    <LINK href="css/Default.css" type=text/css rel=stylesheet>
</head>

<style>
.text{width:150px; height:20px; border:solid 1px #699; background:#CFC;}
p{ margin-top:30px;}
#main{ text-align:center;}
</style>

<body bgcolor="E7F2FF">

  <div id="main">
    <form name="formAddUser" method="post" action = "UserServlet">
    <p><font size="+3" face="华文行楷">添加用户</font></p>
    <input type="hidden" name="action" value="new">
    <table width="49%"  border="1" cellpadding="4" cellspacing="0" bordercolor="#3E8A91" bgcolor="E7F2FF" align=center>
  <tr>
    <td width="40%" align="right">用户名：</td>
    <td width="60%"><input type="text" name="userName" id="userName" class="text"></td>
  </tr>
  <tr>
    <td align="right">密码：</td>
    <td><input type="password" name="userPwd" class="text" id ="userPwd"></td>
  </tr>
  <tr>
    <td align="right">Email：</td>
    <td><input type="text" name="userEmail" class="text" id="userEmail"></td>
  </tr>
  <tr>
    <td align="right">角色：</td>
    <td><select name="isManager" id="isManager">
    	<option value="true">管理员</option>
        <option value="false">普通用户</option>
    </select></td>
  </tr>
  <tr>
    <td align="right">状态：</td>
    <td><select name="state" id ="state">
    <option value="ture">审核</option>
    <option value="false">未审核</option>
    </select></td>
  </tr>
  <tr>
    <td align="right">工号：</td>
    <td><input type="text" name="workerId" id="workerId" class="text"></td>
  </tr>  
  <tr>
    <td colspan="2" align="center">
    <input class="Button1" type="submit" value="提交">&nbsp;&nbsp;
    <input class="Button1" type="reset" value="清空">&nbsp;&nbsp;
    <input class="Button1" type = "button" value = "返回" onclick="javascript:history.back()"></td>
    </tr>
</table>
</form>
    </div>
  </body>
</html>
