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
  <link href="http://fonts.cdnfonts.com/css/sf-pro-display" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
    integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/base.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
    integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- require -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shared.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/components/footer.css" />
  <title>Footer</title>
</head>
<body>
	<main>
		<!-- -----------------Begin FOOTER---------------------- -->
		<footer class="footer">
			<div class="footer_top">
				<div class="footer_top-item">
					<div class="block_wrapper">
						<ul class="block_list">
							<li class="block_item logo"><a href="/"><img
									src="/assets/imgs/logo-white.png" alt="logo-white" /></a></li>
							<li class="block_item"><a class="block_link"
								href="tel:0906.880.960" title="Hotline: 0906.880.960">Hotline:
									0906.880.960</a></li>
							<li class="block_item"><a class="block_link" href="/"
								title="9h-18h từ Thứ 2 đến Thứ 6">(9h-18h từ Thứ 2 đến Thứ
									6)</a></li>
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
							<li class="block-app-item"><a class="dosiin_d-block"
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
												<img src="${pageContext.request.contextPath}/assets/imgs/social/cod.webp" alt="Tiền mặt"
													title="Tiền mặt">
											</div>
											<div class="card-item_text">Tiền mặt</div>
										</div>
									</a><a class="block_link" href="/" title="Momo">
										<div class="card-item_box">
											<div class="card-item_icon">
												<img src="${pageContext.request.contextPath}/assets/imgs/social/momo.png" alt="Momo"
													title="Momo" />
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
												<img src="${pageContext.request.contextPath}/assets/imgs/social/credit-card.png"
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
												<img src="${pageContext.request.contextPath}/assets/imgs/social/credit-card.png"
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
							<li class="block_delivery-item"><a
								class="delivery-item_link" href="/" title="Giao hàng nhanh">
									<div class="delivery-item_icon">
										<img src="${pageContext.request.contextPath}/assets/imgs/social/ghn.webp" alt="Giao hàng nhanh" />
									</div>
							</a></li>
							<li class="block_delivery-item"><a
								class="delivery-item_link" href="/" title="Giao hàng tiết kiệm">
									<div class="delivery-item_icon">
										<img src="${pageContext.request.contextPath}/assets/imgs/social/ghtk.png"
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
									src="${pageContext.request.contextPath}/assets/imgs/app/android.png" alt="Google Play"
									width="130" height="40" /></a></li>
							<li class="block_application-item"><a
								class="application-item_link" href="/" title="App Store"><img
									src="${pageContext.request.contextPath}/assets/imgs/app/ios.png" alt="App Store" width="130"
									height="40" /></a></li>
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
							<p>GPĐKKD: 0314119937 do Sở KH và ĐT TPHCM cấp ngày
								30/01/2019</p>
							<p>Đăng ký thay đổi lần thứ 7, ngày 07 tháng 06 năm 2021</p>
						</div>
						<div class="footer_top-approve">
							<img src="${pageContext.request.contextPath}/assets/imgs/social/bo-cong-thuong.png"
								alt="Bộ công thương" sizes="" srcset="">
						</div>
					</div>

				</div>
			</div>
			<div class="footer_bot">Copyright 2015-2021 &copy; Công ty cổ
				phần DOSI GROUP</div>
		</footer>
		<!-- -----------------End FOOTER---------------------- -->
	</main>
</body>
</html>