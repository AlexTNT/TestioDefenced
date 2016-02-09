<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title><spring:message code="label.title" /></title>
</head>
<body>
	<style>
.banner {
	height: 150px;
	vertical-align: middle;
	font-weight: bold;
	font-size: 200%;
}

.frame {
	position: absolute;
	/*top:50%;*/
	left: 50%;
	width: 500px;
	heigth: 300px;
	/*margin-top:-100px;*/
	margin-left: -250px;
	border-radius: 10px;
	background: lightgrey;
	padding: 20px;
	font-family: monospace;
}

.inp {
	width: 100%;
	paddin-top: 8px;
	height: 22px;
	font-size: 16px;
	border: none;
	border-radius: 3px;
}

.def {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 50px;
	background: #565656;
	color: lightgrey;
	font-size: 30px;
	padding-top: 18px;
	padding-left: 20px;
}

.btn {
	width: 49%;
	margin-right: 1%;
	float: left;
	height: 30px;
	background: #565656;
	color: lightgrey;
	border: none;
	border-radius: 5px;
	font-weight: bold;
}

.bigW {
	width: 69%;
}

.smalW {
	width: 29%
}

.fullW {
	width: 100%;
}
</style>
	<div class="def">DEFENCED</div>
	<div class="frame">
		<div class="banner">
			Доступ закрыт...<br /> Пожалуйста авторизуйтесь
		</div>
		<HR />
		<!-- a href="<c:url value="/index" />">
		<spring:message code="label.contacts" />
	</a><br/-->

		<c:if test="${not empty param.error}">
			<font color="red"> <spring:message code="label.loginerror" />
				: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
			</font>
		</c:if>
		<form method="POST"
			action="<c:url value="/j_spring_security_check" />">
			<table width="490px">
				<tr>
					<td width="120px" align="right"><spring:message
							code="label.login" /></td>
					<td><input type="text" name="j_username" class="inp" /></td>
				</tr>
				<tr>
					<td width="120px" align="right"><spring:message
							code="label.password" /></td>
					<td><input type="password" name="j_password" class="inp" /></td>
				</tr>
				<tr>
					<td width="120px" align="right"><spring:message
							code="label.remember" /></td>
					<td><input type="checkbox" name="_spring_security_remember_me" /></td>
				</tr>
			</table>
			<input type="submit" value="Login" class='btn bigW' /> <input
				type="reset" value="Reset" class='btn smalW' />
		</form>
	</div>
</body>
</html>