<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" errorPage="errorPage.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>添加部门</title>	
    <link href="css/Default.css" type="text/css" rel="stylesheet" />
</head>

<style>
.text{width:150px;height:20px;border:solid 1px #699;background:#CFC;}
p{margin-top:30px;}
#main{text-align:center;}
</style>

<body bgcolor="E7F2FF">

  <div id="main">
    <form name="formAddDepart" method="post" action = "DepartServlet">
    <p><font size="+3" face="华文行楷">添加部门</font></p>
    <input type="hidden" name="action" value="new">
    <table width="49%"  border="1" cellpadding="4" cellspacing="0" bordercolor="#3E8A91" bgcolor="E7F2FF" align=center>
  <tr>
    <td width="%30" align="right">部门编号：</td>
    <td width="%70"><input type="text" name="departNumber" class="text"></td>
  </tr>
  <tr>
    <td align="right">部门名称：</td>
    <td><input type="text" name="departName" class="text" ></td>
  </tr>
  <tr>
    <td align="right">上级部门编号：</td>
    <td><input type="text" name="highDepartId" class="text" ></td>
  </tr>
  <tr>
    <td align="right">级别序号：</td>
    <td><input type="text" name="levelId" class="text" ></td>
  </tr>
  <tr>
    <td align="right">状态：</td>
    <td><select name="departState">
    <option value="true">正常</option>
    <option value="false">已撤销</option>
    </select></td>
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
