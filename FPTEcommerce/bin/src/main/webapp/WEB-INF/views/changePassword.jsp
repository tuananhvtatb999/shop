<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
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
	href="${pageContext.request.contextPath}/css/base.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- require -->
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
<style type="text/css">
.error {
	color: red;
}
</style>
<title>Setting</title>
</head>
<body>
	<!-- Header -->
	<header class="header-wrapper">
		<div class="header fixed-header">
			<!-- Header - top-->
			<div class="header-top">
				<div class="header-top-left">
					<i class="fas fa-home header-top-left-link"></i> <a
						class="header-top-left-link" href="#">Bán hàng cùng Dosiin</a>
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
							src="/assets/imgs/logo.svg" alt="logo" />
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
					<li class="header-bottom-right-item"><a href="#"> <i
							class="far fa-bell"></i>
					</a></li>
					<li class="header-bottom-right-item"><a href="#"> <i
							class="fas fa-shopping-bag"></i>
					</a></li>
					<li class="header-bottom-right-items user">
						<div class="header-bottom-right-item">
							<a href="#"> <i class="far fa-user"></i>
							</a>
						</div> <a class="about-user" href="#"> <span class="about-user-1">Tài
								khoản</span> <span class="about-user-2">Xin chào!</span>
					</a> <i class="fas fa-caret-down" style="font-size: 1.6rem"></i>
					</li>
				</ul>
				<!-- end Header-right -->
			</div>
			<!-- end Header - bottom -->

			<!-- ------------------------ Begin BREADCRUMB ------------------------------- -->
			<ul class="category">
				<li class="category-item text-hover"><a href="#">Sản phẩm</a></li>
				<li class="category-item text-hover"><a href="#">Nam</a></li>
				<li class="category-item text-hover"><a href="#">Nữ</a></li>
				<li class="category-item text-hover"><a href="#">Phụ kiện</a></li>
				<li class="category-item text-hover"><a href="#">Thương
						hiệu</a></li>
				<li class="category-item text-hover"><a href="#">Xếp hạng</a></li>
				<li class="category-item text-hover"><a href="#">Mới nhất </a>
				</li>
				<li class="category-item text-hover"><a href="#">Giá sốc </a></li>
				<li class="category-item text-hover"><a href="#">Sự kiện </a></li>
			</ul>
			<!-- ------------------------ End BREADCRUMB ------------------------------- -->
		</div>
	</header>
	<!-- end Header -->

	<!-- ----------------- Begin MAIN: SETTING ---------------------- -->
	<div class="mid-container">
		<div class="setting">
			<div class="setting__left">
				<nav class="sidebar" id="sidebar">
					<div class="aside__user">
						<div class="aside__user-img">
							<img src="/assets/imgs/shop/shop-banner.webp" />
						</div>
						<div class="aside__user-name">Name Of User</div>
					</div>
					<ul class="nav">
						<li class="nav-item active" data-tab-select="user-information">
							<a class="nav-link" href="#"> <span class="menu-icon">
									<i class="fas fa-user"></i>
							</span> <span class="menu-title">Tài khoản của tôi</span>
						</a>
							<ul class="nav-child">
								<li class="nav-child-item" data-tab-select="user-information">
									<a class="nav-child-link" href="#"> <span
										class="menu-child-title">Hồ sơ</span>
								</a>
								</li>
								<li class="nav-child-item active"
									data-tab-select="change-password"><a
									class="nav-child-link" href="#"> <span
										class="menu-child-title">Đổi mật khẩu</span>
								</a></li>
							</ul>
						</li>
						<li class="nav-item" data-tab-select="user-order"><a
							class="nav-link" href="#"> <span class="menu-icon"> <i
									class="fab fa-shopify"></i>
							</span> <span class="menu-title">Đơn mua</span>
						</a></li>
					</ul>
				</nav>
			</div>
			<div class="setting__right">
				<div class="user-info box" id="change-password">
					<div class="user-info-wrapper">
						<div class="user-info-title">Đổi mật khẩu</div>
						<div class="user-info-description">Để đảm bảo bảo mật tài
							khoản, vui lòng không chia sẻ mật khẩu với người khác</div>
						<div class="divider"></div>
						<div class="user-info-form">

							<c:if test="${message1 != null }">
								<span class="error"><c:out value="${message1 }"></c:out></span>
							</c:if>
							<c:if test="${message2 != null }">
								<span class="error"><c:out value="${message2 }"></c:out></span>
							</c:if>
							<c:if test="${message3 != null }">
								<span class="error"><c:out value="${message3 }"></c:out></span>
							</c:if>
							<c:if test="${message != null }">
								<span class="error"><c:out value="${message }"></c:out></span>
							</c:if>
							<form:form action="doUpdatePassword" method="post"
								cssClass="form" autocomplete="off" modelAttribute="user">
								<div class="err">
									<!-- err show -> Add show to the err if you want it to display -->
									<p>
										<span>Lỗi: </span> <span>Nội dung lỗi</span>
									</p>
								</div>
								<!-- pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$" -> Mật khẩu gồm ít nhất 6 ký tự, ít nhất 1 chữ, 1 số -->
								<div class="form-group password">
									<label>Mật khẩu cũ</label> <input type="password"
										class="form-input" required autocomplete="off"
										name="passwordOld" placeholder="Nhập mật khẩu cũ" /> <i
										class="fas fa-eye"></i>
									<!-- <i class="fas fa-eye-slash"></i> -->
								</div>
								<form:hidden path="id" readonly="true" />
								<form:hidden path="username" readonly="true" />
								<form:hidden path="email" readonly="true" />
								<form:hidden path="createTime" readonly="true" />
								<form:hidden path="birthDay" readonly="true" />
								<form:hidden path="address" readonly="true" />
								<form:hidden path="gender" readonly="true" />
								<form:hidden path="path" readonly="true" />
								<%-- <form:input path="password" readonly="true" />
								<form:input path="confirmPassword" readonly="true" /> --%>
								<div class="form-group password">
									<label>Mật khẩu mới</label> <input type="password"
										class="form-input" required name="password" autocomplete="off"  placeholder="Nhập mật khẩu mới"/> <i
										class="fas fa-eye"></i>


								</div>
								<div class="form-group password">
									<label>Xác nhận mật khẩu</label> <input type="password"
										class="form-input" required name="confirmPassword" autocomplete="off" placeholder="Xác nhận mật khẩu"/>
									<i class="fas fa-eye"></i>
								</div>
								<div class="form-button">
									<button type="submit" class="btn btn-primary">
										<span>Xác nhận</span>
									</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ----------------- End MAIN: SETTING  ---------------------- -->
	<!-- ----------------- Begin FOOTER---------------------- -->
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
											<img src="/assets/imgs/social/credit-card.png"
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
	<!-- ----------------- End FOOTER---------------------- -->
	<script src="${pageContext.request.contextPath}/js/togglePassword.js"></script>
</body>
</html>