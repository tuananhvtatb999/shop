<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- require -->
<link href="http://fonts.cdnfonts.com/css/sf-pro-display"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
	integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!------------------ SLIDE  IMAGE --------------------->
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<!------------------ CSS ---------------------->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/base.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/shared.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/shared.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pages/setting.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/breadcrumb.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/modal.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/pagination.css" />
<title>Home</title>
</head>
<body>
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span> <span></span>
			</div>
		</div>
	</div>
	<div class="Employed">
		<!-- Header -->
		<header class="header-wrapper">
			<div class="header fixed-header">
				<!-- Header - top-->
				<div class="header-top">
					<div class="header-top-left">
						<i class="fas fa-home header-top-left-link"></i> <a
							class="header-top-left-link" href="#">Bán hàng cùng FPT</a>
						<c:choose>
							<c:when test="${sessionScope.email == null}">
							</c:when>
							<c:when test="${sessionScope.email != null}">
								<i class="fas fa-home header-top-left-link"></i>
								<a class="header-top-left-link"
									href="${pageContext.request.contextPath}/customer/registerShop">Đăng
									kí để trở thành người bán</a>
							</c:when>
						</c:choose>
					</div>
					<div class="header-top-right">
						<div>
							<span class="header-top-right-link">Hotline</span> <a
								class="header-top-right-link" href="tel:0906880960">0906.880.960</a>
						</div>
						<div>
							<i class="fab fa-facebook-messenger header-top-right-link"
								style="margin-right: 3px"></i> <a class="header-top-right-link"
								href="#">Bán hàng</a>
						</div>
					</div>
				</div>
				<!-- end Header Top -->
				<!-- Header - bottom -->
				<div class="header-bottom">
					<!-- Header-left -->
					<ul class="header-bottom-left">
						<li class="header-bottom-logo"><a href="#"> <img
								src="./assets/img/logo.svg" alt="logo" />
						</a></li>
						<li class="header-bottom-item"><a href="#"> <span
								class="header-bottom-item-text text-hover active">Shopping</span>
						</a></li>
						<li class="header-bottom-item"><a href="#"> <span
								class="header-bottom-item-text text-hover">Style</span>
						</a></li>
					</ul>
					<!-- end Header-left -->
					<!-- Header-center -->
					<ul class="header-bottom-center">
						<div class="header-center-input">
							<input type="text" placeholder="Nhập từ khóa tìm kiếm " />
						</div>
					</ul>
					<!-- end Header-center -->
					<!-- Header-right -->
					<ul class="header-bottom-right">
						<li class="header-bottom-right-items user action ">
							<div class="profile" onclick="menuToggle();">
								<div class="header-bottom-right-item">
									<a href="#"> <i class="far fa-user"></i>
									</a>
								</div>
								<div class="profile-right">
									<c:choose>
										<c:when test="${sessionScope.email == null}">
											<a class="about-user" href="#"> <span
												class="about-user-1">Tài khoản</span> <span
												class="about-user-2">Xin chào!</span>
											</a>
										</c:when>
										<c:when test="${sessionScope.email != null}">
											<a class="about-user"
												href="${pageContext.request.contextPath}/customer/updateProfile">
												<span class="about-user-2">Xin chào!</span> <span
												class="about-user-1"><c:out
														value="${sessionScope.email }"></c:out></span>
											</a>
										</c:when>
									</c:choose>
								</div>
							</div>
							<div class="menu">
								<ul>
									<c:choose>
										<c:when test="${sessionScope.email == null}">
											<li><a href="login">Đăng Nhập</a></li>
											<li class="border-top"><a href="register">Đăng Ký</a></li>
										</c:when>
										<c:when test="${sessionScope.email != null}">
											<li><a href="logout"> Logout </a></li>
										</c:when>
									</c:choose>
								</ul>
							</div>
						</li>

					</ul>

					<!-- end Header-right -->
				</div>
				<!-- ------------------------ Begin BREADCRUMB ------------------------------- -->
				<ul class="category">
					<li class="category-item"><a href="#" class="text-hover"><span>Sản
								phẩm</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo cổ trái tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>Nam</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo cổ trái tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>Nữ</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo cổ trái tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>Phụ
								kiện</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo cổ trái tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>Thương
								hiệu</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo cổ trái tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>Xếp
								hạng</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo cổ trái tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>Mới
								nhất</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo cổ trái tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>Giá
								sốc</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo cổ trái tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
					<li class="category-item"><a href="#" class="text-hover"><span>Sự
								kiện</span></a>
						<div class="category__dropdown-wrapper">
							<ul class="category__dropdown">
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													thun</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo cổ trái tim</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
									</ul>
								</li>
								<li class="category__dropdown-block">
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo vải Phượng Hoàng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Áo
													khoác</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo khoác da hổ</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Áo Bomber</span></a></li>
									</ul>
									<ul class="dropdown__list--category">
										<li class="dropdown__item--category menu-hover"><a
											href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
										</li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống rộng</span></a></li>
										<li class="dropdown__item--category text-hover"><a
											href="#"><span>Quần ống loe</span></a></li>
									</ul>
								</li>
							</ul>
						</div></li>
				</ul>
				<!-- ------------------------ End BREADCRUMB ------------------------------- -->
				<!-- end Header - bottom -->
			</div>
		</header>
		<!-- end Header -->

		<!-- Slide -->

		<div class="swiper-container two page-section bg-w"
			style="margin-top: 1px; padding-bottom: 60px">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="slider-image">
						<img src="${pageContext.request.contextPath}/imgs/slidetop-3.webp"
							alt="" />
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slider-image">
						<img src="${pageContext.request.contextPath}/imgs/slidetop-1.webp"
							" alt="" />
					</div>
				</div>
				<div class="swiper-slide">
					<div class="slider-image">
						<img src="${pageContext.request.contextPath}/imgs/slidetop-2.webp"
							" alt="" />
					</div>
				</div>
				<!-- Add Pagination -->
			</div>
			<div class="swiper-pagination"></div>

			<div class="swiper-button-prev"></div>
			<div class="swiper-button-next"></div>
		</div>
		<!-- end Slide -->

		<!-- Content -->
		<div class="content">
			<section class="product page-section">
				<div class="tittle-product">
					<h3>Sản phẩm bán chạy</h3>
				</div>
				<ul class="category-product">
					<c:choose>
						<c:when
							test="${listSubCategory !=null && listSubCategory.size() gt 0}">
							<c:forEach items="${requestScope.listSubCategory }" var="item"
								varStatus="theCount">
								<li class="category-product-item"><a href="#"><c:out
											value="${item.nameSub }" /></a></li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td style="color: red; text-align: center" colspan="12">Không
									có danh mục nào</td>
							</tr>
						</c:otherwise>

					</c:choose>
				</ul>
				<ul class="category-about row">
					<c:choose>
						<c:when
							test="${listSubCategory !=null && listSubCategory.size() gt 0}">
							<c:forEach items="${requestScope.listProduct }" var="item"
								varStatus="theCount">
								<li class="col c-6 m-4 l-2-4 py-1"><a href="#">

										<div class="card">
											<div class="card-img">
												<img src="${item.pathImage }" alt="" />
											</div>
											<div class="card-text">

												<a href="detailProduct?id=${item.id }">
													<h3 class="card-title">
														<c:out value="${item.name }" />
													</h3>
												</a>
												<p class="card-des truncate">${item.description }</p>
												<%-- 	<span class="card-price"> <c:out value="${item.unitPrice }" /> </span> 
 										 <span
											class="card-price-discount"> -50% </span> --%>
												<p class="card-price-cost">
													<c:out value="${item.unitPrice }" />
												</p>
											</div>
										</div>
								</a></li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td style="color: red; text-align: center" colspan="12">Không
									có sản phẩm nào</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</ul>
			</section>

			<section class="page-section mt-1">
				<div class="tittle-product">
					<h3>Tiêu điểm</h3>
				</div>
				<ul class="category-about row">
					<li class="col c-12 m-6 l-6"><a href="#">
							<div class="card">
								<img
									src="${pageContext.request.contextPath}/imgs/tieudiem1.webp"
									alt="tieu diem" />
							</div>
					</a></li>
					<li class="col c-12 m-6 l-6"><a href="#">
							<div class="card">
								<img
									src="${pageContext.request.contextPath}/imgs/tieudiem2.webp"
									alt="tieu diem" />
							</div>
					</a></li>
				</ul>
			</section>

			<section class="page-section mt-1">
				<div class="tittle-product">
					<h3>Top danh mục</h3>
					<ul class="top-category row">
						<c:forEach items="${requestScope.listCategory }" var="item"
							varStatus="theCount">
							<li class="col c-4 m-3 l-2-4"><a href="#">
									<div class="top-item">
										<span><i class="fas fa-tshirt"></i></span>
										<div class="top-text">
											<p class="top-title">
												<c:out value="${item.name }" />
											</p>
											<!-- <span class="top-quant">7,337</span><span>sản phẩm</span> -->
										</div>
										<span class="top-arr"><i class="fas fa-angle-right"></i></span>
									</div>
							</a></li>
						</c:forEach>
					</ul>
				</div>
			</section>

			<section class="page-section mt-1 three">
				<div class="tittle-product"
					style="margin-bottom: 15px; padding-left: 40px">
					<h3>Thương hiệu mới</h3>
				</div>
				<div class="slide-bottom-wraper">
					<ul class="slide-bottom bg-w">
						<li class="slide-bottom-item"><a href="#">
								<div class="slide-bottom-img">
									<img
										src="${pageContext.request.contextPath}/imgs/slidebot-1.webp"
										alt="bran-new" />
								</div>
						</a></li>
						<li class="slide-bottom-item active"><a href="#">
								<div class="slide-bottom-img">
									<img
										src="${pageContext.request.contextPath}/imgs/slidebot-2.webp"
										alt="bran-new" />
								</div>
						</a></li>
						<li class="slide-bottom-item"><a href="#">
								<div class="slide-bottom-img">
									<img
										src="${pageContext.request.contextPath}/imgs/slidebot-3.webp"
										alt="bran-new" />
								</div>
						</a></li>
						<li class="slide-bottom-item"><a href="#">
								<div class="slide-bottom-img">
									<img
										src="${pageContext.request.contextPath}/imgs/slidebot-4.webp"
										alt="bran-new" />
								</div>
						</a></li>
						<li class="slide-bottom-item"><a href="#">
								<div class="slide-bottom-img">
									<img
										src="${pageContext.request.contextPath}/imgs/slidebot-5.webp"
										alt="bran-new" />
								</div>
						</a></li>
						<li class="slide-bottom-item"><a href="#">
								<div class="slide-bottom-img">
									<img
										src="${pageContext.request.contextPath}/imgs/slidebot-6.webp"
										alt="bran-new" />
								</div>
						</a></li>
					</ul>
					<div class="btn-group">
						<span class="btn-pre"><i class="fas fa-angle-left"></i></span> <span
							class="btn-next"><i class="fas fa-angle-right"></i></span>
					</div>
					<div class="dots"></div>
				</div>
			</section>

			<section class="page-section mt-1">
				<div class="tittle-product">
					<h3>Sản phẩm mới</h3>
				</div>
				<ul class="category-about row">
					<c:choose>
						<c:when
							test="${listProductDate !=null && listProductDate.size() gt 0}">
							<c:forEach items="${requestScope.listProductDate }" var="item"
								varStatus="theCount">
								<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
										<div class="card">
											<div class="card-img">
												<img src="${item.pathImage }" alt="" />
											</div>
											<div class="card-text">
												<h3 class="card-title">
													<c:out value="${item.name }" />
												</h3>
												<p class="card-des truncate">${item.description }</p>
												<%-- 	<span class="card-price"> <c:out value="${item.unitPrice }" /> </span> 
 										 <span
											class="card-price-discount"> -50% </span> --%>
												<p class="card-price-cost">
													<c:out value="${item.unitPrice }" />
												</p>
											</div>
										</div>
								</a></li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td style="color: red; text-align: center" colspan="12">Không
									có sản phẩm nào</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</ul>
			</section>

			<section class="page-section mt-1">
				<div class="tittle-product">
					<h3>Thương hiệu bạn có thể biết</h3>
				</div>
				<ul class="category-about row">
					<li class="col c-12 m-4 l-4"><a href="#">
							<div class="card">
								<img
									src="${pageContext.request.contextPath}/imgs/slidebot-4.webp"
									alt="tieu diem" />
							</div>
					</a></li>
					<li class="col c-12 m-8 l-8"><a href="#">
							<div class="card">
								<img
									src="${pageContext.request.contextPath}/imgs/last_slide_1.webp"
									alt="tieu diem" />
							</div>
					</a></li>
				</ul>
			</section>

			<section class="page-section mt-1">
				<div class="tittle-product">
					<h3>Gợi ý cho bạn</h3>
				</div>
				<ul class="category-about wrap row">
					<c:choose>
						<c:when
							test="${listSubCategory !=null && listSubCategory.size() gt 0}">
							<c:forEach items="${requestScope.listProduct }" var="item"
								varStatus="theCount">
								<li class="col c-6 m-4 l-2-4 py-1"><a href="${pageContext.request.contextPath}/detailProduct?id=${item.id}">

										<div class="card">
											<div class="card-img">
												<img src="${item.pathImage }" alt="" />
											</div>
											<div class="card-text">
												<h3 class="card-title">
													<c:out value="${item.name }" />
												</h3>
												<p class="card-des truncate">${item.description }</p>
												<%-- 	<span class="card-price"> <c:out value="${item.unitPrice }" /> </span> 
 										 <span
											class="card-price-discount"> -50% </span> --%>
												<p class="card-price-cost">
													<c:out value="${item.unitPrice }" />
												</p>
											</div>
										</div>
								</a></li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td style="color: red; text-align: center" colspan="12">Không
									có sản phẩm nào</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</ul>
				<button class="button primary">
					<span>Xem thêm</span>
				</button>
			</section>
		</div>
		<!-- end Content -->

		<!-- footer -->
	</div>
	<footer class="footer">
		<div class="footer_top">
			<div class="footer_top-item">
				<div class="block_wrapper">
					<ul class="block_list">
						<li class="block_item logo"><a href="/"><img
								src="${pageContext.request.contextPath}/imgs/logo-white.png"
								alt="logo-white" /></a></li>
						<li class="block_item"><a class="block_link"
							href="tel:0906.880.960" title="Hotline: 0906.880.960">Hotline:
								0906.880.960</a></li>
						<li class="block_item"><a class="block_link" href="/"
							title="9h-18h từ Thứ 2 đến Thứ 6">(9h-18h từ Thứ 2 đến Thứ 6)</a></li>
						<li class="block_item"><a class="block_link"
							href="email:customer@dosiinvn.com"
							title="Email: customer@dosiinvn.com">Email:
								customer@dosiinvn.com</a></li>
					</ul>
					<h5 class="block_heading">Kết nối với chúng tôi</h5>
					<ul class="block-app-list">
						<li class="block-app-item"><a
							href="https://www.instagram.com/dosiin.magz/" title="Instagram"><i
								class="fab fa-instagram-square"></i></a></li>
						<li class="block-app-item"><a
							href="https://www.facebook.com/dosiinvietnam/" title="Facebook"><i
								class="fab fa-facebook"></i></a></li>
					</ul>
				</div>
				<div class="block_wrapper">
					<h5 class="block_heading">Về Dosiin</h5>

					<ul class="block_list">
						<li class="block_item"><a class="block_link" href="#">Các
								điều khoản khác</a></li>
						<li class="block_item"><a class="block_link" href="#">Hợp
								tác</a></li>
						<li class="block_item"><a class="block_link" href="#">Hỏi
								và Đáp</a></li>
						<li class="block_item"><a class="block_link" href="#">Hạn
								chế với thời gian và quản lý</a></li>
						<li class="block_item"><a class="block_link" href="#">Nghĩa
								vụ của người bán</a></li>
						<li class="block_item"><a class="block_link" href="#">Nghĩa
								vụ của khách hàng</a></li>
						<li class="block_item"><a class="block_link" href="#">Chính
								sách vận chuyển</a></li>
						<li class="block_item"><a class="block_link" href="#">Về
								chúng tôi</a></li>
					</ul>
				</div>
				<div class="block_wrapper">
					<h5 class="block_heading">Nội dung chính sách</h5>
					<ul class="block_list">
						<li class="block_item"><a class="block_link" href="#">Chính
								sách bảo mật</a></li>
						<li class="block_item"><a class="block_link" href="#">Điều
								khoản dịch vụ</a></li>
						<li class="block_item"><a class="block_link" href="#">Chính
								sách thành viên</a></li>
						<li class="block_item"><a class="block_link" href="#">Chính
								sách đổi trả hàng</a></li>
						<li class="block_item"><a class="block_link" href="#">Chính
								sách thanh toán</a></li>
						<li class="block_item"><a class="block_link" href="#">Chính
								sách bảo mật thanh toán</a></li>
						<li class="block_item"><a class="block_link" href="#">Chính
								sách dành cho khách hàng</a></li>
						<li class="block_item"><a class="block_link" href="#">Chính
								sách bảo hành sản phẩm</a></li>
					</ul>
				</div>
				<div class="block_wrapper">
					<h5 class="block_heading">Cách thức thanh toán</h5>
					<ul class="block_card-list">
						<li class="block_card-item">
							<div class="card-item_list">
								<a class="block_link" href="/" title="COD Tiền mặt">
									<div class="card-item_box">
										<div class="card-item_icon">
											<img
												src="${pageContext.request.contextPath}/imgs/social/cod.webp"
												alt="Tiền mặt" title="Tiền mặt" />
										</div>
										<div class="card-item_text">Tiền mặt</div>
									</div>
								</a><a class="block_link" href="/" title="Momo">
									<div class="card-item_box">
										<div class="card-item_icon">
											<img
												src="${pageContext.request.contextPath}/imgs/social/momo.png"
												alt="Momo" title="Momo" />
										</div>
										<div class="card-item_text">Momo</div>
									</div>
								</a>
							</div>
						</li>
						<li class="block_card-item">
							<div class="card-item_list">
								<a class="block_link" href="/" title="VISA, MASTER, JCB">
									<div class="card-item_box">
										<div class="card-item_icon">
											<img
												src="${pageContext.request.contextPath}/imgs/social/credit-card.png"
												alt="VISA, MASTER, JCB" title="VISA, MASTER, JCB" />
										</div>
										<div class="card-item_text">VISA, MASTER, JCB</div>
									</div>
								</a>
							</div>
						</li>
						<li class="block_card-item">
							<div class="card-item_list">
								<a class="block_link" href="/" title="Internet Banking">
									<div class="card-item_box">
										<div class="card-item_icon">
											<img
												src="${pageContext.request.contextPath}/imgs/social/credit-card.png"
												alt="Internet Banking" title="Internet Banking" />
										</div>
										<div class="card-item_text">Internet Banking</div>
									</div>
								</a>
							</div>
						</li>
					</ul>
					<h5 class="block_heading">Đối tác vận chuyển</h5>
					<ul class="block_delivery-list">
						<li class="block_delivery-item"><a class="delivery-item_link"
							href="/" title="Giao hàng nhanh">
								<div class="delivery-item_icon">
									<img
										src="${pageContext.request.contextPath}/imgs/social/ghn.webp"
										alt="Giao hàng nhanh" />
								</div>
						</a></li>
						<li class="block_delivery-item"><a class="delivery-item_link"
							href="/" title="Giao hàng tiết kiệm">
								<div class="delivery-item_icon">
									<img
										src="${pageContext.request.contextPath}/imgs/social/ghtk.png"
										alt="Giao hàng tiết kiệm" />
								</div>
						</a></li>
					</ul>
				</div>
				<div class="block_wrapper">
					<h5 class="block_heading">Nền tảng khác</h5>
					<ul class="block_application-list">
						<li class="block_application-item"><a
							class="application-item_link" href="/" title="Google Play"><img
								src="${pageContext.request.contextPath}/imgs/app/android.png"
								alt="Google Play" width="130" height="40" /></a></li>
						<li class="block_application-item"><a
							class="application-item_link" href="/" title="App Store"><img
								src="${pageContext.request.contextPath}/imgs/app/ios.png"
								alt="App Store" width="130" height="40" /></a></li>
					</ul>
					<div class="block_subscribe">
						<h5 class="block_heading">Đăng ký nhận tin</h5>
						<form class="block_subscribe-wrapper" action="">
							<input type="text" name="subscribe_email" id="subscribe_email"
								size="20" placeholder="Email" class="input-subscribe-email" />
							<div class="divider_wrapper">
								<div class="v-divider"></div>
							</div>
							<div class="block_subscribe-submit">
								<button type="submit"
									class="btn text-highlight block_subscribe-button">
									<span>Đăng ký</span>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="divider"></div>
			<div class="footer_top-info">
				<div class="footer_top-left">
					<p>Công ty cổ phần DOSI GROUP</p>
					<p>68/21 Hoàng Diệu, Phường 12, Quận 4. Thành phố Hồ Chí Minh</p>
				</div>
				<div class="footer_top-right">
					<div class="footer_top-right-info">
						<p>GPĐKKD: 0314119937 do Sở KH và ĐT TPHCM cấp ngày 30/01/2019</p>
						<p>Đăng ký thay đổi lần thứ 7, ngày 07 tháng 06 năm 2021</p>
					</div>
					<div class="footer_top-approve">
						<img
							src="${pageContext.request.contextPath}/imgs/social/bo-cong-thuong.png"
							alt="Bộ công thương" sizes="" srcset="" />
					</div>
				</div>
			</div>
		</div>
		<div class="footer_bot">Copyright 2015-2021 &copy; Công ty cổ
			phần DOSI GROUP</div>
	</footer>
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

	<!---------------  Slide  ---------------->
	<script type="module"
		src="${pageContext.request.contextPath}/js/slide.js"></script>



	<script src="${pageContext.request.contextPath}/js1/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js1/jquery-migrate-3.0.0.js"></script>
	<script src="${pageContext.request.contextPath}/js1/jquery-ui.min.js"></script>
	<!-- Popper JS -->
	<script src="${pageContext.request.contextPath}/js1/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="${pageContext.request.contextPath}/js1/bootstrap.min.js"></script>
	<!-- Color JS -->
	<script src="${pageContext.request.contextPath}/js1/colors.js"></script>
	<!-- Slicknav JS -->
	<script src="${pageContext.request.contextPath}/js1/slicknav.min.js"></script>
	<!-- Owl Carousel JS -->
	<script src="${pageContext.request.contextPath}/js1/owl-carousel.js"></script>
	<!-- Magnific Popup JS -->
	<script src="${pageContext.request.contextPath}/js1/magnific-popup.js"></script>
	<!-- Fancybox JS -->
	<script src="${pageContext.request.contextPath}/js1/facnybox.min.js"></script>
	<!-- Waypoints JS -->
	<script src="${pageContext.request.contextPath}/js1/waypoints.min.js"></script>
	<!-- Countdown JS -->
	<script
		src="${pageContext.request.contextPath}/js1/finalcountdown.min.js"></script>
	<!-- Nice Select JS -->
	<script src="${pageContext.request.contextPath}/js1/nicesellect.js"></script>
	<!-- Ytplayer JS -->
	<script src="${pageContext.request.contextPath}/js1/ytplayer.min.js"></script>
	<!-- Flex Slider JS -->
	<script src="${pageContext.request.contextPath}/js1/flex-slider.js"></script>
	<!-- ScrollUp JS -->
	<script src="${pageContext.request.contextPath}/js1/scrollup.js"></script>
	<!-- Onepage Nav JS -->
	<script src="${pageContext.request.contextPath}/js1/onepage-nav.min.js"></script>
	<!-- Easing JS -->
	<script src="${pageContext.request.contextPath}/js1/easing.js"></script>
	<!-- Active JS -->
	<script src="${pageContext.request.contextPath}/js1/active.js"></script>


	<!---------------  Import Footer ---------------->
	<script type="module"
		src="${pageContext.request.contextPath}/newjs/importPage.js"></script>
	<script>
		function menuToggle() {
			const toggleMenu = document.querySelector(".menu");
			toggleMenu.classList.toggle("active");
		}
	</script>
</body>
</html>