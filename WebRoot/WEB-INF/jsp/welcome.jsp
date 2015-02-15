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
<tr>
 <td>
      <a target="_blank" href="/food.html">我的前端</a>
 </td>
</tr>
<!-- <tr id="fold_0" style="display:none">	
	<td>
    <ul>
    	<li><a href="checkUser">用户审核</a></li>
        <li><a href="addUser">添加用户</a></li>
        <li><a href="deleteUser">删除用户</a></li>
        <li><a href="getUsers">查看所有用户</a></li>
    </ul>        
    </td>缩进    
</tr> -->
<!--主目录2：部门管理-->

	<!--二级子目录：-->
<!-- <tr id="fold_1" style="display:none">	
    <td>
    <ul>
    	<li><a href="getDepartments">显示所有部门</a></li>
        <li><a href="addDepartment">添加部门</a></li>
        <li><a href="updateDepart">修改部门</a></li>
        <li><a href="deleteDepartment">删除部门</a></li>
    </ul>        
    </td>   
</tr> -->
<tr>	
	<td>
               <a href="javascript:ShowSub('2')">员工信息维护     </a> 
    </td>
</tr>
<tr id="fold_2" style="display:none">	
	<td>
    <ul>
    	<li><a target="_blank" href="getWorkers">显示所有员工</a></li>
        <li><a target="_blank" href="addWorker">添加员工</a></li>
        <li><a target="_blank" href="deleteWorker">删除员工</a></li>
        <!-- <li><a href="updateWorker1">修改员工</a></li> -->
    </ul>       
    </td>
</tr>
<!--主目录4：综合统计-->
<!-- <tr>
<td ><a href="javascript:ShowSub('3')">综合统计</a>
</td>
</tr> -->
	<!--二级子目录：-->
<!-- <tr id="fold_3" style="display:none">	
	<td>
    <ul>
    	<li><a href="adjustSalary">工资调整</a></li>
        <li><a href="departmentInfo">部门信息统计</a></li>
        <li><a href="adjustWorker">员工调动</a></li>
    </ul>       
    </td>
</tr> -->
<!--主目录4：退出系统-->
<!-- <tr>
<td ><a href="">退出系统</a>
</td>
</tr> -->
</table>