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
	<div class="def">DEFENCED</div>
	<div class="frame">
		<a href="<c:url value="/indox" />"><button class="navBtn navFloat">mtablos</button></a>
		<a href="<c:url value="/logout" />"><BUTTON
				class="navBtn navLogout">X</BUTTON></a>

		<h2 align="center">
			<spring:message code="label.title" />
		</h2>

		<form:form method="post" action="index/add" commandName="contact">

			<table width="490px">
				<tr>
					<td><form:label path="firstname">
							<spring:message code="label.firstname" />
						</form:label></td>
					<td><form:input path="firstname" class="inp" /></td>
				</tr>
				<tr>
					<td><form:label path="lastname">
							<spring:message code="label.lastname" />
						</form:label></td>
					<td><form:input path="lastname" class="inp" /></td>
				</tr>
				<tr>
					<td><form:label path="email">
							<spring:message code="label.email" />
						</form:label></td>
					<td><form:input path="email" class="inp" /></td>
				</tr>
				<tr>
					<td><form:label path="telephone">
							<spring:message code="label.telephone" />
						</form:label></td>
					<td><form:input path="telephone" class="inp" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit"
						style="width: 490px; height: 30px; border: none; border-radius: 3px; background: grey; color: lightgrey; font-weight: bold;"
						value="<spring:message code="label.addcontact"/>" /></td>
				</tr>
			</table>
		</form:form>

		<h3>
			<spring:message code="label.contacts" />
		</h3>
		<c:if test="${!empty contactList}">
			<table class="data">
				<tr>
					<th><spring:message code="label.firstname" /></th>
					<th><spring:message code="label.email" /></th>
					<th><spring:message code="label.telephone" /></th>
					<th>Действие</th>
				</tr>
				<c:forEach items="${contactList}" var="contact">
					<tr>
						<td width="122px" align="center">${contact.lastname},
							${contact.firstname}</td>
						<td width="122px" align="center">${contact.email}</td>
						<td width="122px" align="center">${contact.telephone}</td>
						<td width="122px" align="center"><a
							href="index/delete/${contact.id}"><spring:message
									code="label.delete" /></a></td>
					<tr>
				</c:forEach>
			</table>
		</c:if>

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
						<td width="122px" align="center">${mtable.fName}</td>
						<td width="122px" align="center">${mtable.row1}</td>
						<td width="122px" align="center">${mtable.row2}</td>
						<td width="122px" align="center">${mtable.row3}</td>
					</tr>
					<tr>
						<td colspan="4" align="center"><a
							href="deleteMT/${mtable.id}"><spring:message
									code="label.delete" /></a></td>
						<td colspan="4"><hr /></td>
					<tr>
				</c:forEach>
			</table>
		</c:if>



	</div>



</body>
</html>