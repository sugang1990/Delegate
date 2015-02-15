<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- <%@page import="java.sql.*,com.bean.DepartmentBean" errorPage="errorPage.jsp" %> --%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>员工调动</title>	
    <LINK href="css/Default.css" type=text/css rel=stylesheet>
</head>

<style>
.text{width:150px; height:20px; border:solid 1px #699; background:#CFC;}
p{ margin-top:30px;}
#main{ text-align:center;}
</style>

<body bgcolor="E7F2FF">

  <div id="main">
    <form name="formAjustWorker" method="post" action = "AdjustWorker">
    <p><font size="+3" face="华文行楷">员工调动</font></p>
    <table width="50%"  border="1" cellpadding="4" cellspacing="0" bordercolor="#3E8A91" bgcolor="E7F2FF" align=center>
  <tr>
    <td align="center">请输入您要调动的工号：</td>
    <td><input type="text" name="workerId" class="text"></td>
    </tr>
  <tr>
    <td align="center">请选择您要调动的部门号：</td>
    <td><select name="departNumber">
    <%
	  /*   DepartmentBean depart = new DepartmentBean();
	    ResultSet rs = depart.getAllDepartNumber(); 
	   String number = null;
	    while(rs.next()){
	    number = rs.getString("departNumber");	    
	    	out.write("<option value=\"");
	    	out.write(number+"\">");
	    	out.write(number);	    		    
	    }       */
     %> 
    </select></td>
    </tr>  
  <tr>
    <td align="center" colspan="2">
    <input class="Button1" type="submit" value="提交">&nbsp;&nbsp;   
    <input class="Button1" type = "button" value = "返回" onclick="javascript:history.back()"></td>
    </tr>
</table>
</form>
    </div>
  </body>
</html>
