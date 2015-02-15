<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<% String userName=request.getParameter("userName")==null?"":request.getParameter("userName"); %>

<html>
  <head>    
    <title>修改用户</title>	
    <LINK href="/css/Default.css" type="text/css" rel="stylesheet" />
</head>
<style>
	.text{width:150px; height:20px; border:solid 1px #699; background:#CFC;}
	p{ margin-top:30px;}
	#main{ text-align:center;}
</style>


<body bgcolor="E7F2FF">
  <div id="main">
    <form name="formUpdateUser" method="post" action="/employee/submit">
    <p><font size="+3" face="华文行楷">修改用户</font></p>
    <input type="hidden" name="action" value="update">    
    <table width="49%"  border="1" cellpadding="4" cellspacing="0" bordercolor="#3E8A91" bgcolor="E7F2FF" align="center">
  <tr>
    <td width="40%" align="right">用户名：</td>
    <td width="60%"><input type="text"  name="name" value="<%=userName%>" class="text"/></td>
  </tr>

  <tr>

    <td align="right">部门：</td>
    <td>
     <select name="department">
       <option value="cn">cn</option>
       <option value="abiz">abiz</option>
       <option value="focustech">focustech</option>
      </select>
    </td>
    </tr>
    
    <tr>
     <td align="right">薪水：</td>
     <td width="60%"><input type="text" name="salary"/></td>
     </tr>
     
  <tr>
    <td colspan="2" align="center">
    <input type="submit" value="提交"/>
    <a href="/employee/getUsers">返回</a>
    </td>
    </tr>
</table>
</form>
    </div>
  </body>
</html>
