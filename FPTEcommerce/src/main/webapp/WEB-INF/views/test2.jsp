<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>login ok</h1>
	<div style="position: absolute; top: 10px; right: 25px;">
		<form:form action="logout" method="post">
			<input type="submit" value="Logout" />
		</form:form>
	</div>

</body>
</html>