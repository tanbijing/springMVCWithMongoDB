<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
   request.setAttribute("basePath", basePath);
 %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file="../layouts/_bootstrap_css.jsp" %>
<script type="text/javascript" src="js/jquery.min.js"></script>
<title>Login</title>
</head>
<body>
	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-body">
				<%@include file="/WEB-INF/views/layouts/_top.jsp" %>
			</div>
		</div>
		<div class="panel panel-default text-center">
	    	<div class="panel-heading">
	    		<h2>数据库列表</h2>
	    	</div>
	    	<div class="panel-body">
	    		<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th width="50%"> 数据库名</th>
						    <th width="50%"> 操作</th>
						</tr>
					</thead>
					<c:if test="${dbs.size()<=0}">
						<tr>
						    <td colspan="2" align="center">暂无数据</td>
						</tr>
					</c:if>
					<c:if test="${dbs.size()>0}"> 
						<c:forEach var="db" items="${dbs}">
							<tr>
							    <td align="center">${db}</td>
							    <td align="center">
							    	<span>修改</span> | 
							    	<span>删除</span>
							    </td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
	   	</div>
	   	<%@include file="/WEB-INF/views/layouts/_footer.jsp" %>
	</div>
</body>
</html>