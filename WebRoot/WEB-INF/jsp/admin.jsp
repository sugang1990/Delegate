<%-- <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>管理员登录</title>
	<link type="text/css" rel="stylesheet"  href="css/admin.css"/>
	<link type="text/css" rel="stylesheet"  href="css/common.css"/>
  </head>   
<body onload="fload()">
  <div id="main"> 	
    	<div id="header">
    	</div>  
    <div id="top">
		<p style=" line-height:25px; margin-left:30px;"><c:choose>
          
          <c:when test="${sessionScope.userinfo.userName != null}">欢迎您:${sessionScope.userinfo.userName}&nbsp;&nbsp;<a href="userInfo.jsp">[个人信息]</a></c:when>
    </c:choose></p>
	</div> 
    <div id="center">
	    <div id="cLeft">
	    <c:choose>
          <c:when test="${sessionScope.userinfo.userName == 'admin'}"><%@include file="adminMenu.jsp" %></c:when>
    		<c:otherwise><%@include file="userMenu.jsp" %></c:otherwise>
    </c:choose>
	    	
	    </div>
		<div id="cRight">
			<div style="width:200px;height:200px;">
			
			</div>		
        </div>
    </div>
  </div>
</body>
</html>
 --%>