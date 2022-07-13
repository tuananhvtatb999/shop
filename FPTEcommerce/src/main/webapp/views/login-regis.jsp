<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>FPT E-Commerce</title>
<script src="https://kit.fontawesome.com/64d58efce2.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/login-regis.css">
</head>
<body>
	<div class="container">
		<div class="forms-container">
			<div class="signin-signup">
				<form:form action="authenticateTheUser" cssClass="sign-in-form" method="post">
					<h2 class="title">Sign In</h2>
					<c:if test="${param.error != null }">
						<span class="error"> Invalid username/password </span>
						<br>
						<br>
					</c:if>
					<div class="input-field">
						<i class="fas fa-user"></i> <input type="text" placeholder="Email"
							name="email">
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="password"
							placeholder="Password" name="password">
					</div>
					<button type="submit" class="btn solid">Sign up</button>
					<p class="social-text">Or Sign in with social platforms</p>
					<div class="social-media">
						<a href="#" class="social-icon"> <i class="fab fa-facebook-f"></i>
						</a> <a href="#" class="social-icon"> <i class="fab fa-twitter"></i>
						</a> <a href="#" class="social-icon"> <i class="fab fa-google"></i>
						</a> <a href="#" class="social-icon"> <i
							class="fab fa-linkedin-in"></i>
						</a>
					</div>
				</form:form>

	<%-- 			<form:form action="doRegister" cssClass="sign-up-form" method="post"
					modelAttribute="user">
					<h2 class="title">Sign Up</h2>
					<div class="input-field">
						<i class="fas fa-user"></i>
						<form:input type="text" placeholder="Username" path="username" />
						<form:errors path="username" cssClass="error" />
						<c:if test="${message1 != null }">
							<span class="error"><c:out value="${message1 }"></c:out></span>
						</c:if>
					</div>
					<div class="input-field">
						<i class="fas fa-envelope"></i>
						<form:input type="text" placeholder="Email" path="email" />
						<form:errors path="email" cssClass="error" />
						<c:if test="${message2 != null }">
							<span class="error"><c:out value="${message2 }"></c:out></span>
						</c:if>
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i>
						<form:input type="password" placeholder="Password" path="password" />
					</div>

					<button type="submit" class="btn solid">Sign Up</button>
					<p class="social-text">Or Sign up with social platforms</p>
					<div class="social-media">
						<a href="#" class="social-icon"> <i class="fab fa-facebook-f"></i>
						</a> <a href="#" class="social-icon"> <i class="fab fa-twitter"></i>
						</a> <a href="#" class="social-icon"> <i class="fab fa-google"></i>
						</a> <a href="#" class="social-icon"> <i
							class="fab fa-linkedin-in"></i>
						</a>
					</div>
				</form:form>  --%>

			</div>
		</div>

		<div class="panels-container">
			<div class="panel left-panel">
				<div class="content">
					<h3>New Here ?</h3>
					<p>FPT E-Commerce</p>
					<button class="btn transparent" id="sign-up-btn">Sign Up</button>
				</div>

				<img
					src="${pageContext.request.contextPath}/images/undraw_web_shopping_re_owap.svg"
					class="image" alt="">
			</div>

			<div class="panel right-panel">
				<div class="content">
					<h3>One of us ?</h3>
					<p>FPT E-Commerce</p>
					<button class="btn transparent" id="sign-in-btn">Sign In</button>
				</div>

				<img
					src="${pageContext.request.contextPath}/images/undraw_shopping_re_hdd9.svg"
					class="image" alt="">
			</div>
		</div>

	</div>
	<script src="${pageContext.request.contextPath}/js/login-regis.js"></script>
</body>
</html>