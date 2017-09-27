<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
