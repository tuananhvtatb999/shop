<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- JSTL -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- require -->
    <link href="http://fonts.cdnfonts.com/newcss/sf-pro-display"
          rel="stylesheet"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
          integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/newcss/base.css"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/newcss/all.min.css"
          integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <!-- require -->
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/detail.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/newcss/shared.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/newcss/breadcrumb.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/newcss/footer.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}css/components/modal.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/components/pagination.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/newcss/userCart.css"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/newcss/setting.css"/>

    <title>User Cart</title>
</head>
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
                        <span class="header-bottom-item-text text-hover active">Giỏ Hàng</span>
                    </a>
                </li>
            </ul>
            <!-- end Header-left -->
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

    </div>

</header>
<!-- end Header -->

<body>
<!-- ----------------- Begin MAIN: SETTING ---------------------- -->
<div class="mid-container">
    <div class="setting">

        <div class="setting__right-cart" style="width: 100%;">
            <div class="user-info" id="user-order">
                <ul class="tab-list-cart">
                    <li class="tab-item text-hover">
                        <a href="#">Sản Phẩm</a>
                    </li>
                    <li class="tab-item text-hover">
                        <a href="#">Số Lượng</a>
                    </li>
                    <li class="tab-item text-hover">
                        <a href="#">Số tiền</a>
                    </li>
                </ul>
                <div class="order-box-list">
                    <c:set var="total" value="${0}"/>
                        <div class="order-box box">
                            <c:forEach items="${CART.productInCarts}" var="item" varStatus="loop">
                            <div class="order-box__top">
                                <div class="order__user-info">

                                    <span class="order__user-info__brand">${item.shopName}</span>
                                    <a class="btn btn-badge-border" href="${item.shopUrl}">
                                        <div class="btn-inner">
                                            <i class="fa-solid fa-store"></i>
                                            <span class="order__chat-text">Xem shop</span>
                                        </div>
                                    </a>
                                </div>

                            </div>
                            <div class="divider"></div>
                            <div class="order-box__mid">
                                <div class="order-box__mid-left">
                                    <div class="order-box__product">
                                        <div class="order-product__img"><img src="${item.pathImage}" width="85px"
                                                                             height="85px"/>
                                        </div>
                                        <div class="order-product__detail">
                                            <div class="order-product__name">${item.name}</div>
                                            <div class="order-product__description">Size: <span>${item.size}</span>
                                            </div>
                                            <div class="order-product__description">Color <span>${item.color}</span>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <div class="order-box__mid-midle">
                                    <div class="product__quantity-wrapper button-container">
                                        <span class="minus" onclick="Product.changeAmountMinus(${item.id}, ${total}, ${item.promotionPrice});">-</span>
                                        <span class="product__quantity qty" id="quantity" >${item.quantity}</span>
                                        <span class="plus" onclick="Product.changeAmountAdd(${item.id}, ${total}, ${item.promotionPrice})">+</span>

                                    </div>
                                </div>

                                <div class="order-box__mid-right">
                                    <div class="order-product__price--old">${item.unitPrice}</div>
                                    <div class="discountPercent"><i>-</i>${item.percentz}<i>%</i></div>
                                    <div class="order-product__price--new text-highlight price" id="promotion-price">${item.promotionPrice}</div>
                                </div>
                                <button class="btn btn-badge-border" onclick="location.href='${pageContext.request.contextPath}/remove-product-in-cart/${item.id}'">
                                    <div class="btn-inner">
                                        <span>Xóa</span>
                                    </div>
                                </button>
                            </div>

                                <c:set var="total" value="${total + item.quantity * item.promotionPrice}" />
                            </c:forEach>
                            <div class="order-box__bot">
                                <div class="order-box__total">
                                    <span class="order-box__icon-right"><i class="fas fa-shield-alt text-highlight"></i></span>
                                    <span class="order-box__total-text">Tổng số tiền:</span>
                                    <span class="order-box__total-price text-highlight total" id="total"><fmt:formatNumber type="number" maxIntegerDigits="13"
                                                                                                                           value="${total }" /></span>
                                </div>
                                <div class="order-box__next-actions">
                                    <div class="order-box__next-actions__text"></div>
                                    <div class="order-box__next-actions__button-list"><a class="btn btn-badge" href="${pageContext.request.contextPath}/customer/check-out">
                                        <span>Mua Ngay</span>
                                    </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                </div>
                <!-- <div id="site-footer">
                  <div class="container clearfix">

                    <div class="left">
                      <h2 class="subtotal">Subtotal: <span>163.96</span>€</h2>
                      <h3 class="tax">Taxes (5%): <span>8.2</span>€</h3>
                      <h3 class="shipping">Shipping: <span>5.00</span>€</h3>
                    </div>

                    <div class="right">
                      <h1 class="total">Total: <span>177.16</span>€</h1>
                      <a class="btn btn-primary">
                        <span>Checkout</span>
                        </a>
                    </div>

                  </div>
                </div> -->


            </div>
        </div>
    </div>
</div>
<!-- ----------------- End MAIN: SETTING  ---------------------- -->


<!-- ----------------- End FOOTER---------------------- -->

<!-- <script src="${pageContext.request.contextPath}/js/changeOrderTabs.js"></script> -->
<script src="${pageContext.request.contextPath}/js/utils.js"></script>
<script src="${pageContext.request.contextPath}/js/modal.js"></script>
<!-- <script src="${pageContext.request.contextPath}/js/detail.js"></script> -->
<script src="${pageContext.request.contextPath}/js/user-cart.js"></script>
<script src="${pageContext.request.contextPath}/js/search.js"></script>
</body>
<!-- ----------------- Begin FOOTER---------------------- -->
<footer class="footer">
    <div class="footer_top">
        <div class="footer_top-item">
            <div class="block_wrapper">
                <ul class="block_list">
                    <li class="block_item logo">
                        <a href="/"><img src="../assets/img/logo-white.png" alt="logo-white"/></a>
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
                                    <div class="card-item_icon"><img src="../assets/img/social/cod.webp" alt="Tiền mặt"
                                                                     title="Tiền mặt">
                                    </div>
                                    <div class="card-item_text">Tiền mặt</div>
                                </div>
                            </a><a class="block_link" href="/" title="Momo">
                            <div class="card-item_box">
                                <div class="card-item_icon"><img src="../assets/img/social/momo.png" alt="Momo"
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
                                    <div class="card-item_icon"><img src="../assets/img/social/credit-card.png"
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
                                    <div class="card-item_icon"><img src="../assets/img/social/credit-card.png"
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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script>
</script>
</html>