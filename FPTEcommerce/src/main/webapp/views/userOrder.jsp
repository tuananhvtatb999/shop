<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- require -->
    <link href="http://fonts.cdnfonts.com/css/sf-pro-display"
          rel="stylesheet"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
          integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/base.css"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
          integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <!-- require -->
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/shared.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/pages/setting.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/components/footer.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/newcss/userCart.css"/>
    <title>User Information</title>
</head>

<style>
    .btn-inner {
        text-align: center;
    }

    .order-box-list{
        margin-top: 10px;
    }
</style>


<body>
<!-- Header -->
<header class="header-wrapper">
    <div class="header fixed-header">
        <!-- Header - top-->
        <div class="header-top">
            <div class="header-top-left">
                <i class="fas fa-home header-top-left-link"></i>
                <a class="header-top-left-link" href="#">Bán hàng cùng Dosiin</a>
            </div>
            <div class="header-top-right">
                <div>
                    <span class="header-top-right-link">Hotline</span>
                    <a class="header-top-right-link" href="tel:0906880960">0906.880.960</a>
                </div>
                <div>
                    <i class="fab fa-facebook-messenger header-top-right-link" style="margin-right: 3px"></i>
                    <a class="header-top-right-link" href="#">Bán hàng</a>
                </div>
            </div>
        </div>
        <!-- end Header Top -->
        <!-- Header - bottom -->
        <div class="header-bottom">
            <!-- Header-left -->
            <ul class="header-bottom-left">
                <li class="header-bottom-logo">
                    <a href="#">
                        <img src="../assets/img/logo.svg" alt="logo"/>
                    </a>
                </li>
                <li class="header-bottom-item">
                    <a href="#">
                        <span class="header-bottom-item-text text-hover active">Shopping</span>
                    </a>
                </li>

            </ul>
            <!-- end Header-left -->
            <!-- Header-center -->
            <ul class="header-bottom-center">
                <div class="header-center-input">
                    <input type="text" placeholder="Nhập từ khóa tìm kiếm "/>
                </div>
            </ul>
            <!-- end Header-center -->
            <!-- Header-right -->
            <ul class="header-bottom-right">
                <li class="header-bottom-right-item">
                    <a href="#">
                        <i class="far fa-bell"></i>
                    </a>
                </li>
                <li class="header-bottom-right-item">
                    <a href="#">
                        <i class="fas fa-shopping-bag"></i>
                    </a>
                </li>
                <li class="header-bottom-right-items user">
                    <div class="header-bottom-right-item">
                        <a href="#">
                            <i class="far fa-user"></i>
                        </a>
                    </div>
                    <a class="about-user" href="#">
                        <span class="about-user-1">Tài khoản</span>
                        <span class="about-user-2">Xin chào!</span>
                    </a>
                    <i class="fas fa-caret-down" style="font-size: 1.6rem"></i>
                </li>
            </ul>
            <!-- end Header-right -->
        </div>
        <!-- end Header - bottom -->

        <!-- ------------------------ Begin BREADCRUMB ------------------------------- -->
        <ul class="category">
            <li class="category-item text-hover">
                <a href="#">Sản phẩm</a>
            </li>
            <li class="category-item text-hover">
                <a href="#">Nam</a>
            </li>
            <li class="category-item text-hover">
                <a href="#">Nữ</a>
            </li>
            <li class="category-item text-hover">
                <a href="#">Phụ kiện</a>
            </li>
            <li class="category-item text-hover">
                <a href="#">Thương hiệu</a>
            </li>
            <li class="category-item text-hover">
                <a href="#">Xếp hạng</a>
            </li>
            <li class="category-item text-hover">
                <a href="#">Mới nhất </a>
            </li>
            <li class="category-item text-hover">
                <a href="#">Giá sốc </a>
            </li>
            <li class="category-item text-hover">
                <a href="#">Sự kiện </a>
            </li>
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
                        <img src="../assets/img/shop/shop-banner.webp"/>
                    </div>
                    <div class="aside__user-name">Name Of User</div>
                </div>
                <ul class="nav">
                    <li class="nav-item" data-tab-select="user-information">
                        <a class="nav-link" href="./user-information.html">
                <span class="menu-icon">
                  <i class="fas fa-user"></i>
                </span>
                            <span class="menu-title">Tài khoản của tôi</span>
                        </a>
                        <ul class="nav-child">
                            <li class="nav-child-item" data-tab-select="user-information">
                                <a class="nav-child-link" href="./user-information.html">
                                    <span class="menu-child-title">Hồ sơ</span>
                                </a>
                            </li>
                            <li class="nav-child-item" data-tab-select="change-password">
                                <a class="nav-child-link" href="./change-password.html">
                                    <span class="menu-child-title">Đổi mật khẩu</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item active" data-tab-select="user-order">
                        <a class="nav-link" href="./user-order.html">
                <span class="menu-icon">
                  <i class="fab fa-shopify"></i>
                </span>
                            <span class="menu-title">Đơn mua</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="setting__right">
            <div class="user-info" id="user-order">
                <ul class="tab-list">
                    <li class="tab-item text-hover active">
                        <a href="${pageContext.request.contextPath}/customer/order/list/0">Tất cả</a>
                    </li>
                    <li class="tab-item text-hover">
                        <a href="${pageContext.request.contextPath}/customer/order/list/1">Chờ xác nhận</a>
                    </li>
                    <li class="tab-item text-hover">
                        <a href="${pageContext.request.contextPath}/customer/order/list/2">Chờ lấy hàng</a>
                    </li>
                    <li class="tab-item text-hover">
                        <a href="${pageContext.request.contextPath}/customer/order/list/3">Đang giao</a>
                    </li>
                    <li class="tab-item text-hover">
                        <a href="${pageContext.request.contextPath}/customer/order/list/4">Đã giao</a>
                    </li>
                    <li class="tab-item text-hover">
                        <a href="${pageContext.request.contextPath}/customer/order/list/5">Đã hủy</a>
                    </li>
                </ul>
                <c:forEach items="${orders}" var="item" varStatus="loop">
                    <div class="order-box-list mt-20">

                        <div class="order-box box">
                            <c:forEach items="${item.orderDetailEntity}" var="i" varStatus="loop">
                                <div class="order-box__top">
                                    <div class="order__user-info">
                                        <span class="order__user-info__brand">${i.productEntity.shopEntity.name}</span>

                                        <a class="btn btn-badge-border"
                                           href="${pageContext.request.contextPath}/detailProduct?id=${i.productEntity.shopEntity.id}">
                                            <div class="btn-inner">
                                                <i class="fa-solid fa-store"></i>
                                                <span class="order__chat-text">Xem shop</span>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="order__state-display">
                                        <div class="order__product-state">
                                            <div class="order__product-state__icon"><i class="fas fa-truck"></i></div>
                                            <div class="order__product-state__text">
                                                <c:choose>
                                                    <c:when test="${i.status == 1}">
                                                        Chờ xác nhận
                                                    </c:when>

                                                    <c:when test="${i.status == 2}">
                                                        Chờ lấy hàng
                                                    </c:when>

                                                    <c:when test="${i.status == 3}">
                                                        Đang giao
                                                    </c:when>

                                                    <c:when test="${i.status == 4}">
                                                        Đã giao
                                                    </c:when>

                                                    <c:when test="${i.status == 5}">
                                                        Đã hủy
                                                    </c:when>
                                                </c:choose>
                                            </div>
                                        </div>

                                        <div class="v-divider"></div>
                                        <div class="order__state-display__state text-highlight">đang giao</div>
                                    </div>
                                </div>
                                <div class="divider"></div>
                                <div class="order-box__mid">
                                    <div class="order-box__mid-left">
                                        <div class="order-box__product">
                                            <div class="order-product__img"><img src="${i.productEntity.pathImage}"
                                                                                 width="85px" height="85px"/>
                                            </div>
                                            <div class="order-product__detail">
                                                <div class="order-product__name">${i.productEntity.name}</div>
                                                <div class="order-product__description">Size:
                                                    <span>${i.productEntity.productDetailsEntity.size}</span></div>
                                                <div class="order-product__description">Color
                                                    <span>${i.productEntity.productDetailsEntity.color}</span></div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="order-box__mid-midle">
                                        <div class="product__quantity-wrapper button-container">
                                            <span class="order-product__description">Số lượng: </span>
                                            <span class="product__quantity qty"> ${i.quantity}</span>
                                        </div>
                                    </div>

                                    <div class="order-box__mid-right">
                                        <div class="order-product__price--old">${i.productEntity.unitPrice}</div>
                                        <div class="discountPercent">
                                            <i>-</i>${i.productEntity.discountEntity.percentz}<i>%</i></div>
                                        <div class="order-product__price--new text-highlight price">${i.productEntity.promotionPrice}</div>
                                    </div>
                                </div>
                                <div class="order-box__bot">
                                    <div class="order-box__total">
                                <span class="order-box__icon-right"><i
                                        class="fas fa-shield-alt text-highlight"></i></span>
                                        <span class="order-box__total-text">Tổng số tiền:</span>
                                        <span class="order-box__total-price text-highlight">${i.totalDiscountPrice}</span>
                                    </div>
                                    <div class="order-box__next-actions">
                                        <div class="order-box__next-actions__text"></div>
                                        <div class="order-box__next-actions__button-list"><a class="btn btn-badge">
                                            <span>Mua lại</span>
                                        </a>
                                            <a class="btn btn-badge-border">
                                                <div class="btn-inner">
                                                    <span>Đã Nhận</span>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </c:forEach>
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
                        <a href="/"><img src="${pageContext.request.contextPath}/imgs/logo-white.png" alt="logo-white"/></a>
                    </li>
                    <li class="block_item">
                        <a class="block_link" href="tel:0906.880.960" title="Hotline: 0906.880.960">Hotline:
                            0906.880.960</a>
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
                                    <div class="card-item_icon"><img
                                            src="${pageContext.request.contextPath}/imgs/social/cod.webp" alt="Tiền mặt"
                                            title="Tiền mặt">
                                    </div>
                                    <div class="card-item_text">Tiền mặt</div>
                                </div>
                            </a><a class="block_link" href="/" title="Momo">
                            <div class="card-item_box">
                                <div class="card-item_icon"><img
                                        src="${pageContext.request.contextPath}/imgs/social/momo.png" alt="Momo"
                                        title="Momo"/>
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
                                    <div class="card-item_icon"><img
                                            src="${pageContext.request.contextPath}/imgs/social/credit-card.png"
                                            alt="VISA, MASTER, JCB"
                                            title="VISA, MASTER, JCB"/></div>
                                    <div class="card-item_text">VISA, MASTER, JCB</div>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li class="block_card-item">
                        <div class="card-item_list">
                            <a class="block_link" href="/" title="Internet Banking">
                                <div class="card-item_box">
                                    <div class="card-item_icon"><img
                                            src="${pageContext.request.contextPath}/imgs/social/credit-card.png"
                                            alt="Internet Banking"
                                            title="Internet Banking"/></div>
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

<!-- <script src="../assets/js/changeOrderTabs.js"></script> -->
</body>
</html>