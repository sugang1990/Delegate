<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">
	function ShowSub(theId)
	{
		theFo = eval("fold_"+theId);
		if(theFo.style.display == "none")
		{
			theFo.style.display = "block";
		}
		else
		{
			theFo.style.display = "none";
			}
	}
</script>
<style>
td{
	text-align:left;
	font-size:16px;
	}
	.menu ul{
		list-style-type:none;		
		margin-left:0px;
		}
	.menu a:link,.menu a:visited{
		display:block;
		font-size:16px;
		font-weight:bolder;
		text-decoration:none;
		line-height:30px;
		width:150px;
		background-color: #3C9;
	}
		
	.menu ul li{		
		height:25px;	
		border-top:solid 1px #FFFFFF;		
	}
		
	.menu ul li a:link,.menu ul li a:visited{
		display:block;
		color:#F66;
		line-height:25px;
		width:150px;
		padding-left:20px;
		text-decoration:none;
		background-color: #36F;
		border:inset 0px;
	}
	.menu ul li a:hover{
		background-color:#39C;
	}
</style>
<table class="menu">
<!--主目录2：部门管理-->
<tr>
<td ><a href="javascript:ShowSub('1')">员工操作</a>
</td>
</tr>
	<!--二级子目录：-->
<tr id="fold_1" style="display:none">	
    <td>
    <ul>
    	<li><a href="userUpdateAccount.jsp">账号管理</a></li>
        <li><a href="workerInfo.jsp?workerId=${sessionScope.userinfo.workerId}">信息管理</a></li>  
        <li><a href="updateWorkerInfo.jsp?workerId=${sessionScope.userinfo.workerId}" >修改资料</a></li>              
    </ul>        
    </td>   
</tr>
<!--主目录2：退出系统-->
<tr>
<td ><a href="login.jsp">退出系统</a>
</td>
</tr>
</table>