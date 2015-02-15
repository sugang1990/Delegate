<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.sql.*,java.io.*" errorPage="errorpage.jsp" %>
<HTML>
<HEAD><TITLE>error</TITLE></HEAD>
<LINK href="images/Default.css" type=text/css rel=stylesheet>
 <body  bgcolor="E7F2FF">
<P align="center"><font color="#660000" size=2><B> 
  <%	
  		request.setCharacterEncoding("UTF-8");
		if (request.getAttribute("problem") != null) {
		String str =(String) request.getAttribute("problem");		
%>
  <%= str %> 
  <% } else { %>
  (No error code) 
  <% } %>
  </B></font></P>
  <br/>

<center><B><a href="javascript:history.back();"> &lt;&lt;Back</a></B></center>
</body>
</HTML>