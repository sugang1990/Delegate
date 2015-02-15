<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>修改个人信息</title>
<link rel="stylesheet" href="Styles/style.css" type="text/css">
</head>
<%String userName= request.getParameter("userName"); %>

<body style="background-color:#2F6FA1">
<p align="center" class="title1">修改个人信息</p>
<div style="background-image:url(image/login-top.JPG); margin:0px auto 0px; width:400px; height:20px;"></div>
<div style="background-color:#FFFFFF; margin:0px auto 0px; width:400px;">
  <form action="UpdateUserServlet" method="post" onSubmit="return checkAll2()">
  <input type="hidden" name="action" value="update">
    <table align="center" cellspacing="10">
      <tr>
        <td width="150" align="right"><strong>用户名:</strong> </td>
        <td width="200" align="left"><input type="text" name="userName" id="userName" class="text" value="${sessionScope.userinfo.userName}" readonly="readonly" /></td>
      </tr>
      <tr>
        <td align="right"><strong>Email:</strong></td>
        <td align="left"><input type="text" name="userEmail" id="userEmail" class="text" value="${userInfo.userEmail}" /></td>
      </tr>
      <tr>
        <td align="right"><strong>原密码:</strong></td>
        <td align="left"><input type="password" name="userPwd" id="userPwd" class="text" />
        </td>
      </tr>
      <tr>
        <td align="right"><strong>新密码:</strong></td>
        <td align="left"><input type="password" name="userPwd1" id="userPwd1" class="text" />
        </td>
      </tr>
      <tr>
        <td align="right"><strong>确认密码:</strong></td>
        <td align="left"><input type="password" name="userPwd2" id="userPwd2" class="text" />
        </td>
      </tr>
      <tr align="center">
        <td colspan="2"><input type="submit" id="submit" value="修改" />
          <input type="reset" id="reset" value="清空" />
          <input type="button" value="返回" onclick="javascript:history.back()" /></td>
      </tr>
    </table>
  </form>
</div>
</body>
</html>
