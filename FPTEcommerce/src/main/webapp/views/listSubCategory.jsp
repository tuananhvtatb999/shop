<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>Category</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect"
	href="https://flayout-demo-placeholder2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />
<!-- FontAwsome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/fonts/fontawesome-free-6.1.1-web/css/all.min.css">

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/CategoryList.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/libs/apex-charts/apex-charts.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script
	src="${pageContext.request.contextPath}/assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="${pageContext.request.contextPath}/assets/js/config.js"></script>
</head>
<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span> <span></span>
			</div>
		</div>
	</div>
<body>
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<!-- Menu -->

			<aside id="layout-menu"
				class="layout-menu menu-vertical menu bg-menu-theme">
				<div class="app-brand demo">
					<a href="index.html" class="app-brand-link"> <span
						class="app-brand-logo demo"> <img alt="" src="../imgs/logo.png">
					</span> <span class="app-brand-text demo menu-text fw-bolder ms-2">FPT-EC</span>
					</a> <a href="javascript:void(0);"
						class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
						<i class="bx bx-chevron-left bx-sm align-middle"></i>
					</a>
				</div>

				<div class="menu-inner-shadow"></div>

				<ul class="menu-inner py-1">
					<!-- Dashboard -->
					<li class="menu-item active"><a href="index.html"
						class="menu-link"> <i
							class="menu-icon tf-icons bx bx-home-circle"></i>
							<div data-i18n="Analytics">Bảng điều khiển</div>
					</a></li>

					<!-- E-Commerce -->
					<li class="menu-header small text-uppercase"><span
						class="menu-header-text">E-Commerce</span></li>
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-dock-top"></i>
							<div data-i18n="Category">Danh mục</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="${pageContext.request.contextPath}/admin/listCategory"
								class="menu-link">
									<div data-i18n="CategoryList">Tất cả danh mục</div>
							</a></li>
							<li class="menu-item"><a href="${pageContext.request.contextPath}/admin/addCategory"
								class="menu-link">
									<div data-i18n="AddSubCategory">Thêm danh mục</div>
							</a></li>

						</ul></li>
					<li class="menu-item active"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <!-- <i class="menu-icon tf-icons bx bx-dock-top"></i> -->
							<i class="menu-icon tf-icons bx bx-copy"></i>
							<div data-i18n="SubCategory">Danh mục phụ</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item active"><a href="${pageContext.request.contextPath}/admin/listSubCategory"
								class="menu-link">
									<div data-i18n="SubCategoryList">Tất cả danh mục phụ</div>
							</a></li>
							<li class="menu-item"><a href="${pageContext.request.contextPath}/admin/addSubCategory"
								class="menu-link">
									<div data-i18n="AddSubCategory">Thêm danh mục phụ</div>
							</a></li>

						</ul></li>
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-cube-alt"></i>
							<div data-i18n="Misc">Misc</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="pages-misc-error.html"
								class="menu-link">
									<div data-i18n="Error">Error</div>
							</a></li>
							<li class="menu-item"><a
								href="pages-misc-under-maintenance.html" class="menu-link">
									<div data-i18n="Under Maintenance">Under Maintenance</div>
							</a></li>
						</ul></li>
				</ul>
			</aside>
			<!-- / Menu -->

			<!-- Layout container -->
			<div class="layout-page">
				<!-- Navbar -->

				<nav
					class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
					id="layout-navbar">
					<div
						class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
						<a class="nav-item nav-link px-0 me-xl-4"
							href="javascript:void(0)"> <i class="bx bx-menu bx-sm"></i>
						</a>
					</div>

					<div class="navbar-nav-right d-flex align-items-center"
						id="navbar-collapse">

						<!-- Search -->
						<form:form
							action="${pageContext.request.contextPath}/admin/doSearchSubCategory"
							method="get">
							<div class="navbar-nav align-items-center">
								<div class="nav-item d-flex align-items-center">
									<input type="text" class="form-control border-0 shadow-none"
										placeholder="Tìm kiếm..." aria-label="Search..." name="keyword" />
								</div>
								<div class="input-group-prepend">
									<button class="btn btn-outline-secondary" type="submit"
										id="button-addon1">
										<i class="bx bx-search fs-4 lh-0"></i>
									</button>
								</div>
							</div>
						</form:form>
						<!-- /Search -->

						<ul class="navbar-nav flex-row align-items-center ms-auto">
							<!-- Place this tag where you want the button to render. -->
							<li class="nav-item lh-1 me-3">
								<button
									class="btn rounded-pill btn-icon btn-outline-secondary
                ">
									<i class="fa-solid fa-bell"></i>
								</button>
							</li>

							<!-- User -->
							<li class="nav-item navbar-dropdown dropdown-user dropdown">
								<a class="nav-link dropdown-toggle hide-arrow"
								href="javascript:void(0);" data-bs-toggle="dropdown">
									<div class="avatar avatar-online">
										<img src="../assets/img/avatars/1.png" alt
											class="w-px-40 h-auto rounded-circle" />
									</div>
							</a>
								<ul class="dropdown-menu dropdown-menu-end">
									<li><a class="dropdown-item" href="#">
											<div class="d-flex">
												<div class="flex-shrink-0 me-3">
													<div class="avatar avatar-online">
														<img src="../assets/img/avatars/1.png" alt
															class="w-px-40 h-auto rounded-circle" />
													</div>
												</div>
												<div class="flex-grow-1">
													<span class="fw-semibold d-block">John Doe</span> <small
														class="text-muted">Admin</small>
												</div>
											</div>
									</a></li>
									<li>
										<div class="dropdown-divider"></div>
									</li>
									<li><a class="dropdown-item" href="#"> <i
											class="bx bx-user me-2"></i> <span class="align-middle">My
												Profile</span>
									</a></li>
									<li><a class="dropdown-item" href="#"> <i
											class="bx bx-cog me-2"></i> <span class="align-middle">Settings</span>
									</a></li>
									<li><a class="dropdown-item" href="#"> <span
											class="d-flex align-items-center align-middle"> <i
												class="flex-shrink-0 bx bx-credit-card me-2"></i> <span
												class="flex-grow-1 align-middle">Billing</span> <span
												class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
										</span>
									</a></li>
									<li>
										<div class="dropdown-divider"></div>
									</li>
									<li><a class="dropdown-item" href="auth-login-basic.html">
											<i class="bx bx-power-off me-2"></i> <span
											class="align-middle">Log Out</span>
									</a></li>
								</ul>
							</li>
							<!--/ User -->
						</ul>
					</div>
				</nav>

				<!-- / Navbar -->

				<!-- Content wrapper -->
				<div class="content-wrapper">
					<!-- Content -->

					<div class="col-sm-10 center-block">
						<div class="card-body">
							<div class="card mb-4 ">

								<div class="header-table">
									<h4 class="card-header">Tất cả danh mục phụ</h4>
									<div class="btn btnArond button-wrapper">
										<a href="${pageContext.request.contextPath}/admin/addSubCategory">
											<button type="button" class="btn btn-primary"
												>
												<i class="fas fa-plus icon-fas"></i> <span>Thêm danh mục phụ</span>
											</button>
										</a>
										<!-- <button type="button" class="btn btn-primary"><i class="fas fa-plus icon-fas"></i>Add Sub-Category</button> -->
									</div>
								</div>
								<div class="table-responsive text-nowrap">
									<table class="table">
										<thead class="table-light">
											<tr>

												<th scope="col">STT</th>
												<th><strong>DANH MỤC</strong></th>
												<th><strong>TÊN DANH MỤC PHỤ</strong></th>
												<th><strong>MÃ DANH MỤC PHỤ</strong></th>
												<th><strong>Actions</strong></th>
											</tr>
										</thead>
										<tbody class="table-border-bottom-0">
											<c:if test="${message != null }">
												<span class="error"><c:out value="${message }"></c:out></span>
											</c:if>
											<c:choose>
												<c:when
													test="${listSubCategory !=null && listSubCategory.size() gt 0}">
													<c:forEach items="${requestScope.listSubCategory }" var="item"
														varStatus="theCount">
														<tr>
															<th scope="row"><c:out value="${theCount.count}"></c:out></th>
															
															<td><c:out value="${item.category.name }"></c:out></td>
															<td><c:out value="${item.nameSub }"></c:out></td>
															<td><c:out value="${item.codeSub }"></c:out></td>
															<td>
																<div class="dropdown">
																	<button type="button"
																		class="btn p-0 dropdown-toggle hide-arrow"
																		data-bs-toggle="dropdown">
																		<i class="bx bx-dots-vertical-rounded"></i>
																	</button>
																	<div class="dropdown-menu">
																		<a class="dropdown-item"
																			href="${pageContext.request.contextPath}/admin/updateSubCategory?id=${item.id }"><i
																			class="bx bx-edit-alt me-1"></i> Edit</a> <a
																			class="dropdown-item" href="${pageContext.request.contextPath}/admin/deleteSubCategory?id=${item.id }" onclick="showMess(${item.id})"><i
																			class="bx bx-trash me-1"></i> Delete</a>
																	</div>
																</div>
															</td>
														</tr>
													</c:forEach>
													<tr>
														<td colspan="12"><c:import url="common/paging.jsp" />
														</td>
													</tr>
												</c:when>
												<c:otherwise>
													<tr>
														<td style="color: red; text-align: center" colspan="12">No
															data found</td>
													</tr>
												</c:otherwise>

											</c:choose>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- / Content -->

				<!-- Footer -->
				<footer class="content-footer footer bg-footer-theme">
					<div
						class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
						<div class="mb-2 mb-md-0">
							©
							<script>
								document.write(new Date().getFullYear());
							</script>
							, made with ❤️ by <a href="#" target="_blank"
								class="footer-link fw-bolder">Group 19 - FPT University</a>
						</div>
						<div>
							<a
								href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
								target="_blank" class="footer-link me-4">Support</a>
						</div>
					</div>
				</footer>
				<!-- / Footer -->

				<div class="content-backdrop fade"></div>
			</div>
			<!-- Content wrapper -->
		</div>
		<!-- / Layout page -->
	</div>

	<!-- Overlay -->
	<div class="layout-overlay layout-menu-toggle"></div>

	<!-- / Layout wrapper -->



	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/jquery/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/popper/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/js/bootstrap.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script
		src="${pageContext.request.contextPath}/assets/vendor/js/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/apex-charts/apexcharts.js"></script>

	<!-- Main JS -->
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

	<!-- Page JS -->
	<script
		src="${pageContext.request.contextPath}/assets/js/dashboards-analytics.js"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<script>
		function showMess(id) {
			var option = confirm('Are you sure to delete');
			if(option === true) {
				window.location.href = 'admin/deleteCategory?id=' + id;
			}
		}
	</script>
	<!-- Nice Select JS -->
	<script src="${pageContext.request.contextPath}/js1/nicesellect.js"></script>
	<!-- Active JS -->
	<script src="${pageContext.request.contextPath}/js1/active.js"></script>
</body>
</html>