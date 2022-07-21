<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product List</title>
<!------------ CSS core ------------ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/core.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/theme-default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/OrderDetails.css">

<!------------- Add Mutiple Image -------------->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!----Header---->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/sideBar.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/newcss/header.css" />
<!--------------- form ------------------------------- -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet">


<!-- FontAwsome...Icon -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/fonts/fontawesome-free-6.1.1-web/css/all.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">


</head>
<header class="header-wrapper">
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span> <span></span>
			</div>
		</div>
	</div>
	<div class="header fixed-header">
		<!-- Header - bottom -->
		<div class="header-bottom">

			<!-- Header-left -->
			<ul class="header-bottom-left">
				<div
					class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
					<a href="#menu-toggle" class="btn btn-default menu-toggle"><i
						class="bx bx-menu bx-sm"></i></a>


				</div>
				<li class="header-bottom-logo"><a
					href="${pageContext.request.contextPath}/home"> <img
						src="${pageContext.request.contextPath}/newimage/logo.svg"
						alt="logo" />
				</a></li>
			</ul>
			<!-- end Header-left -->
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
								<span class="about-user-2">Xin chào!</span> <span
								class="about-user-1"><c:out
										value="${sessionScope.email }"></c:out></span>
							</a>
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
									<li><a
										href="${pageContext.request.contextPath}/customer/updateProfile">
											Thông tin </a></li>
									<li><a href="logout"> Đăng xuất </a></li>

								</c:when>

							</c:choose>
						</ul>
					</div>
				</li>
			</ul>
			<!-- end Header-right -->
		</div>
	</div>
</header>
<aside class="nav" id="layout-menu">
	<nav class="nav__container " id="layout-navbar">

		<div class="list-group">


			<div id="wrapper-navbar">
				<div class="nav__list">
					<div class="nav__items">
						<!-- <div class="top-nav">
                                  <h3 class="nav__subtitle">Menu</h3>
                              </div> -->
						<!-- <a href="#" class="nav__link active">
                                  <i class='bx bx-home nav__icon'></i>
                                  <span class="nav__name">Home</span>
                              </a> -->

						<div class="nav__dropdown">
							<a class="nav__link"> <i class='bx bx-closet nav__icon'></i>
								<span class="nav__name">Quản lý sản phẩm</span>

							</a>

							<div class="nav__dropdown-collapse">
								<div class="nav__dropdown-content">
									<a href="${pageContext.request.contextPath}/shop/listProduct"
										class="nav__dropdown-item">Tất cả sản phẩm</a> <a
										href="${pageContext.request.contextPath}/shop/addProduct"
										class="nav__dropdown-item">Thêm sản phẩm</a> <a href="#"
										class="nav__dropdown-item">Sản phẩm vi phạm</a>
								</div>
							</div>
						</div>

						<div class="nav__dropdown">
							<a class="nav__link"> <i class='bx bx-task nav__icon'></i> <span
								class="nav__name">Quản lý đơn hàng</span>

							</a>

							<div class="nav__dropdown-collapse">
								<div class="nav__dropdown-content">
									<a href="${pageContext.request.contextPath}/shop/listOrder"
										class="nav__dropdown-item">Tất cả đơn hàng</a> <a href="#"
										class="nav__dropdown-item">Đơn hàng hủy</a>
								</div>
							</div>
						</div>

						<a href="/html/DiscountList.html" class="nav__link"> <i
							class='bx bxs-discount nav__icon'></i> <span class="nav__name">Discount</span>
						</a> <a href="#" class="nav__link"> <i
							class=' bx bxs-bar-chart-square nav__icon'></i> <span
							class="nav__name">Report</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</nav>
</aside>
<body>

	<div class="layout-page">
		<!-- Content wrapper -->
		<div class="content-wrapper">
			<!-- Content -->

			<div class="row">
				<div class="col-sm-12 center-block col-xxl">

					<div class="mb-4 ">
						<div class="">
							<div class="row">
								<div class="col-lg-8 mb-3 mb-lg-0">
									<!-- Card -->
									<div class="card mb-3 mb-lg-5">
										<!-- Header -->
										<div class="card-header">
											<div class="card-header-right">
												<button class="right-icon-goBack btn"
													onclick="history.back()">
													<i class="fa-solid fa-chevron-left "></i>
												</button>
												<div class="right-content">
													<h4 class="card-header-title">Chi tiết đơn hàng</h4>
												</div>
											</div>
											<span id="status"> <c:choose>
													<c:when test="${orders.status == 1}">
														<lable class="text_color badge bg-label-secondary">Chờ
														xác nhận</lable>
													</c:when>

													<c:when test="${orders.status == 2}">
														<lable class="text_color badge bg-label-warning">Chờ
														lấy hàng</lable>
													</c:when>

													<c:when test="${orders.status == 3}">
														<lable class="text_color badge bg-label-primary">Đang
														giao</lable>
													</c:when>

													<c:when test="${orders.status == 4}">
														<lable class="text_color badge bg-label-success">Đã
														giao</lable>
													</c:when>

													<c:when test="${orders.status == 5}">
														<lable class="text_color badge bg-label-danger">Đã
														hủy</lable>
													</c:when>
												</c:choose>
											</span> <span> <lable class="h5">ID: </lable> <i class="h5"
												href="">${orders.orderEntity.id}</i>
											</span>
										</div>
										<!-- End Header -->

										<!-- Body -->
										<div class="card-body">
											<!-- Media -->
											<div class="media">
												<div class="avatar avatar-xl mr-3">
													<img class="img-fluid"
														src="${orders.productEntity.pathImage}"
														alt="Image Description">
												</div>

												<div class="media-body">
													<div class="row">
														<div class="col-md-6 mb-3 mb-md-0">
															<a class="h6 d-block"
																href="${pageContext.request.contextPath}/detailProduct?id=${orders.productEntity.id}">
																${orders.productEntity.name}</a>
															<div class="font-size-sm text-body">
																<span>Gender:</span> <span class="font-weight-bold">${orders.productEntity.productDetailsEntity.gender}</span>
															</div>
															<div class="font-size-sm text-body">
																<span>Color:</span> <span class="font-weight-bold">${orders.productEntity.productDetailsEntity.color}</span>
															</div>
															<div class="font-size-sm text-body">
																<span>Size:</span> <span class="font-weight-bold">${orders.productEntity.productDetailsEntity.size}</span>
															</div>
														</div>

														<div class="col col-md-2 align-self-center">
															<h6>${orders.productEntity.unitPrice}</h6>
														</div>

														<div class="col col-md-2 align-self-center">
															<h6>${orders.quantity}</h6>
														</div>

														<div class="col col-md-2 align-self-center text-right">
															<h6>${orders.totalPrice}</h6>
														</div>
													</div>
												</div>
											</div>
											<!-- End Media -->

											<hr>


											<div class="row justify-content-md-end mb-3">
												<div class="col-md-8 col-lg-7">
													<dl class="row text-sm-right">
														<dt class="col-sm-6">Product Price:</dt>
														<dd class="col-sm-6">${orders.productEntity.promotionPrice}</dd>
														<dt class="col-sm-6">Shipping fee:</dt>
														<dd class="col-sm-6">30.000</dd>
														<dt class="col-sm-6">Discord:</dt>
														<dd class="col-sm-6">${orders.productEntity.discountEntity.percentz}</dd>
														<dt class="col-sm-6 h5">Total:</dt>
														<dd class="col-sm-6 h5">${orders.totalDiscountPrice}</dd>
													</dl>
													<!-- End Row -->
												</div>
											</div>
											<!-- End Row -->
										</div>
										<!-- End Body -->
									</div>
									<!-- End Card -->
								</div>

								<div class="col-lg-4">
									<!-- Card -->
									<div class="card">
										<!-- Header -->
										<div class="card-header">
											<h4 class="card-header-title">Khách hàng</h4>
										</div>
										<!-- End Header -->

										<!-- Body -->
										<div class="card-body">
											<a class="media customer-avatar align-items-center" href="#">
												<div class="avatar avatar-circle mr-3">
													<img class="avatar-img" style="border-radius: 50%;"
														src="${user.path}" alt="Image Description">
												</div>
												<div class="media-body">
													<span class="text-body customer-name text-hover-primary">${user.username}</span>
												</div>

											</a>
											<hr>

											<div
												class="d-flex justify-content-between align-items-center">
												<h6>Thông tin liên lạc</h6>

											</div>

											<ul class="list-unstyled list-unstyled-py-2">
												<li><i class="tio-online mr-2"></i> ${user.email}</li>
												<li><i class="tio-android-phone-vs mr-2"></i>
													${user.phoneNumber}</li>
											</ul>

											<hr>

											<div
												class="d-flex justify-content-between align-items-center">
												<h6>Địa chỉ</h6>

											</div>

											<span class="d-block" style="padding-bottom: 15px;">
												${user.address} </span>
											<!-- <hr>
                                           <div class="mt-3">
                                            <h6 class="mb-0">Mastercard</h6>
                                            <span class="d-block">Card Number: ************4291</span>
                                          </div> -->

										</div>
										<!-- End Body -->
									</div>
									<!-- End Card -->
									<div class="btn btnArond">
										<a onclick="">
											<button type="button" class="btn btn-warning"
												onclick="Product.updateStatusOrder(${orders.id}, 2)">
												<span>Đồng Ý</span>
											</button>
										</a> <a onclick="">
											<button type="button" class="btn button primary"
												onclick="Product.updateStatusOrder(${orders.id}, 3)">
												<span>Đã giao</span>
											</button>
										</a> <a>
											<button type="button" class="btn btn-danger"
												onclick="Product.updateStatusOrder(${orders.id}, 5)">Từ
												Chối</button>
										</a>

									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- / Content -->
	</div>

	<!-- / Content -->
	</div>


	<!-- build:js assets/vendor/js/core.js -->
	<script src="${pageContext.request.contextPath}/jquery/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/popper.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/menu.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/main.js"></script>
	<script src="${pageContext.request.contextPath}/js/search.js"></script>

	<script
		src="${pageContext.request.contextPath}/newjs/perfect-scrollbar.js"></script>
	<!-- Vendors JS -->
	<script src="../assets/vendor/libs/apex-charts/apexcharts.js"></script>
	<!-- ============= Clear Button ============== -->
	<script>
    function clearForm() {
        document.getElementById("form-addProduct").reset();
    }
</script>

	<script>
    function showMessReject(id) {
        var option = confirm('Are you sure to reject order ' + id);
        if (option === true) {
            window.location.href = 'updateStatusOrder?id=' + id;
        }
    }
</script>
	<!-- Nice Select JS -->
	<script src="${pageContext.request.contextPath}/js1/nicesellect.js"></script>
	<!-- Active JS -->
	<script src="${pageContext.request.contextPath}/js1/active.js"></script>
	<script src="${pageContext.request.contextPath}/newjs/popup.js"></script>
</body>

</html>