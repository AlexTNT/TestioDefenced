<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf8">
	<title><spring:message code="label.title" /></title>
	<link rel="stylesheet" href=<c:url value="/resources/CSS/main.css"/> />
</head>
<body>
<div class="def">
	DEFENCED MTABLOS
</div>
<div class="frame">
	<a href=<c:url value="/index" />><button class="navBtn navFloat">contact</button></a>
	<a  href="<c:url value="/logout" />"><button class="navBtn navLogout">X</button></a>
	  
	<h2 align="center">MyTable</h2>
	
	<form:form method="post" action="indox/add" commandName="mtable">
	
		<table width="490px">
			<tr>
				<td>Fname</td>
				<td><form:input path="fName" class="inp" /></td>
			</tr>
			<tr>
				<td>Row1</td>
				<td><form:input path="row1" class="inp" /></td>
			</tr>
			<tr>
				<td>Row2</td>
				<td><form:input path="row2" class="inp" /></td>
			</tr>
			<tr>
				<td>Row3></td>
				<td><form:input path="row3" class="inp"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" style="width:490px; height:30px; border:none; border-radius:3px; background:grey; color:lightgrey; font-weight:bold;"
					value="<spring:message code="label.addcontact"/>" /></td>
			</tr>
		</table>
	</form:form>
	
<h3>MyTable</h3>
<c:if test="${!empty mtableList}">
	<table class="data">
		<tr>
			<th>Fname</th>
			<th>Row1</th>
			<th>Row2</th>
			<th>Row3</th>
		</tr>
		<c:forEach items="${mtableList}" var="mtable">
			<tr>
				<td width="98px" align="center">${mtable.fName}</td>
				<td width="98px" align="center">${mtable.row1}</td>
				<td width="98px" align="center">${mtable.row2}</td>
				<td width="98px" align="center">${mtable.row3}</td>
				<td width="98px" align="center"><a href="indox/delete/${mtable.id}"><spring:message code="label.delete" /></a></td>
			<tr>
		</c:forEach>
	</table>
</c:if>	
	
	

</div>



</body>
</html>