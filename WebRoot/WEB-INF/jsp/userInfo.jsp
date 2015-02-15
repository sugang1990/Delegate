<%-- <%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="com.bean.UserBean"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>账号信息</title>
<link rel="stylesheet" href="Styles/style.css" type="text/css">
</head>
<body style="background-color:#2F6FA1">
<p align="center" class="title1">账号信息</p>
<div style="background-image:url(image/login-top.JPG); margin:0px auto 0px; width:400px; height:20px;"></div>
<div style="background-color:#FFFFFF; margin:0px auto 0px; width:400px;">
  <form action="userUpdateAccount.jsp" method="post">
  <input type="hidden" name="action" value="update">
    <table align="center" cellspacing="10">
      <tr>
        <td align="right"><strong>用户编号:</strong></td>
        <td align="left">${sessionScope.userinfo.userId}</td>
      </tr>
      <tr>
        <td width="150" align="right"><strong>用户名:</strong> </td>
        <td width="200" align="left">${sessionScope.userinfo.userName}</td>
      </tr>
      <tr>
        <td align="right"><strong>Email:</strong></td>
        <td align="left">${sessionScope.userinfo.userEmail}</td>
      </tr>
      <tr>
        <td align="right"><strong>用户状态:</strong></td>
        <td align="left">${sessionScope.userinfo.state == true?"审核":"未审核"} 
        </td>
      </tr>
      <tr>
        <td align="right"><strong>用户角色:</strong></td>
        <td align="left">${sessionScope.userinfo.isManager == true?"管理员":"普通用户"} 
        </td>
      </tr>
      <tr>
        <td align="right"><strong>员工编号:</strong></td>
        <td align="left">${sessionScope.userinfo.workerId}
        </td>
      </tr>     
      <tr align="center">
        <td colspan="2"><input type="submit" id="submit" value="修改" />
          <input type="button" value="返回" onclick="javascript:history.back()" /></td>
      </tr>
    </table>
  </form>
</div>
</body>
</html>
 --%>