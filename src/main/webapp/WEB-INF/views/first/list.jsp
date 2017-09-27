<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
   request.setAttribute("basePath", basePath);
 %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   	<div class="panel-heading">
   		<h2>列表</h2>
   	</div>
   	<div class="panel-body">
   		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th width="25%"> 姓名</th>
				    <th width="10%"> 年龄</th>
				    <th width="45%"> 地址</th>
				    <th width="20%"> 操作</th>
				</tr>
			</thead>
			<c:if test="${list.size()<=0}">
				<tr>
				    <td colspan="4" align="center">暂无数据</td>
				</tr>
			</c:if>
			<c:if test="${list.size()>0}"> 
				<c:forEach var="person" items="${list}">
					<tr>
					    <td align="center">${person.name }</td>
					    <td align="center">${person.age }</td>
					    <td align="center">${person.address }</td>
					    <td align="center"></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
