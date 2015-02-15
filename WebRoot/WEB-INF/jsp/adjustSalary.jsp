<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>工资调整</title>
  <LINK href="css/Default.css" type=text/css rel=stylesheet>
  <style>
.text{width:150px; height:20px; border:solid 1px #699; background:#CFC;}
p{ margin-top:30px;}
#main{ text-align:center;}
</style>
  
  </head>
  
  <body bgcolor="E7F2FF">
  <div id="main">
    <p><font size="+3" face="华文行楷">工资调整</font></p>
    <table width="50%"  border="1" cellpadding="4" cellspacing="0" bordercolor="#3E8A91" bgcolor="E7F2FF" align=center>
 <form name="form1" method="post" action="AdjustSalaryServlet">
  <tr>
    <td rowspan="2" width="20%">整体调整</td>
    <td width="20%">调整方式：</td>
    <td width="20%"><input type="radio" name="mode" value="add" checked>增加<input type="radio" name="mode" value="sub">减少</td>
    <td rowspan="2"><input type="submit" name="submit" value="提交"><input type="hidden" name="form" value="form1"></td>
  </tr>  
  <tr>
    <td>调整金额</td>
    <td><input type="text" name="amount" class="text"></td>
  </tr>
   </form>
  <form name="form2" method="post" action="AdjustSalaryServlet" >
  <tr>
    <td rowspan="3">部门调整</td>
    <td>调整方式：</td>
    <td><input type="radio" name="mode" value="add" checked>增加<input type="radio" name="mode" value="sub">减少</td>
    <td rowspan="3"><input type="submit" name="submit" value="提交"><input type="hidden" name="form" value="form2"></td>
  </tr>
  
  <tr>
    <td>部门编号：</td>
    <td><select name="departNumber">
    <%
/* 	    DepartmentBean depart = new DepartmentBean();
	    ResultSet rs = depart.getAllDepartNumber(); 
	   String number = null;
	    while(rs.next()){
	    number = rs.getString("departNumber");	    
	    	out.write("<option value=\"");
	    	out.write(number+"\">");
	    	out.write(number);	    		    
	    }    */   
     %>
    
    
    </select></td>
  </tr>
  <tr>
    <td>调整数额：</td>
    <td><input type="text" name="amount" class="text"></td>
  </tr>
  </form>  
  <form name="form3" method="post" action="AdjustSalaryServlet">
  <tr>
    <td rowspan="3">个人调整</td>
    <td>调整方式：</td>
    <td><input type="radio" name="mode" value="add" checked>
      增加
        <input type="radio" name="mode" value="sub">
    减少</td>
    <td rowspan="3"><input type="submit" name="submit2" value="提交"><input type="hidden" name="form" value="form3"></td>
  </tr>
  <tr>
    <td>员工编号：</td>
    <td><input type="text" name="workerId" class="text"></td>
  </tr>
  <tr>
    <td>调整数额：</td>
    <td><input type="text" name="amount" class="text"></td>
  </tr>
  </form>
</table>	
    </div>
  </body>
</html>