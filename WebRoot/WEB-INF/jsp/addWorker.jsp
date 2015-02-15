<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" errorPage="errorPage.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>添加员工信息</title>	
    <link href="/css/Default.css" type="text/css" rel="stylesheet" />
</head>

<style>
.text{width:150px;height:20px;border:solid 1px #699;background:#CFC;}
p{margin-top:30px;}
#main{text-align:center;}
</style>

<body bgcolor="E7F2FF">

  <div id="main">
    <form name="formAddWorker" method="post" action ="/employee/addWorkerSubmit">
    <p><font size="+3" face="华文行楷">添加员工信息</font></p>
    <input type="hidden" name="action" value="new">
    <table width="40%"  border="1" cellpadding="4" cellspacing="0" bordercolor="#3E8A91"  align="center">
  <tr>
    <td align="right">姓名：</td>
    <td><input type="text" name="name" class="text" ></td>
  </tr>
<!--   <tr>
    <td align="right">性别：</td>
    <td><select name="sex">
    <option value="true">男</option>
    <option value="false">女</option>
    </select></td>
  </tr> -->
  <tr>
    <td align="right">部门：</td>
    <td><input type="text" name="department" class="text" ></td>
  </tr>
<!--   <tr>
    <td align="right">工作状态：</td>
    <td><select name="workerState">
    <option value="true">在职</option>
    <option value="false">离职</option>
    </select></td>
  </tr> -->
    <tr>
    <td align="right">密码：</td>
    <td><input type="text" name="password" class="text" ></td>
  </tr>
  <tr>
    <td align="right">薪水：</td>
    <td><input type="text" name="salary" class="text" ></td>
  </tr>
  <tr>
    <td colspan="2" >
    <input  class="Button1" type="submit" value="提交" style="margin-left:170px">
   <a href="/welcome.html" style="margin-left:180px" >返回</a> </td>
    </tr>
</table>
</form>
    </div>
  </body>
</html>
