<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Upload success</title>
</head>
<body>
	<h1>${message}</h1>
	<br /> description: ${description}
	<br />
	<c:forEach items="${listImage }" var="item">
		<img src="${item.path }" />
	</c:forEach>

</body>
</html>
