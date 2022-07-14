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
	href="${pageContext.request.contextPath}/css/pages/detail.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/breadcrumb.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/modal.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/components/pagination.css" />
<title>Product Detail</title>
</head>
<body>
	<!-- ------------------------ Begin LOADER ------------------------------- -->

	<div class="loader" style="display: none">
		<div class="loader-inner"></div>
	</div>
	<!-- ------------------------ End LOADER ------------------------------- -->

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
							style="margin-right: 3px"></i> <a
							class="header-top-right-link" href="#">Bán hàng</a>
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

	<!-- ----------------- Begin MAIN---------------------- -->
	<main class="detail">
		<section class="mid-container">
			<section class="detail__product box">
				<div class="detail__product-img-container">
					<div class="slider__product-img">
						<div class="slider__product-img-list--left">
							<img src="/assets/imgs/shop/shop-banner.webp" class="active" />
							<img src="/assets/imgs/card1.webp" /> <img
								src="/assets/imgs/card2.webp" /> <img
								src="/assets/imgs/shop/shop-banner.webp" /> <img
								src="/assets/imgs/card3.jpeg" /> <img
								src="/assets/imgs/card5.webp" />
						</div>
						<div class="slider__product-img-list--right">
							<span class="back"><i class="fa-solid fa-angle-left"></i></span>
							<div class="slider__product-img-wrapper">
								<img src="/assets/imgs/shop/shop-banner.webp" /> <img
									src="/assets/imgs/card1.webp" /> <img
									src="/assets/imgs/card2.webp" /> <img
									src="/assets/imgs/shop/shop-banner.webp" /> <img
									src="/assets/imgs/card3.jpeg" /> <img
									src="/assets/imgs/card5.webp" />
							</div>
							<span class="next"><i
								class="fa-solid fa-angle-right"></i></span>
						</div>
					</div>
				</div>
				<div class="detail__product-detail">
					<div class="product__box--detail">
						<p class="product__brand">
							Thương hiệu:&nbsp;<span class="text-highlight">acmé
								de la vie (ADLV)</span>
						</p>
						<div class="product__name-wishlist">
							<p class="product__name">Áo thun ngắn tay cổ tròn ADLV Basic
								Pink Hồng ADLV Unisex</p>
							<span class="product__add-to-wishlist"><i
								class="fa-regular fa-heart"></i></span>
						</div>
					</div>
					<div class="product__box--detail">
						<div class="product__price-wrapper">
							<div class="product__price--new"></div>
							<div class="product__price--old"></div>
							<div class="product__price--discount"></div>
						</div>
						<div class="product__judge">
							<span class="product-judge__stars"> <i
								class="fas fa-star star-icon active"></i> <i
								class="fas fa-star star-icon active"></i> <i
								class="fas fa-star star-icon active"></i> <i
								class="fas fa-star star-icon"></i> <i
								class="fas fa-star star-icon"></i></span> <span
								class="product-judge__star-number">3</span> <span
								class="product-judge__dot"><i
								class="fa-solid fa-circle"></i></span> <span
								class="product-judge__wishlist"><i
								class="fa-regular fa-heart text-highlight"></i></span> <span
								class="product-judge__wishlist-number">0</span>
						</div>
					</div>
					<div class="product__box--detail">
						<div class="product__attribute-wrapper">
							<div class="product__attribute">
								<div class="product__attribute-text">Màu sắc</div>
								<span></span>
								<div class="product__attribute-description">2 Màu sắc</div>
							</div>
							<div class="product__attribute__select">
								<div class="product__attribute__select-item">
									<input class="color-input" id="color-red" type="radio"
										name="color" value="red" /> <label
										class="color-text" for="color-red"><span
										class="text">red</span></label>
								</div>
								<div class="product__attribute__select-item">
									<input class="color-input" id="color-green" type="radio"
										name="color" value="green" /> <label
										class="color-text" for="color-green"><span
										class="text">green</span></label>
								</div>
							</div>
						</div>
					</div>
					<div class="product__box--detail">
						<div class="product__attribute-wrapper">
							<div class="product__attribute">
								<div class="product__attribute-text">Kích thước</div>
								<span></span>
								<div class="product__attribute-description">2 Kích thước</div>
							</div>
							<div class="product__attribute__select">
								<div class="product__attribute__select-item">
									<input class="size-input" id="size-1" type="radio" name="size"
										value="1" /> <label class="size-text"
										for="size-1"><span
										class="text">1</span></label>
								</div>
								<div class="product__attribute__select-item">
									<input class="size-input" id="size-2" type="radio" name="size"
										value="2" /> <label class="size-text"
										for="size-2"><span
										class="text">2</span></label>
								</div>
							</div>
						</div>
					</div>
					<div class="product__box--detail">
						<div class="product__in-store">
							<span></span>&nbsp;sản phẩm có sẵn
						</div>
						<div class="product__quantity-wrapper">
							<span class="minus">-</span> <span class="product__quantity">1</span>
							<span class="plus">+</span>
						</div>
						<div class="error text-highlight">Số lượng bạn chọn đã đến
							mức tối đa của sản phẩm này</div>
					</div>
					<div class="product__box--detail">
						<div class="product__navigate">
							<a class="btn btn-primary"><span>Thêm vào giỏ hàng</span></a><a
								class="btn btn-primary"><span>Đến trang mua hàng</span></a>
						</div>
						<p class="product__is-origin">Sản phẩm không bán trực tiếp
							trên Dosiin</p>
					</div>
					<div class="product__box--detail">
						<div class="marketplace">
							<img src="/assets/imgs/icons/marketplace.png" alt="" srcset="" />
							<div class="marketplace__wrapper">
								<h6 class="marketplace__description">Sản phẩm không được
									phân phối chính hãng tại Dosiin</h6>
								<div class="marketplace__policy">
									<p>Tìm hiểu chính sách</p>
									<span class="marketplace__link"><i
										class="fa-solid fa-circle-info"></i><span
										class="marketplace__popup"><strong>Tiếp
												thị liên kết:</strong>&nbsp;Các thương hiệu đang hợp tác quảng cáo
											với Dosiin. Người dùng sau khi nhấn “Đặt hàng ngay” trên
											Dosi-in.com sẽ được chuyển đến trang web của thương hiệu để
											hoàn tất việc mua hàng. Các chính sách khuyến mãi, thanh toán
											và đổi trả sẽ được áp dụng theo chính sách của thương hiệu
											đó.</span></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="detail__info">
				<div class="detail-info__left">
					<div class="aside-left__follow box">
						<div class="follow__box">
							<div class="follow__left">
								<div class="follow__img">
									<img src="../assets/imgs/shop/shop-logo.webp" alt="brand-img" />
								</div>
								<div class="follow__text">
									<div class="brand__title">Saigonmon</div>
									<div class="brand__followers">
										<strong>12</strong>&nbsp;người theo dõi
									</div>
									<div class="brand__products">
										<strong>12</strong>&nbsp;sản phẩm
									</div>
								</div>
							</div>
							<div class="follow__right">
								<button class="btn text-highlight">
									<i class="fas fa-user-plus"></i>&nbsp;&nbsp; <span>Theo
										dõi</span>
								</button>
							</div>
						</div>
						<div class="statistics__box">
							<ul class="brand-item__social-list">
								<li><a href="" title="Sản phẩm">
										<article class="brand-item__social-item">
											<h6>17</h6>
											<p>
												<i class="fa-solid fa-shop"></i> <span>Sản phẩm</span>
											</p>
										</article>
								</a></li>
								<li><a href="" title="Đánh giá">
										<article class="brand-item__social-item">
											<h6>3.5/5</h6>
											<p>
												<i class="fas fa-star"></i> <span>Đánh giá</span>
											</p>
										</article>
								</a></li>
								<li><a href="" title="Thời gian tham gia">
										<article class="brand-item__social-item">
											<h6>5 tháng</h6>
											<p>
												<i class="fas fa-clipboard-list"></i> <span>Tham gia</span>
											</p>
										</article>
								</a></li>
							</ul>
						</div>
					</div>
					<div class="aside-left__info box">
						<div class="section-title">
							<h3>Thông tin sản phẩm</h3>
						</div>
						<table>
							<tbody>
								<tr>
									<th>Danh mục</th>
									<td>Áo thun tay ngắn</td>
								</tr>
								<tr>
									<th>Thương hiệu</th>
									<td>SLY</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="aside-left__describe box">
						<div class="section-title">
							<h3>Mô tả sản phẩm</h3>
						</div>
						<div class="info-box__content">
							<p>Áo Thun Sly Simple màu vàng</p>
							<p>– Chất liệu: 100% Cotton Chính Phẩm 4 chiều.</p>
							<p>– Họa tiết: Thêu</p>
							<p>– Kiểu dáng: Form suông hiện đại phù hợp cho cả Nam lẫn
								Nữ.</p>
							<p></p>
							<p>HƯỚNG DẪN BẢO QUẢN</p>
							<p>– Hạn chế giặt máy, nên giặt tay</p>
							<p>– Lộn trái khi giặt, nên phơi nơi nắng nhẹ, tránh ánh nắng
								trực tiếp.</p>
							<p></p>
							<p>- Chính sách và điều kiện đổi trả của SLY CLOTHING:</p>
							<p>+ Cam kết được đổi trả hàng trong vòng 7 ngày (tính từ
								ngày nhận hàng).</p>
							<p>+ Cam kết chất lượng và mẫu mã sản phẩm giống với hình
								ảnh.</p>
							<p>+ Hàng phải còn mới, chưa qua sử dụng và còn tag.</p>
							<p>+ Sản phẩm bị lỗi do vận chuyển và do nhà sản xuất.</p>
							<p></p>
							<p>⚠️ LƯU Ý:</p>
							<p>- Khi bạn gặp bất kì vấn đề gì về sản phẩm đừng vội đánh
								giá mà hãy liên hệ qua kênh chat hoặc gọi ngay vào Hotline để
								được SLY hỗ trợ quý khách tốt nhất nhé.</p>
							<p>- Quý khách vui lòng quay video unbox sản phẩm. Nếu sản
								phẩm có Sai xót, lỗi của nhà sản xuất, thiếu sản phẩm SLY sẽ dựa
								trên video mà bạn cung cấp để giải quyết đơn hàng của bạn.</p>
							<p>📥 Chat qua fanpage: http://m.me/slyclothing.saigon</p>
							<p>📲 Hotline: 0902788994</p>
							<p></p>
							<p>#sly #slyclothing #freeship #follow</p>
							<p>#unisex #streetwear #teen #friends #oversized #fashion
								#xuhuongthoitrang</p>
							<p>#aothun #simple #aothunsly #aosly</p>
						</div>
					</div>
					<div class="aside-left__reviews box">
						<div class="section-title">
							<h3>Đánh giá sản phẩm</h3>
						</div>
						<div class="reviews__container">
							<div class="reviews__left">
								<div class="box-reviews__top">
									<div class="box-reviews__left">
										<h5 class="box-reviews__number">
											3.5<span class="box-reviews__description">trên 5</span>
										</h5>
									</div>
									<div class="box-reviews__right">
										<div class="box-reviews__stars">
											<i class="fas fa-star star-icon active"></i> <i
												class="fas fa-star star-icon active"></i> <i
												class="fas fa-star star-icon active"></i> <i
												class="fas fa-star star-icon"></i> <i
												class="fas fa-star star-icon"></i>
										</div>
										<div class="box-reviews__description">
											<strong>1</strong><span>&nbsp;đánh giá</span>
										</div>
									</div>
								</div>
							</div>
							<div class="v-divider"></div>

							<div class="reviews__mid">
								<div class="box-reviews__bottom">
									<div class="reviews-bar">
										<div class="reviews-bar__stars">
											<span class="reviews-bar__star-number">5</span> <span
												class="reviews-bar__star"><i
												class="fas fa-star"></i></span>
										</div>
										<div class="reviews-bar__progress" style="-percent: 80%"></div>
										<div class="reviews-bar__percent">80%</div>
									</div>
									<div class="reviews-bar">
										<div class="reviews-bar__stars">
											<span class="reviews-bar__star-number">4</span> <span
												class="reviews-bar__star"><i
												class="fas fa-star"></i></span>
										</div>
										<div class="reviews-bar__progress" style="-percent: 80%"></div>
										<div class="reviews-bar__percent">100%</div>
									</div>
									<div class="reviews-bar">
										<div class="reviews-bar__stars">
											<span class="reviews-bar__star-number">3</span> <span
												class="reviews-bar__star"><i
												class="fas fa-star"></i></span>
										</div>
										<div class="reviews-bar__progress" style="-percent: 0%"></div>
										<div class="reviews-bar__percent">10%</div>
									</div>
									<div class="reviews-bar">
										<div class="reviews-bar__stars">
											<span class="reviews-bar__star-number">2</span> <span
												class="reviews-bar__star"><i
												class="fas fa-star"></i></span>
										</div>
										<div class="reviews-bar__progress" style="-percent: 10%"></div>
										<div class="reviews-bar__percent">0%</div>
									</div>
									<div class="reviews-bar">
										<div class="reviews-bar__stars">
											<span class="reviews-bar__star-number">1</span> <span
												class="reviews-bar__star"><i
												class="fas fa-star"></i></span>
										</div>
										<div class="reviews-bar__progress" style="-percent: 0%"></div>
										<div class="reviews-bar__percent">0%</div>
									</div>
								</div>
							</div>
							<div class="v-divider"></div>
							<div class="reviews__right">
								<div class="reviews__direct">
									<p class="reviews-direct__text">Đánh giá sản phẩm</p>
									<div class="review-direct__stars box">
										<i class="fas fa-star star-icon active"></i> <i
											class="fas fa-star star-icon active"></i> <i
											class="fas fa-star star-icon active"></i> <i
											class="fas fa-star star-icon"></i> <i
											class="fas fa-star star-icon"></i>
									</div>
									<div class="reviews-direct__comment">
										<p class="text-highlight">Viết đánh giá</p>
										<span><i
											class="fa-regular fa-comment-dots text-highlight"></i></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="aside-left__reviews box">
						<!-- ------------------------ ELSE NO REVIEWS ------------------------------- -->
						<section class="no-reviews">
							<div>
								<img src="/assets/imgs/shop/no-review.webp" />
								<p>Hãy là người đầu tiên đánh giá sản phẩm này</p>
							</div>
						</section>
						<!-- ------------------------ ENDIF ------------------------------- -->
					</div>
				</div>
				<div class="detail-info__right box">
					<div class="section-title">
						<h3>Sản phẩm tương tự</h3>
					</div>
					<ul class="sidebar-right__product-list">
						<li class="col py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card2.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card3.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
					</ul>
					<button class="btn btn-primary" style="width: 100%">
						<span>Xem thêm</span>
					</button>
				</div>
			</section>

			<section class="detail__product-list box">
				<!-- ------------------------ Begin PRODUCT ------------------------------- -->
				<section class="page-section">
					<div class="section-title">
						<h3>Sản phẩm tương tự</h3>
					</div>
					<ul class="product-slider category-about row">
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card2.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card3.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card4.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card5.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card2.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
					</ul>
				</section>
				<!-- ------------------------ End PRODUCT ------------------------------- -->
			</section>
			<section class="detail__product-list box">
				<!-- ------------------------ Begin PRODUCT ------------------------------- -->
				<section class="page-section">
					<div class="section-title">
						<h3>Bạn cũng có thể thích</h3>
					</div>
					<ul class="product-slider category-about row">
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="${pageContext.request.contextPath}/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="${pageContext.request.contextPath}/imgs/card2.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card3.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card4.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card5.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card2.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
						<li class="col c-6 m-4 l-2-4 py-1"><a href="#">
								<div class="card">
									<div class="card-img">
										<img src="/assets/imgs/card1.webp" alt="" />
									</div>
									<div class="card-text">
										<h3 class="card-title text-hover">TEELAB</h3>
										<p class="card-des truncate">Áo Thun Teelab Grey Trame
											TS049</p>
										<span class="card-price"> 350.000đ </span> <span
											class="card-price-discount"> -50% </span>
										<p class="card-price-cost">175.000đ</p>
									</div>
								</div>
						</a></li>
					</ul>
				</section>
				<!-- ------------------------ End PRODUCT ------------------------------- -->
			</section>
		</section>
	</main>
	<!-- ----------------- End MAIN---------------------- -->

	<!-- ----------------- Begin STICKY ---------------------- -->
	<div class="sticky--checkout">
		<div class="sticky--checkout__wrapper mid-container">
			<div class="sticky-product__info">
				<img src="/assets/imgs/shop/shop-banner.webp" />
				<div class="sticky-product__name">Áo thun ngắn tay cổ tròn
					ADLV Basic Pink Hồng ADLV Unisex</div>
			</div>
			<div class="sticky-product-one">1</div>
			<div class="sticky-product__price"></div>
			<div class="sticky-product__quantity">
				<div class="product__quantity-wrapper">
					<span class="minus">-</span> <span class="product__quantity">1</span>
					<span class="plus">+</span>
				</div>
			</div>
			<div class="sticky-product__price--current"></div>
			<div class="sticky-product__navigate">
				<a class="btn btn-primary"><span>Đến trang mua hàng</span></a>
			</div>
		</div>
	</div>
	<!-- ----------------- End STICKY ---------------------- -->
	<!-- ----------------- Begin FOOTER---------------------- -->
	<footer class="footer">
		<div class="footer_top">
			<div class="footer_top-item">
				<div class="block_wrapper">
					<ul class="block_list">
						<li class="block_item logo"><a href="/"><img
								src="${pageContext.request.contextPath}/imgs/logo-white.png" alt="logo-white" /></a>
						</li>
						<li class="block_item"><a class="block_link"
							href="tel:0906.880.960" title="Hotline: 0906.880.960">Hotline:
								0906.880.960</a></li>
						<li class="block_item"><a class="block_link" href="/"
							title="9h-18h từ Thứ 2 đến Thứ 6">(9h-18h
								từ Thứ 2 đến Thứ 6)</a></li>
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
											<img src="${pageContext.request.contextPath}/imgs/social/cod.webp" alt="Tiền mặt"
												title="Tiền mặt" />
										</div>
										<div class="card-item_text">Tiền mặt</div>
									</div>
								</a><a class="block_link" href="/" title="Momo">
									<div class="card-item_box">
										<div class="card-item_icon">
											<img src="${pageContext.request.contextPath}/imgs/social/momo.png" alt="Momo"
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
											<img src="${pageContext.request.contextPath}/imgs/social/credit-card.png"
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
											<img src="${pageContext.request.contextPath}/imgs/social/credit-card.png"
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
									<img src="${pageContext.request.contextPath}/imgs/social/ghn.webp" alt="Giao hàng nhanh" />
								</div>
						</a></li>
						<li class="block_delivery-item"><a class="delivery-item_link"
							href="/" title="Giao hàng tiết kiệm">
								<div class="delivery-item_icon">
									<img src="${pageContext.request.contextPath}/imgs/social/ghtk.png"
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
								src="/assets/imgs/app/android.png" alt="Google Play" width="130"
								height="40" /></a></li>
						<li class="block_application-item"><a
							class="application-item_link" href="/" title="App Store"><img
								src="/assets/imgs/app/ios.png" alt="App Store" width="130"
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
						<p>GPĐKKD: 0314119937 do Sở KH và ĐT TPHCM cấp ngày 30/01/2019</p>
						<p>Đăng ký thay đổi lần thứ 7, ngày 07 tháng 06 năm 2021</p>
					</div>
					<div class="footer_top-approve">
						<img src="${pageContext.request.contextPath}/imgs/social/bo-cong-thuong.png"
							alt="Bộ công thương" sizes="" srcset="" />
					</div>
				</div>
			</div>
		</div>
		<div class="footer_bot">Copyright 2015-2021 &copy; Công ty cổ
			phần DOSI GROUP</div>
	</footer>
	<!-- ----------------- End FOOTER---------------------- -->
	<script src="${pageContext.request.contextPath}/js/utils.js"></script>
	<script src="${pageContext.request.contextPath}/js/modal.js"></script>
	<script src="${pageContext.request.contextPath}/js/detail.js"></script>
</body>
</html>