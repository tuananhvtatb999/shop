<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Upload file</title>
</head>
<body>
	<form:form method="POST" action="uploadFile"
		enctype="multipart/form-data" modelAttribute="myFileEntity">
    File: <input type="file" name="multipartFile" multiple="multiple" />
		<br />
		<br />
    Description: <form:input path="description" />
		<br />
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>
