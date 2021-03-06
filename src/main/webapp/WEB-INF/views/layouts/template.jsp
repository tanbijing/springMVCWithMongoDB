<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<% String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
   request.setAttribute("basePath", basePath);
 %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file="../layouts/_bootstrap_css.jsp" %>
<script type="text/javascript" src="js/jquery.min.js"></script>
<title>MongoDB</title>
</head>
<body>
	<div class="container">
		<div class="panel panel-default text-center">
			<div class="panel-body">
				<tiles:insertAttribute name="header" />
			</div>
		</div>
		<div class="panel panel-default text-center">
	    	<tiles:insertAttribute name="body" />
	   	</div>
	   	<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>