<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@taglib prefix="sg" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�û�����</title>
<link rel="stylesheet" href="/css/table.css" type="text/css">
</head>
<body>
<div id="side2"><embed src="/music/dream.mp3" autostart=true loop=true hidden="false"/> </div>
<div id="side1">
 <img alt="����ͼƬ" src="/img/head2.jpg">
</div>
<div  id="main">
	<form method="post" action="/employee/result">
      <table>
          <thead>
             <tr><th colspan="3">�� �� �� ��</th></tr>
          </thead>
          <tbody>
             <tr>
                 <td class="row1">�û���:</td>
                 <td><input type="text" name="name"/></td>
                 <td><sg:errors path="name" /></td>
             </tr>
             <tr>
                 <td class="row1">��  ��:</td>
                 <td><input type="password" name="password" /></td>
                 <td><sg:errors path="password" /></td>
             </tr>
            <tr>
                 <td class="row1">ȷ������:</td>
                 <td><input type="password" name="passwordConfirm" /></td>
                 <td><sg:errors path="passwordConfirm" /></td>
                 <td> <c:out value="${message}" ></c:out></td>
             </tr>
              <tr>
                 <td class="row1">��֤��:</td>
                 <td><input id="icode" type="text" name="code"/></td>
                 <td><sg:errors path="code" />	
					<span id="codes" data-code="${randomNumbers}">
					   <c:out value="${randomNumbers}" ></c:out>
					 </span>
				 </td>
             </tr> 
             <tfoot>
             <tr>
              <td><a href="#" >�޸�����</a></td>
              <td><a href="#" >����ע��</a></td>
              <td><input id="login" type="submit" value="���ٵ���"/></td>
             </tr>
             </tfoot>
          </tbody>
      </table>
	</form>
  </div>
   <script type="text/javascript" src="/js/common/jquery-1.7.2.js"></script>
   <script type="text/javascript" src="/js/identify.js"></script>
</body>
</html>