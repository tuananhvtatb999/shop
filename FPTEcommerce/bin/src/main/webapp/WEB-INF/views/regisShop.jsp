<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>RegisShop</title>
<!------------ CSS core ------------ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/core.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/header.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/sideBar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/theme-default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/RegisShop.css">
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
<!--------------- form ------------------------------- -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">
<!-- FontAwsome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/all.min.css">
<!---------------  Import footer JS ---------------->
<script type="module"
	src="${pageContext.request.contextPath}/newjs/importPage.js"></script>
</head>
<body>
	<header>
		<div class="header fixed-header">
			<!-- Header - bottom -->
			<div class="header-bottom">

				<!-- Header-left -->
				<ul class="header-bottom-left">
					<li class="header-bottom-logo"><a href="#"> <img
							src="/assets/img/logo.svg" alt="logo" />
					</a></li>
				</ul>
				<!-- end Header-left -->
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
						</div>
					</li>
				</ul>
				<!-- end Header-right -->
			</div>
		</div>
	</header>
<%-- 	<h1>
		<c:out value="${sessionScope.id }"></c:out>
	</h1>
	<h1>
		<c:out value="${sessionScope.email }"></c:out>
	</h1> --%>
	<!-- Content wrapper -->
	<div class="content-wrapper">
		<!-- Content -->
		<div class="vendor_block1">
			<div class="intro">
				<span>sao họ chọn FPT E-Commerce?</span>
			</div>
			<div class="row intro-group">
				<div class="intro-item">
					<i class="fa-solid fa-magnifying-glass-dollar"></i>
					<h4>ĐỊNH VỊ VÀ NÂNG TẦM THƯƠNG HIỆU</h4>
					<p>Dosiin là sàn thương mại điện tử dành cho giới trẻ đầu tiên
						lớn nhất ở Việt Nam, với gần 300 thương hiệu đang hợp tác.</p>
				</div>
				<div class="intro-item">
					<i class="fa-solid fa-user-tie"></i>
					<h4>QUẢN LÝ BÁN HÀNG CHUYÊN NGHIỆP</h4>
					<p>Trang quản lý cập nhật sản phẩm, kho hàng và đơn hàng, theo
						dõi doanh thu trực tiếp, giao diện dễ thao tác và nhanh chóng, đối
						soát liên tục, liên kết với giao hàng chuyên nghiệp với GHTK.</p>
				</div>
				<div class="intro-item">
					<i class="fa-solid fa-users"></i>
					<h4>TIẾP CẬN TẬP KHÁCH HÀNG KHỔNG LỒ</h4>
					<p>Website với hơn 2 triệu lượt truy cập mỗi tháng, hệ sinh
						thái Media tương tác cao với Fanpage Facebook lên đến nữa triệu
						lượt like. Hướng thẳng mục tiêu đến đối tượng giới trẻ, 90% ở độ
						tuổi từ 16-24.</p>
				</div>
				<div class="intro-item">
					<i class="fa-solid fa-chart-line"></i>
					<h4>CHƯƠNG TRÌNH MARKETING DÀNH RIÊNG CHO BẠN</h4>
					<p>Tăng doanh thu và độ phủ sóng thương hiệu với các chương
						trình Marketing thiết kế riêng cho từng thương hiệu. Cơ hội được
						góp mặt trong các sự kiện và tạp chí xuất bản với lượt đọc giả
						online lên đến nữa triệu.</p>
				</div>
			</div>
		</div>
		<div class="vendor_block3">
			<div class="intro">
				<span>Trở thành đối tác của FPT E-Commerce</span>
			</div>
			<div class="co-operate">
				<div class="co__video">
					<video class="story" controls="" muted="" autoplay=""
						poster="https://static.dosi-in.com/images/brand_page/hoptac/bg-video.png">
						<source
							src="https://static.dosi-in.com/images/brand_page/hoptac/dosiin.mp4"
							type="video/mp4">
					</video>
				</div>
				<div class="co__form">
					<div class="circle1"></div>
					<div class="circle2"></div>
					<div class="form">
						<h3>WELCOME TO FPT E-Commerce</h3>
						<form:form id="frm_contact"
							action="${pageContext.request.contextPath}/customer/doRegisterShop"
							class="cm-processed-form" method="post" modelAttribute="shop">
<%-- 							<div class="form-group">
								<label class="cm-email cm-required" for="email">Địa chỉ
									Email</label>
								<form:input id="email" path="email" name="email" type="text" />
								<div class="error"></div>
							</div> --%>
							<div class="form-group">
								<label class="cm-phone cm-required" for="phone">Số điện
									thoại</label>
								<form:input id="phone" name="phone" type="number" path="phone" />
								<div class="error"></div>
							</div>
							<div class="form-group">
								<label class="cm-required" for="name">Tên cửa hàng</label>
								<form:input id="name" name="name" type="text" path="name" />
								<div class="error"></div>
							</div>
							<button class="btn primary button" type="submit">
								<span>Gửi</span>
							</button>
						</form:form>

					</div>

				</div>
			</div>
		</div>
		<!-- / vendor2 -->
		<!-- <div class="vendor_block4">
      <div class="intro">
        <span>CONTACT</span>
      </div>
      <div class="contact">
        <a class="contact-user mail" href="mailto:Trongldde140257@fpt.edu.vn">
          <div class="contact-icon">
            <i class="fa-solid fa-envelope"></i>
          </div>
          <span>Trongldde140257@fpt.edu.vn</span>
        </a>
        <a class="contact-user phone" href="http://zalo.me/0908449577">
          <div class="contact-icon">
            <i class="fa-solid fa-phone"></i>
          </div>
          <span>0933932517</span>
        </a>
      </div>
    </div> -->
	</div>
	<!-- / Content -->


	<!-- build:js assets/vendor/js/core.js -->
	<script src="${pageContext.request.contextPath}/jquery/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/popper.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/bootstrap.js"></script>
	<script
		src="${pageContext.request.contextPath}/newjs/perfect-scrollbar.js"></script>

	<script src="${pageContext.request.contextPath}/newjs/menu.js"></script>

	<!-- Vendors JS -->
	<script src="${pageContext.request.contextPath}/newjs/apexcharts.js"></script>

	<!-- Main JS -->
	<script src="${pageContext.request.contextPath}/newjs/main.js"></script>

</body>
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

</html>