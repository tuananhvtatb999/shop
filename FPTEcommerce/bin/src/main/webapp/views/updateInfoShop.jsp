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
							<img
								src="${pageContext.request.contextPath}/imgs/shop/shop-banner.webp" />
						</div>
						<div class="aside__user-name">Name Of Shop</div>
					</div>
					<ul class="nav">
						<li class="nav-item active" data-tab-select="user-information">
							<a class="nav-link" href="/pages/user-information.html"> <span
								class="menu-icon"> <i class="fas fa-user"></i>
							</span> <span class="menu-title">Shop của tôi</span>
						</a>
							<ul class="nav-child">
								<li class="nav-child-item active"
									data-tab-select="user-information"><a
									class="nav-child-link" href="../pages/shop-information.html">
										<span class="menu-child-title">Hồ sơ</span>
								</a></li>

							</ul>
						</li>
						<li class="nav-item" data-tab-select="user-order"><a
							class="nav-link" href="/pages/user-order.html"> <span
								class="menu-icon"> <i class="fab fa-shopify"></i>
							</span> <span class="menu-title">Đơn hàng</span>
						</a></li>
						<li class="nav-item" data-tab-select="user-order"><a
							class="nav-link" href="/pages/user-order.html"> <span
								class="menu-icon"> <i class="fab fa-shopify"></i>
							</span> <span class="menu-title">Sản phẩm</span>
						</a></li>
					</ul>
				</nav>
			</div>
			<div class="setting__right">
				<div class="user-info box" id="user-information">
					<div class="user-info-wrapper">
						<div class="user-info-title">Hồ sơ của shop</div>
						<div class="user-info-description">Quản lý hồ sơ để bảo mật
							tài khoản</div>
						<div class="divider"></div>
						<div class="user-info-form">
							<form class="form" autocomplete="no-thanks">
								<div class="form__wrapper">
									<div class="form__left">
										<div class="err">
											<!-- err show -> Add show to the err if you want it to display -->
											<p>
												<span>Lỗi: </span> <span>Số điện thoại không đúng</span>
											</p>
										</div>

										<div class="form-group">
											<label>Tên Shop</label> <input type="text" class="form-input"
												placeholder="Tên Shop của bạn" autocomplete="off" required />
										</div>
										<div class="form-group">
											<label>Số điện thoại</label> <input type="tel"
												class="form-input" placeholder="Số điện thoại"
												autocomplete="off" required pattern="^0[0-9]{8}$" />
										</div>
										<div class="form-group">
											<label>Địa chỉ</label> <input type="text" class="form-input"
												placeholder="Địa chỉ" autocomplete="off" required value="" />
										</div>
										<div class="form-group">
											<label>Mô tả shop</label>

											<textarea class="form-input" placeholder="mô tả"
												autocomplete="off" required value=""></textarea>
										</div>


										<div class="form-button">
											<button type="submit" class="btn btn-primary">
												<span>Xác nhận</span>
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
													<span>Chọn ảnh bìa</span>
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
															<span>Sửa</span>
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
          <li class="block_item logo">
            <a href="/"><img src="${pageContext.request.contextPath}/imgs/logo-white.png" alt="logo-white" /></a>
          </li>
          <li class="block_item">
            <a class="block_link" href="tel:0906.880.960" title="Hotline: 0906.880.960">Hotline: 0906.880.960</a>
          </li>
          <li class="block_item">
            <a class="block_link" href="/" title="9h-18h từ Thứ 2 đến Thứ 6">(9h-18h từ Thứ 2 đến Thứ 6)</a>
          </li>
          <li class="block_item">
            <a class="block_link" href="email:customer@dosiinvn.com" title="Email: customer@dosiinvn.com">Email:
              customer@dosiinvn.com</a>
          </li>
        </ul>
        <h5 class="block_heading">Kết nối với chúng tôi</h5>
        <ul class="block-app-list">
          <li class="block-app-item">
            <a href="https://www.instagram.com/dosiin.magz/" title="Instagram"><i
                class="fab fa-instagram-square"></i></a>
          </li>
          <li class="block-app-item">
            <a class="dosiin_d-block" href="https://www.facebook.com/dosiinvietnam/" title="Facebook"><i
                class="fab fa-facebook"></i></a>
          </li>
        </ul>
      </div>
      <div class="block_wrapper">
        <h5 class="block_heading">Về Dosiin</h5>

        <ul class="block_list">
          <li class="block_item">
            <a class="block_link" href="#">Các điều khoản khác</a>
          </li>
          <li class="block_item"><a class="block_link" href="#">Hợp tác</a></li>
          <li class="block_item"><a class="block_link" href="#">Hỏi và Đáp</a></li>
          <li class="block_item">
            <a class="block_link" href="#">Hạn chế với thời gian và quản lý</a>
          </li>
          <li class="block_item">
            <a class="block_link" href="#">Nghĩa vụ của người bán</a>
          </li>
          <li class="block_item">
            <a class="block_link" href="#">Nghĩa vụ của khách hàng</a>
          </li>
          <li class="block_item">
            <a class="block_link" href="#">Chính sách vận chuyển</a>
          </li>
          <li class="block_item">
            <a class="block_link" href="#">Về chúng tôi</a>
          </li>
        </ul>
      </div>
      <div class="block_wrapper">
        <h5 class="block_heading">Nội dung chính sách</h5>
        <ul class="block_list">
          <li class="block_item">
            <a class="block_link" href="#">Chính sách bảo mật</a>
          </li>
          <li class="block_item"><a class="block_link" href="#">Điều khoản dịch vụ</a></li>
          <li class="block_item"><a class="block_link" href="#">Chính sách thành viên</a></li>
          <li class="block_item">
            <a class="block_link" href="#">Chính sách thanh toán</a>
          </li>
          <li class="block_item">
            <a class="block_link" href="#">Chính sách bảo mật thanh toán</a>
          </li>
          <li class="block_item">
            <a class="block_link" href="#">Chính sách dành cho khách hàng</a>
          </li>
        </ul>
      </div>
      <div class="block_wrapper">
        <h5 class="block_heading">Cách thức thanh toán</h5>
        <ul class="block_card-list">
          <li class="block_card-item">
            <div class="card-item_list">
              <a class="block_link" href="/" title="COD Tiền mặt">
                <div class="card-item_box">
                  <div class="card-item_icon"><img src="${pageContext.request.contextPath}/imgs/social/cod.webp" alt="Tiền mặt" title="Tiền mặt">
                  </div>
                  <div class="card-item_text">Tiền mặt</div>
                </div>
              </a><a class="block_link" href="/" title="Momo">
                <div class="card-item_box">
                  <div class="card-item_icon"><img src="${pageContext.request.contextPath}/imgs/social/momo.png" alt="Momo" title="Momo" />
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
                  <div class="card-item_icon"><img src="${pageContext.request.contextPath}/imgs/social/credit-card.png" alt="VISA, MASTER, JCB"
                      title="VISA, MASTER, JCB" /></div>
                  <div class="card-item_text">VISA, MASTER, JCB</div>
                </div>
              </a>
            </div>
          </li>
          <li class="block_card-item">
            <div class="card-item_list">
              <a class="block_link" href="/" title="Internet Banking">
                <div class="card-item_box">
                  <div class="card-item_icon"><img src="${pageContext.request.contextPath}/imgs/social/credit-card.png" alt="Internet Banking"
                      title="Internet Banking" /></div>
                  <div class="card-item_text">Internet Banking</div>
                </div>
              </a>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="footer_bot">
    Copyright 2022 &copy; FPT University DaNang
  </div>
</footer>
	<!-- ----------------- End FOOTER---------------------- -->
</body>
</html>