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

.user__image1 {
	position: relative;
}

.btn-inner {
	position: absolute;
	top: 89%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.user__image1 input[type="file"] {
	display: none;
}

.user__image-upload {
	position: relative;
}

.user__image {
	position: absolute;
	top: 50%;
	left: 15%;
	transform: translate(-50%, -50%);
}

.btn-inner1 {
	opacity: 0;
	position: absolute;
	top: 60%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.btn-inner1:hover, .btn-badge-border:hover {
	transition: all 0.2s ease;
	opacity: 1;
}

.btn-badge-border {
	opacity: 0;
}

.bottomright {
	width: 300px;
	align-items: center;
	text-align: center;
	margin-top: 30px;
}

.bottomright li {
	font-weight: 500;
	margin-top: 15px;
	border: 1.5px solid #ccabdb;
	text-align: center;
	height: 40px;
	align-items: center;
	background: linear-gradient(135deg, #fce6f7, #d5d0f0);
	border-radius: 10px 10px;
	padding-top: 10px;
}

.bottomright li:hover {
	font-size: 18px;
	transition: all 0.5s ease;
}
</style>
<title>Shop Profile</title>
</head>
<body>
	<!-- Header -->
	<header class="header-wrapper">
		<div class="header fixed-header">
			<!-- Header - top-->
			<div class="header-top">
				<div class="header-top-left">
					<i class="fas fa-home header-top-left-link"></i> <a
						class="header-top-left-link" href="#">B??n h??ng c??ng Dosiin</a>
				</div>
				<div class="header-top-right">
					<div>
						<span class="header-top-right-link">Hotline</span> <a
							class="header-top-right-link" href="tel:0906880960">0906.880.960</a>
					</div>
					<div>
						<i class="fab fa-facebook-messenger header-top-right-link"
							style="margin-right: 3px"></i> <a class="header-top-right-link"
							href="#">B??n h??ng</a>
					</div>
				</div>
			</div>
			<!-- end Header Top -->
			<!-- Header - bottom -->
			<div class="header-bottom">
				<!-- Header-left -->
				<ul class="header-bottom-left">
					<li class="header-bottom-logo"><a
						href="${pageContext.request.contextPath}/home"> <img
							src="${pageContext.request.contextPath}/logo.svg" alt="logo" />
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
						<input type="text" placeholder="Nh???p t??? kh??a t??m ki???m " />
					</div>
				</ul>
				<!-- end Header-center -->
				<!-- Header-right -->
				<ul class="header-bottom-right">
					<li class="header-bottom-right-items">
						<div class="header-bottom-right-item">
							<a href="#"> <i class="far fa-bell"></i>
							</a>
						</div>
					</li>
					<li class="header-bottom-right-items">
						<div class="header-bottom-right-item">
							<a href="${pageContext.request.contextPath}/cart"> <i
								class="fas fa-shopping-bag"><span class="badge"
									id="quantity-product-in-cart"></span></i>
							</a>
						</div>
					</li>
					<li class="header-bottom-right-items user action ">
						<div class="profile" onclick="menuToggle();">
							<div class="header-bottom-right-item">
								<a href="#"> <i class="far fa-user"></i>
								</a>
							</div>
							<div class="profile-right">

								<a class="about-user" href="#"> <span class="about-user-1"></span>
									<span class="about-user-2">Xin ch??o!</span> <span
									class="about-user-1"><c:out
											value="${sessionScope.email }"></c:out></span>
								</a>
							</div>
						</div>
						<div class="menu">
							<ul>
								<c:choose>
									<c:when test="${sessionScope.email == null}">
										<li><a href="login">????ng Nh???p</a></li>
										<li class="border-top"><a href="register">????ng K??</a></li>
									</c:when>
									<c:when test="${sessionScope.email != null}">
										<li><a
											href="${pageContext.request.contextPath}/customer/updateProfile">
												Th??ng tin </a></li>
										<li><a href="logout"> ????ng xu???t </a></li>

									</c:when>

								</c:choose>
							</ul>
						</div>
					</li>
				</ul>
				<!-- end Header-right -->
			</div>
			<!-- end Header - bottom -->

			<!-- ------------------------ Begin BREADCRUMB ------------------------------- -->
			<ul class="category">
				<li class="category-item text-hover"><a href="#">S???n ph???m</a></li>
				<li class="category-item text-hover"><a href="#">Nam</a></li>
				<li class="category-item text-hover"><a href="#">N???</a></li>
				<li class="category-item text-hover"><a href="#">Ph??? ki???n</a></li>
				<li class="category-item text-hover"><a href="#">Th????ng
						hi???u</a></li>
				<li class="category-item text-hover"><a href="#">X???p h???ng</a></li>
				<li class="category-item text-hover"><a href="#">M???i nh???t </a>
				</li>
				<li class="category-item text-hover"><a href="#">Gi?? s???c </a></li>
				<li class="category-item text-hover"><a href="#">S??? ki???n </a></li>
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
							<img
								src="${pageContext.request.contextPath}/imgs/shop/shop-banner.webp" />
						</div>
						<div class="aside__user-name">Name Of Shop</div>
					</div>
					<ul class="nav">
						<li class="nav-item active" data-tab-select="user-information">
							<a class="nav-link" href="/pages/user-information.html"> <span
								class="menu-icon"> <i class="fas fa-user"></i>
							</span> <span class="menu-title">Shop c???a t??i</span>
						</a>
							<ul class="nav-child">
								<li class="nav-child-item active"
									data-tab-select="user-information"><a
									class="nav-child-link" href="../pages/shop-information.html">
										<span class="menu-child-title">H??? s??</span>
								</a></li>

							</ul>
						</li>
						<li class="nav-item" data-tab-select="user-order"><a
							class="nav-link" href="/pages/user-order.html"> <span
								class="menu-icon"> <i class="fab fa-shopify"></i>
							</span> <span class="menu-title">????n h??ng</span>
						</a></li>
						<li class="nav-item" data-tab-select="user-order"><a
							class="nav-link" href="/pages/user-order.html"> <span
								class="menu-icon"> <i class="fab fa-shopify"></i>
							</span> <span class="menu-title">S???n ph???m</span>
						</a></li>
					</ul>
				</nav>
			</div>
			<div class="setting__right">
				<div class="user-info box" id="user-information">
					<div class="user-info-wrapper">
						<div class="user-info-title">H??? s?? c???a shop</div>
						<div class="user-info-description">Qu???n l?? h??? s?? ????? b???o m???t
							t??i kho???n</div>
						<div class="divider"></div>
						<div class="user-info-form">
							<form class="form" autocomplete="no-thanks">
								<div class="form__wrapper">
									<div class="form__left">
										<div class="err">
											<!-- err show -> Add show to the err if you want it to display -->
											<p>
												<span>L???i: </span> <span>S??? ??i???n tho???i kh??ng ????ng</span>
											</p>
										</div>

										<div class="form-group">
											<label>T??n Shop</label> <input type="text" class="form-input"
												placeholder="T??n Shop c???a b???n" autocomplete="off" required />
										</div>
										<div class="form-group">
											<label>S??? ??i???n tho???i</label> <input type="tel"
												class="form-input" placeholder="S??? ??i???n tho???i"
												autocomplete="off" required pattern="^0[0-9]{8}$" />
										</div>
										<div class="form-group">
											<label>?????a ch???</label> <input type="text" class="form-input"
												placeholder="?????a ch???" autocomplete="off" required value="" />
										</div>
										<div class="form-group">
											<label>M?? t??? shop</label>

											<textarea class="form-input" placeholder="m?? t???"
												autocomplete="off" required value=""></textarea>
										</div>


										<div class="form-button">
											<button type="submit" class="btn btn-primary">
												<span>X??c nh???n</span>
											</button>
										</div>
									</div>
									<div class="v-divider"></div>
									<div class="form__right">
										<div class="user__image1">
											<img
												src="${pageContext.request.contextPath}/imgs/slidebot-6.webp"
												alt="banner"> <label
												class="upload__button btn btn-badge-border" for="banner">
												<div class="btn-inner" style="opacity: 0.7;">
													<span>Ch???n ???nh b??a</span>
												</div>
											</label><input type="file" ref="banner" id="banner"
												accept=".png, .jpg, .jpeg" @change="fileChange" />
											<div class="user__image">
												<div class="user__image-upload">
													<img
														src="${pageContext.request.contextPath}/imgs/shop/shop-banner.webp"
														alt="avatar" /> <label
														class="upload__button btn btn-badge-border" for="avatar">
														<div class="btn-inner1">
															<span>S???a</span>
														</div>
													</label><input type="file" ref="userAvatar" id="avatar"
														accept=".png, .jpg, .jpeg" @change="fileChange" />
												</div>
											</div>

										</div>

										<div class="bottomright">
											<ul style="list-style-type: none">
												<a>
													<li>Xem shop</li>
												</a>
											</ul>
										</div>

									</div>
								</div>
							</form>
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
							title="9h-18h t??? Th??? 2 ?????n Th??? 6">(9h-18h t??? Th??? 2 ?????n Th??? 6)</a>
						</li>
						<li class="block_item"><a class="block_link"
							href="email:customer@dosiinvn.com"
							title="Email: customer@dosiinvn.com">Email:
								customer@dosiinvn.com</a></li>
					</ul>
					<h5 class="block_heading">K???t n???i v???i ch??ng t??i</h5>
					<ul class="block-app-list">
						<li class="block-app-item"><a
							href="https://www.instagram.com/dosiin.magz/" title="Instagram"><i
								class="fab fa-instagram-square"></i></a></li>
						<li class="block-app-item"><a class="dosiin_d-block"
							href="https://www.facebook.com/dosiinvietnam/" title="Facebook"><i
								class="fab fa-facebook"></i></a></li>
					</ul>
				</div>
				<div class="block_wrapper">
					<h5 class="block_heading">V??? Dosiin</h5>

					<ul class="block_list">
						<li class="block_item"><a class="block_link" href="#">C??c
								??i???u kho???n kh??c</a></li>
						<li class="block_item"><a class="block_link" href="#">H???p
								t??c</a></li>
						<li class="block_item"><a class="block_link" href="#">H???i
								v?? ????p</a></li>
						<li class="block_item"><a class="block_link" href="#">H???n
								ch??? v???i th???i gian v?? qu???n l??</a></li>
						<li class="block_item"><a class="block_link" href="#">Ngh??a
								v??? c???a ng?????i b??n</a></li>
						<li class="block_item"><a class="block_link" href="#">Ngh??a
								v??? c???a kh??ch h??ng</a></li>
						<li class="block_item"><a class="block_link" href="#">Ch??nh
								s??ch v???n chuy???n</a></li>
						<li class="block_item"><a class="block_link" href="#">V???
								ch??ng t??i</a></li>
					</ul>
				</div>
				<div class="block_wrapper">
					<h5 class="block_heading">N???i dung ch??nh s??ch</h5>
					<ul class="block_list">
						<li class="block_item"><a class="block_link" href="#">Ch??nh
								s??ch b???o m???t</a></li>
						<li class="block_item"><a class="block_link" href="#">??i???u
								kho???n d???ch v???</a></li>
						<li class="block_item"><a class="block_link" href="#">Ch??nh
								s??ch th??nh vi??n</a></li>
						<li class="block_item"><a class="block_link" href="#">Ch??nh
								s??ch thanh to??n</a></li>
						<li class="block_item"><a class="block_link" href="#">Ch??nh
								s??ch b???o m???t thanh to??n</a></li>
						<li class="block_item"><a class="block_link" href="#">Ch??nh
								s??ch d??nh cho kh??ch h??ng</a></li>
					</ul>
				</div>
				<div class="block_wrapper">
					<h5 class="block_heading">C??ch th???c thanh to??n</h5>
					<ul class="block_card-list">
						<li class="block_card-item">
							<div class="card-item_list">
								<a class="block_link" href="/" title="COD Ti???n m???t">
									<div class="card-item_box">
										<div class="card-item_icon">
											<img
												src="${pageContext.request.contextPath}/imgs/social/cod.webp"
												alt="Ti???n m???t" title="Ti???n m???t">
										</div>
										<div class="card-item_text">Ti???n m???t</div>
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
				</div>
			</div>
		</div>
		<div class="footer_bot">Copyright 2022 &copy; FPT University
			DaNang</div>
	</footer>
	<script src="${pageContext.request.contextPath}/newjs/popup.js"></script>
</body>
</html>