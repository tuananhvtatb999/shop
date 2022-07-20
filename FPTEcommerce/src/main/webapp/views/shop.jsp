<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- require -->
    <link href="http://fonts.cdnfonts.com/css/sf-pro-display" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
          integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
          integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <!-- require -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/newcss/base.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/newcss/shared.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/newcss/shop.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/newcss/breadcrumb.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/newcss/footer.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/components/modal.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/components/pagination.css"/>
    <title>Shop</title>
</head>

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
                    <a href="${pageContext.request.contextPath}/home">
                        <img src="/assets/img/logo.svg" alt="logo"/>
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
        <div class="header__menu">
            <a class="header__prev"><i class="fas fa-angle-left"></i><span class="menu__text--back">Quay
            lại</span></a>
            <ul class="menu">
                <li class="menu__sub active" onclick="activeTab(0)">
                    <a href="#" class="menu__link"><span class="menu__text text-hover">Tổng quát</span></a>
                </li>

            </ul>
        </div>
        <!-- ------------------------ End BREADCRUMB ------------------------------- -->
    </div>

</header>
<!-- end Header -->


<!-- ------------------------ Begin BANNER ------------------------------- -->
<section class="banner--brand page-section"
         style="background-image: url('${pageContext.request.contextPath}/imgs/shop/shop-banner.webp')">
    <div class="brand__wrapper">
        <div class="brand__left">
            <div class="brand-item__info">
                <div class="brand-item__detail-wrapper">
                    <a href="#"><img width="179" height="179" class="brand-item__logo-img" alt="brand-name"
                                     src="${shop.linkImage}"/></a>
                    <div class="brand-item__detail">
                        <div class="brand-item__name">
                            <h3>${shop.name}</h3>
                        </div>
                        <ul class="brand-item__social-list">
                            <li>
                                <a href="" title="Sản phẩm">
                                    <article class="brand-item__social-item">
                                        <h6>17</h6>
                                        <p>
                                            <i class="fa-solid fa-shop"></i>
                                            <span>Sản phẩm</span>
                                        </p>
                                    </article>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="brand-item__description">
                    <p>${shop.description}</p>
                    <a class="brand-item__popup-link" onclick="toggleBranchDetailModal()">Xem thêm</a>
                </div>
            </div>
            <div class="brand-item__action">
                <a class="brand-item__btn--follow btn btn-primary">
                    <i class="fas fa-user-plus"></i>
                    <span class="brand-item__btn--follow__text ">Theo dõi</span>
                </a>
            </div>
        </div>
        <div class="brand__right">
            <div class="brand-item__banner-image__wrapper">
                <img class="brand-item__banner-image"
                     src="${pageContext.request.contextPath}/imgs/shop/shop-banner-background.webp"
                     style="width: 100%; height: 100%"/>
            </div>
        </div>
    </div>
</section>
<!-- ------------------------ End BANNER ------------------------------- -->
<!-- ------------------------ Begin OVERVIEW ------------------------------- -->
<div class="tab active">
    <!-- ------------------------ Begin PRODUCT ------------------------------- -->
    <section class="page-section">
        <div class="tittle-product">
            <h3>Sản phẩm liên quan đến shop</h3>
        </div>
        <ul class="product-slider category-about row">
          <c:forEach items="${products }" var="item"
                     varStatus="loop">
            <li class="col c-6 m-4 l-2-4 py-1">
                <a href="#">
                    <div class="card">
                        <div class="card-img">
                            <img src="${item.pathImage }" alt=""/>
                        </div>
                        <div class="card-text">
                            <h3 class="card-title text-hover">${item.shopEntity.name }</h3>
                            <p class="card-des truncate">${item.name }</p>
                            <span class="card-price"> ${item.unitPrice } </span>
                            <span class="card-price-discount"> ${item.discountEntity.percentz } </span>
                            <p class="card-price-cost">${item.promotionPrice }</p>
                        </div>
                    </div>
                </a>
            </li>
            </c:forEach>
        </ul>
    </section>
    <!-- ------------------------ End PRODUCT ------------------------------- -->

    <!-- ------------------------ Begin CATEGORY-LIST ------------------------------- -->
    <section class="page-section mt-1">
        <div class="tittle-product">
            <h3>Danh mục sản phẩm</h3>
            <ul class="top-category row">
                <li class="col c-4 m-3 l-2-4">
                    <a href="#">
                        <div class="top-item">
                            <span><img src="${pageContext.request.contextPath}/imgs/shop/shop-banner.webp"
                                       alt="Áo thun"/></span>
                            <div class="top-text">
                                <p class="top-title text-hover">Áo thun</p>
                                <span class="top-quant">7,337</span><span>sản phẩm</span>
                            </div>
                            <span class="top-arr"><i class="fas fa-angle-right"></i></span>
                        </div>
                    </a>
                </li>
                <li class="col c-4 m-3 l-2-4">
                    <a href="#">
                        <div class="top-item">
                            <span><img src="${pageContext.request.contextPath}/imgs/shop/shop-banner.webp"
                                       alt="Áo thun"/></span>
                            <div class="top-text">
                                <p class="top-title text-hover">Áo khoác</p>
                                <span class="top-quant">7,337</span><span>sản phẩm</span>
                            </div>
                            <span class="top-arr"><i class="fas fa-angle-right"></i></span>
                        </div>
                    </a>
                </li>
                <li class="col c-4 m-3 l-2-4">
                    <a href="#">
                        <div class="top-item">
                            <span><img src="${pageContext.request.contextPath}/imgs/shop/shop-banner.webp"
                                       alt="Áo thun"/></span>
                            <div class="top-text">
                                <p class="top-title text-hover">Áo thun</p>
                                <span class="top-quant">7,337</span><span>sản phẩm</span>
                            </div>
                            <span class="top-arr"><i class="fas fa-angle-right"></i></span>
                        </div>
                    </a>
                </li>
                <li class="col c-4 m-3 l-2-4">
                    <a href="#">
                        <div class="top-item">
                            <span><img src="${pageContext.request.contextPath}/imgs/shop/shop-banner.webp"
                                       alt="Áo thun"/></span>
                            <div class="top-text">
                                <p class="top-title text-hover">Áo khoác</p>
                                <span class="top-quant">7,337</span><span>sản phẩm</span>
                            </div>
                            <span class="top-arr"><i class="fas fa-angle-right"></i></span>
                        </div>
                    </a>
                </li>
                <li class="col c-4 m-3 l-2-4">
                    <a href="#">
                        <div class="top-item">
                            <span><img src="${pageContext.request.contextPath}/imgs/shop/shop-banner.webp"
                                       alt="Áo thun"/></span>
                            <div class="top-text">
                                <p class="top-title text-hover">Áo thun</p>
                                <span class="top-quant">7,337</span><span>sản phẩm</span>
                            </div>
                            <span class="top-arr"><i class="fas fa-angle-right"></i></span>
                        </div>
                    </a>
                </li>
                <li class="col c-4 m-3 l-2-4">
                    <a href="#">
                        <div class="top-item">
                            <span><img src="/assets/img/shop/shop-banner.webp" alt="Áo thun"/></span>
                            <div class="top-text">
                                <p class="top-title text-hover">Áo khoác</p>
                                <span class="top-quant">7,337</span><span>sản phẩm</span>
                            </div>
                            <span class="top-arr"><i class="fas fa-angle-right"></i></span>
                        </div>
                    </a>
                </li>
                <li class="col c-4 m-3 l-2-4">
                    <a href="#">
                        <div class="top-item">
                            <span><img src="/assets/img/shop/shop-banner.webp" alt="Áo thun"/></span>
                            <div class="top-text">
                                <p class="top-title text-hover">Áo thun</p>
                                <span class="top-quant">7,337</span><span>sản phẩm</span>
                            </div>
                            <span class="top-arr"><i class="fas fa-angle-right"></i></span>
                        </div>
                    </a>
                </li>
                <li class="col c-4 m-3 l-2-4">
                    <a href="#">
                        <div class="top-item">
                            <span><img src="/assets/img/shop/shop-banner.webp" alt="Áo thun"/></span>
                            <div class="top-text">
                                <p class="top-title text-hover">Áo khoác</p>
                                <span class="top-quant">7,337</span><span>sản phẩm</span>
                            </div>
                            <span class="top-arr"><i class="fas fa-angle-right"></i></span>
                        </div>
                    </a>
                </li>
                <li class="col c-4 m-3 l-2-4">
                    <a href="#">
                        <div class="top-item">
                            <span><img src="/assets/img/shop/shop-banner.webp" alt="Áo thun"/></span>
                            <div class="top-text">
                                <p class="top-title text-hover">Áo thun</p>
                                <span class="top-quant">7,337</span><span>sản phẩm</span>
                            </div>
                            <span class="top-arr"><i class="fas fa-angle-right"></i></span>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </section>
    <!-- ------------------------ End CATEGORY-LIST ------------------------------- -->

    <!-- ------------------------ Begin PRODUCT ------------------------------- -->
    <section class="page-section mt-1">
        <div class="tittle-product">
            <h3>Gợi ý cho bạn</h3>
        </div>
        <ul class="category-about row">
            <li class="col c-6 m-4 l-2-4 py-1">
                <a href="#">
                    <div class="card">
                        <div class="card-img">
                            <img src="/assets/img/product/card2.webp" alt=""/>
                        </div>
                        <div class="card-text">
                            <h3 class="card-title text-hover">TEELAB</h3>
                            <p class="card-des truncate">Áo Thun Teelab Grey Trame TS049</p>
                            <span class="card-price"> 350.000đ </span>
                            <span class="card-price-discount"> -50% </span>
                            <p class="card-price-cost">175.000đ</p>
                        </div>
                    </div>
                </a>
            </li>
            <li class="col c-6 m-4 l-2-4 py-1">
                <a href="#">
                    <div class="card">
                        <div class="card-img">
                            <img src="/assets/img/product/card3.webp" alt=""/>
                        </div>
                        <div class="card-text">
                            <h3 class="card-title text-hover">TEELAB</h3>
                            <p class="card-des truncate">Áo Thun Teelab Grey Trame TS049</p>
                            <span class="card-price"> 350.000đ </span>
                            <span class="card-price-discount"> -50% </span>
                            <p class="card-price-cost">175.000đ</p>
                        </div>
                    </div>
                </a>
            </li>
            <li class="col c-6 m-4 l-2-4 py-1">
                <a href="#">
                    <div class="card">
                        <div class="card-img">
                            <img src="/assets/img/product/card4.webp" alt=""/>
                        </div>
                        <div class="card-text">
                            <h3 class="card-title text-hover">TEELAB</h3>
                            <p class="card-des truncate">Áo Thun Teelab Grey Trame TS049</p>
                            <span class="card-price"> 350.000đ </span>
                            <span class="card-price-discount"> -50% </span>
                            <p class="card-price-cost">175.000đ</p>
                        </div>
                    </div>
                </a>
            </li>
            <li class="col c-6 m-4 l-2-4 py-1">
                <a href="#">
                    <div class="card">
                        <div class="card-img">
                            <img src="/assets/img/product/card5.webp" alt=""/>
                        </div>
                        <div class="card-text">
                            <h3 class="card-title text-hover">TEELAB</h3>
                            <p class="card-des truncate">Áo Thun Teelab Grey Trame TS049</p>
                            <span class="card-price"> 350.000đ </span>
                            <span class="card-price-discount"> -50% </span>
                            <p class="card-price-cost">175.000đ</p>
                        </div>
                    </div>
                </a>
            </li>
            <li class="col c-6 m-4 l-2-4 py-1">
                <a href="#">
                    <div class="card">
                        <div class="card-img">
                            <img src="/assets/img/product/card2.webp" alt=""/>
                        </div>
                        <div class="card-text">
                            <h3 class="card-title text-hover">TEELAB</h3>
                            <p class="card-des truncate">Áo Thun Teelab Grey Trame TS049</p>
                            <span class="card-price"> 350.000đ </span>
                            <span class="card-price-discount"> -50% </span>
                            <p class="card-price-cost">175.000đ</p>
                        </div>
                    </div>
                </a>
            </li>
            <li class="col c-6 m-4 l-2-4 py-1">
                <a href="#">
                    <div class="card">
                        <div class="card-img">
                            <img src="/assets/img/product/card1.webp" alt=""/>
                        </div>
                        <div class="card-text">
                            <h3 class="card-title text-hover">TEELAB</h3>
                            <p class="card-des truncate">Áo Thun Teelab Grey Trame TS049</p>
                            <span class="card-price"> 350.000đ </span>
                            <span class="card-price-discount"> -50% </span>
                            <p class="card-price-cost">175.000đ</p>
                        </div>
                    </div>
                </a>
            </li>
            <li class="col c-6 m-4 l-2-4 py-1">
                <a href="#">
                    <div class="card">
                        <div class="card-img">
                            <img src="/assets/img/product/card1.webp" alt=""/>
                        </div>
                        <div class="card-text">
                            <h3 class="card-title text-hover">TEELAB</h3>
                            <p class="card-des truncate">Áo Thun Teelab Grey Trame TS049</p>
                            <span class="card-price"> 350.000đ </span>
                            <span class="card-price-discount"> -50% </span>
                            <p class="card-price-cost">175.000đ</p>
                        </div>
                    </div>
                </a>
            </li>
            <li class="col c-6 m-4 l-2-4 py-1">
                <a href="#">
                    <div class="card">
                        <div class="card-img">
                            <img src="/assets/img/product/card1.webp" alt=""/>
                        </div>
                        <div class="card-text">
                            <h3 class="card-title text-hover">TEELAB</h3>
                            <p class="card-des truncate">Áo Thun Teelab Grey Trame TS049</p>
                            <span class="card-price"> 350.000đ </span>
                            <span class="card-price-discount"> -50% </span>
                            <p class="card-price-cost">175.000đ</p>
                        </div>
                    </div>
                </a>
            </li>
            <li class="col c-6 m-4 l-2-4 py-1">
                <a href="#">
                    <div class="card">
                        <div class="card-img">
                            <img src="/assets/img/product/card1.webp" alt=""/>
                        </div>
                        <div class="card-text">
                            <h3 class="card-title text-hover">TEELAB</h3>
                            <p class="card-des truncate">Áo Thun Teelab Grey Trame TS049</p>
                            <span class="card-price"> 350.000đ </span>
                            <span class="card-price-discount"> -50% </span>
                            <p class="card-price-cost">175.000đ</p>
                        </div>
                    </div>
                </a>
            </li>
            <li class="col c-6 m-4 l-2-4 py-1">
                <a href="#">
                    <div class="card">
                        <div class="card-img">
                            <img src="/assets/img/product/card1.webp" alt=""/>
                        </div>
                        <div class="card-text">
                            <h3 class="card-title text-hover">TEELAB</h3>
                            <p class="card-des truncate">Áo Thun Teelab Grey Trame TS049</p>
                            <span class="card-price"> 350.000đ </span>
                            <span class="card-price-discount"> -50% </span>
                            <p class="card-price-cost">175.000đ</p>
                        </div>
                    </div>
                </a>
            </li>
        </ul>
        <button class="button primary"><span>Xem thêm</span></button>
    </section>
    <!-- ------------------------ End PRODUCT ------------------------------- -->
</div>
<!-- ------------------------ End OVERVIEW ------------------------------- -->


<!-- ------------------------ Begin STORE ------------------------------- -->
<div class="tab">
    <div class="page-section brand-store__wrapper">
        <div class="brand-store">
            <div class="brand-store__left">
                <aside class="brach-store__aside aside">
                    <div class="aside__header-box">
                        <h4>Danh mục sản phẩm</h4>
                        <button class="btn text-highlight">Đặt lại</button>
                    </div>
                    <div class="divider"></div>
                    <div class="aside-bar">
                        <ul class="aside-bar__list">
                            <li class="aside-bar__item">
                                <div class="aside-bar__item-box">
                                    <a class="aside-bar__item-link">
                                        <div class="input--radio__wrapper">
                                            <input name="category" id="0" type="radio" value="0"/><label
                                                class="text-hover" for="0">Quần
                                            Denim /
                                            Jean</label>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <li class="aside-bar__item">
                                <div class="aside-bar__item-box">
                                    <a class="aside-bar__item-link">
                                        <div class="input--radio__wrapper">
                                            <input name="category" id="1" type="radio" value="1"/><label
                                                class="text-hover" for="1">Áo
                                            Sweater</label>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <li class="aside-bar__item">
                                <div class="aside-bar__item-box">
                                    <a class="aside-bar__item-link">
                                        <div class="input--radio__wrapper">
                                            <input name="category" id="2" type="radio" value="2"/><label
                                                class="text-hover" for="2">Quần
                                            Ngắn</label>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <li class="aside-bar__item">
                                <div class="aside-bar__item-box">
                                    <a class="aside-bar__item-link">
                                        <div class="input--radio__wrapper">
                                            <input name="category" id="3" type="radio" value="3"/><label
                                                class="text-hover" for="3">Áo Thun
                                            Tay
                                            Ngắn</label>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <li class="aside-bar__item">
                                <div class="aside-bar__item-box">
                                    <a class="aside-bar__item-link">
                                        <div class="input--radio__wrapper">
                                            <input name="category" id="4" type="radio" value="4"/><label
                                                class="text-hover" for="4">Quần
                                            Dài</label>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <li class="aside-bar__item">
                                <div class="aside-bar__item-box">
                                    <a class="aside-bar__item-link">
                                        <div class="input--radio__wrapper">
                                            <input name="category" id="5" type="radio" value="5"/><label
                                                class="text-hover" for="5">Áo Cổ
                                            Trụ</label>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <li class="aside-bar__item">
                                <div class="aside-bar__item-box">
                                    <a class="aside-bar__item-link">
                                        <div class="input--radio__wrapper">
                                            <input name="category" id="6" type="radio" value="6"/><label
                                                class="text-hover" for="6">Áo
                                            Denim / Jean</label>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <li class="aside-bar__item">
                                <div class="aside-bar__item-box">
                                    <a class="aside-bar__item-link">
                                        <div class="input--radio__wrapper">
                                            <input name="category" id="7" type="radio" value="7"/><label
                                                class="text-hover" for="7">Sơ Mi
                                            Tay Dài</label>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <li class="aside-bar__item">
                                <div class="aside-bar__item-box">
                                    <a class="aside-bar__item-link">
                                        <div class="input--radio__wrapper">
                                            <input name="category" id="8" type="radio" value="8"/><label
                                                class="text-hover" for="8">Sơ Mi
                                            Tay Ngắn</label>
                                        </div>
                                    </a>
                                </div>
                            </li>
                            <li class="aside-bar__item">
                                <div class="aside-bar__item-box">
                                    <a class="aside-bar__item-link">
                                        <div class="input--radio__wrapper">
                                            <input name="category" id="9" type="radio" value="9"/><label
                                                class="text-hover" for="9">Áo Len
                                            /
                                            Cardigan</label>
                                        </div>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    </asi>
            </div>
            <div class="brand-store__right">
                <div class="tittle-product">
                    <h2 class="section-title">Toàn bộ sản phẩm</h2>
                    <div class="section-description">(24 kết quả)</div>
                </div>
                <div class="brand-store__tab-bar">
                    <div class="tab-bar">
                        <div class="tab-bar__filter-list">
                            <div class="tab-bar__filter-item">
                                <button class="btn filter-item__button">
                                    <span class="filter-item__text">Bộ lọc</span>
                                    <i class="fas fa-filter filter-icon"></i>
                                </button>
                            </div>
                            <div class="">
                                <div class="v-divider"></div>
                            </div>
                            <div class="tab-bar__filter-item">
                                <button class="btn filter-item__button" onclick="showDropdown(0)">
                                    <span class="filter-item__text">Phân loại</span><i
                                        class="fas fa-caret-down filter-icon"></i></button>
                                <div class="dropdown">
                                    <div class="dropdown__type">
                      <span class="dropdown__text">
                        <h5>Phân loại</h5>
                      </span>
                                    </div>
                                    <div class="divider"></div>
                                    <div class="dropdown__select-list">
                                        <input class="dropdown__select-item" id="type_all" name="type_category"
                                               type="radio" value="">
                                        <label class="btn" for="type_all"><span>Toàn
                          bộ</span></label>
                                        <input class="dropdown__select-item" id="type_male" name="type_category"
                                               type="radio"
                                               value="male"><label class="btn"
                                                                   for="type_male"><span>Nam</span></label><input
                                            class="dropdown__select-item" id="type_female" name="type_category"
                                            type="radio"
                                            value="female"><label class="btn"
                                                                  for="type_female"><span>Nữ</span></label><input
                                            class="dropdown__select-item" id="type_accessory" name="type_category"
                                            type="radio"
                                            value="other"><label class="btn" for="type_accessory"><span>Phụ
                          kiện</span></label>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-bar__filter-item">
                                <button class="btn filter-item__button" onclick="showDropdown(1)">
                                    <span class="filter-item__text">Sắp xếp theo</span><i
                                        class="fas fa-caret-down filter-icon"></i></button>
                                <div class="dropdown">
                                    <div class="dropdown__type">
                      <span class="dropdown__text">
                        <h5>Sắp xếp theo</h5>
                      </span>
                                    </div>
                                    <div class="divider"></div>
                                    <div class="dropdown__select-list">
                                        <input class="dropdown__select-item" id="sort_all" name="type_sort" type="radio"
                                               value="">
                                        <label class="btn" for="sort_all"><span>Toàn
                          bộ</span></label>
                                        <input class="dropdown__select-item" id="sort_trending" name="type_sort"
                                               type="radio"><label
                                            class="btn" for="sort_trending"><span>Nổi bật</span></label><input
                                            class="dropdown__select-item"
                                            id="sort_new" name="type_sort" type="radio"><label class="btn"
                                                                                               for="sort_new"><span>Mới
                          về</span>
                                    </label><input class="dropdown__select-item" id="sort_price_desc" name="type_sort"
                                                   type="radio"><label class="btn" for="sort_price_desc"><span>Giá giảm
                          nhiều</span></label><input class="dropdown__select-item" id="sort_price_high" name="type_sort"
                                                     type="radio"><label class="btn" for="sort_price_high"><span>Giá cao
                          trước</span></label><input class="dropdown__select-item" id="sort_price_low" name="type_sort"
                                                     type="radio"><label class="btn" for="sort_price_low"><span>Giá thấp
                          trước</span></label>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-bar__filter-item">
                                <button class="btn filter-item__button" onclick="showDropdown(2)">
                                    <span class="filter-item__text">Giá cả</span><i
                                        class="fas fa-caret-down filter-icon"></i></button>
                                <div class="dropdown">
                                    <div class="dropdown__type">
                      <span class="dropdown__text">
                        <h5>Giá cả</h5>
                      </span>
                                    </div>
                                    <div class="divider"></div>
                                    <div class="dropdown__select-list">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <!---->
                    <div>
                        <div class="grid grid-20">
                            <!-- ======================= Begin PRODUCT ================================== -->
                            <div>
                                <ul class="category-about row">
                                    <li class="col c-6 m-4 l-2-4 py-1">
                                        <a href="#">
                                            <div class="card">
                                                <div class="card-img">
                                                    <img src="/assets/img/product/card2.webp" alt=""/>
                                                </div>
                                                <div class="card-text">
                                                    <h3 class="card-title text-hover">TEELAB</h3>
                                                    <p class="card-des truncate">
                                                        Áo Thun Teelab Grey Trame TS049
                                                    </p>
                                                    <span class="card-price"> 350.000đ </span>
                                                    <span class="card-price-discount"> -50% </span>
                                                    <p class="card-price-cost">175.000đ</p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="col c-6 m-4 l-2-4 py-1">
                                        <a href="#">
                                            <div class="card">
                                                <div class="card-img">
                                                    <img src="/assets/img/product/card3.webp" alt=""/>
                                                </div>
                                                <div class="card-text">
                                                    <h3 class="card-title text-hover">TEELAB</h3>
                                                    <p class="card-des truncate">
                                                        Áo Thun Teelab Grey Trame TS049
                                                    </p>
                                                    <span class="card-price"> 350.000đ </span>
                                                    <span class="card-price-discount"> -50% </span>
                                                    <p class="card-price-cost">175.000đ</p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="col c-6 m-4 l-2-4 py-1">
                                        <a href="#">
                                            <div class="card">
                                                <div class="card-img">
                                                    <img src="/assets/img/product/card4.webp" alt=""/>
                                                </div>
                                                <div class="card-text">
                                                    <h3 class="card-title text-hover">TEELAB</h3>
                                                    <p class="card-des truncate">
                                                        Áo Thun Teelab Grey Trame TS049
                                                    </p>
                                                    <span class="card-price"> 350.000đ </span>
                                                    <span class="card-price-discount"> -50% </span>
                                                    <p class="card-price-cost">175.000đ</p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="col c-6 m-4 l-2-4 py-1">
                                        <a href="#">
                                            <div class="card">
                                                <div class="card-img">
                                                    <img src="/assets/img/product/card5.webp" alt=""/>
                                                </div>
                                                <div class="card-text">
                                                    <h3 class="card-title text-hover">TEELAB</h3>
                                                    <p class="card-des truncate">
                                                        Áo Thun Teelab Grey Trame TS049
                                                    </p>
                                                    <span class="card-price"> 350.000đ </span>
                                                    <span class="card-price-discount"> -50% </span>
                                                    <p class="card-price-cost">175.000đ</p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="col c-6 m-4 l-2-4 py-1">
                                        <a href="#">
                                            <div class="card">
                                                <div class="card-img">
                                                    <img src="/assets/img/product/card2.webp" alt=""/>
                                                </div>
                                                <div class="card-text">
                                                    <h3 class="card-title text-hover">TEELAB</h3>
                                                    <p class="card-des truncate">
                                                        Áo Thun Teelab Grey Trame TS049
                                                    </p>
                                                    <span class="card-price"> 350.000đ </span>
                                                    <span class="card-price-discount"> -50% </span>
                                                    <p class="card-price-cost">175.000đ</p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="col c-6 m-4 l-2-4 py-1">
                                        <a href="#">
                                            <div class="card">
                                                <div class="card-img">
                                                    <img src="/assets/img/product/card1.webp" alt=""/>
                                                </div>
                                                <div class="card-text">
                                                    <h3 class="card-title text-hover">TEELAB</h3>
                                                    <p class="card-des truncate">
                                                        Áo Thun Teelab Grey Trame TS049
                                                    </p>
                                                    <span class="card-price"> 350.000đ </span>
                                                    <span class="card-price-discount"> -50% </span>
                                                    <p class="card-price-cost">175.000đ</p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="col c-6 m-4 l-2-4 py-1">
                                        <a href="#">
                                            <div class="card">
                                                <div class="card-img">
                                                    <img src="/assets/img/product/card1.webp" alt=""/>
                                                </div>
                                                <div class="card-text">
                                                    <h3 class="card-title text-hover">TEELAB</h3>
                                                    <p class="card-des truncate">
                                                        Áo Thun Teelab Grey Trame TS049
                                                    </p>
                                                    <span class="card-price"> 350.000đ </span>
                                                    <span class="card-price-discount"> -50% </span>
                                                    <p class="card-price-cost">175.000đ</p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="col c-6 m-4 l-2-4 py-1">
                                        <a href="#">
                                            <div class="card">
                                                <div class="card-img">
                                                    <img src="/assets/img/product/card1.webp" alt=""/>
                                                </div>
                                                <div class="card-text">
                                                    <h3 class="card-title text-hover">TEELAB</h3>
                                                    <p class="card-des truncate">
                                                        Áo Thun Teelab Grey Trame TS049
                                                    </p>
                                                    <span class="card-price"> 350.000đ </span>
                                                    <span class="card-price-discount"> -50% </span>
                                                    <p class="card-price-cost">175.000đ</p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="col c-6 m-4 l-2-4 py-1">
                                        <a href="#">
                                            <div class="card">
                                                <div class="card-img">
                                                    <img src="/assets/img/product/card1.webp" alt=""/>
                                                </div>
                                                <div class="card-text">
                                                    <h3 class="card-title text-hover">TEELAB</h3>
                                                    <p class="card-des truncate">
                                                        Áo Thun Teelab Grey Trame TS049
                                                    </p>
                                                    <span class="card-price"> 350.000đ </span>
                                                    <span class="card-price-discount"> -50% </span>
                                                    <p class="card-price-cost">175.000đ</p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="col c-6 m-4 l-2-4 py-1">
                                        <a href="#">
                                            <div class="card">
                                                <div class="card-img">
                                                    <img src="/assets/img/product/card1.webp" alt=""/>
                                                </div>
                                                <div class="card-text">
                                                    <h3 class="card-title text-hover">TEELAB</h3>
                                                    <p class="card-des truncate">
                                                        Áo Thun Teelab Grey Trame TS049
                                                    </p>
                                                    <span class="card-price"> 350.000đ </span>
                                                    <span class="card-price-discount"> -50% </span>
                                                    <p class="card-price-cost">175.000đ</p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <button class="button primary"><span>Xem thêm</span></button>
                            </div>
                            <!-- ======================= End PRODUCT ================================== -->
                        </div>
                        <button class="button primary-button" style="width: 150px; margin: auto; display: none"
                                disabled="">
                            <span class="primary-link_text">Xem thêm</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ------------------------ End STORE ------------------------------- -->
<!-- ------------------------ Begin REVIEW ------------------------------- -->
<div class="tab">
    <section class="brand-reviews">
        <div class="brand-reviews__left">
            <div class="box box-left">
                <div class="box-reviews__top">
                    <div class="box-reviews__left">
                        <h5 class="box-reviews__number">3.5<span class="box-reviews__description">trên 5</span></h5>

                    </div>
                    <div class="box-reviews__right">
                        <div class="box-reviews__stars">
                            <i class="fas fa-star star-icon active"></i>
                            <i class="fas fa-star star-icon active"></i>
                            <i class="fas fa-star star-icon active"></i>
                            <i class="fas fa-star star-icon"></i>
                            <i class="fas fa-star star-icon"></i>

                        </div>
                        <div class="box-reviews__description"><strong>1</strong><span>đánh giá</span></div>
                    </div>
                </div>
                <div class="divider"></div>
                <div class="box-reviews__bottom">
                    <div class="reviews-bar">
                        <div class="reviews-bar__stars">
                            <span class="reviews-bar__star-number">5</span>
                            <span class="reviews-bar__star"><i class="fas fa-star"></i></span>
                        </div>
                        <div class="reviews-bar__progress" style="--percent:80%"></div>
                        <div class="reviews-bar__percent">80%</div>
                    </div>
                    <div class="reviews-bar">
                        <div class="reviews-bar__stars">
                            <span class="reviews-bar__star-number">4</span>
                            <span class="reviews-bar__star"><i class="fas fa-star"></i></span>
                        </div>
                        <div class="reviews-bar__progress" style="--percent:80%;"></div>
                        <div class="reviews-bar__percent">100%</div>
                    </div>
                    <div class="reviews-bar">
                        <div class="reviews-bar__stars">
                            <span class="reviews-bar__star-number">3</span>
                            <span class="reviews-bar__star"><i class="fas fa-star"></i></span>
                        </div>
                        <div class="reviews-bar__progress" style="--percent:0%;"></div>
                        <div class="reviews-bar__percent">10%</div>
                    </div>
                    <div class="reviews-bar">
                        <div class="reviews-bar__stars">
                            <span class="reviews-bar__star-number">2</span>
                            <span class="reviews-bar__star"><i class="fas fa-star"></i></span>
                        </div>
                        <div class="reviews-bar__progress" style="--percent:10%;"></div>
                        <div class="reviews-bar__percent">0%</div>
                    </div>
                    <div class="reviews-bar">
                        <div class="reviews-bar__stars">
                            <span class="reviews-bar__star-number">1</span>
                            <span class="reviews-bar__star"><i class="fas fa-star"></i></span>
                        </div>
                        <div class="reviews-bar__progress" style="--percent:0%;"></div>
                        <div class="reviews-bar__percent">0%</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="brand-reviews__right">
            <div class="box">
                <div class="box-reviews__top">
                    <h3 class="box-reviews__title">Toàn bộ sản phẩm</h3>
                </div>
                <div class="divider"></div>
                <div class="tab-bar__filter-list review-filter">
                    <div class="tab-bar__filter-item">
                        <button class="btn filter-item__button" onclick="filterReview(0)">
                            <span class="filter-item__text">Toàn bộ</span></button>
                    </div>
                    <div class="tab-bar__filter-item">
                        <button class="btn filter-item__button" onclick="filterTime(1)">
                            <span class="filter-item__text">Thời gian</span><i
                                class="fas fa-caret-down filter-icon"></i></button>
                    </div>
                    <div class="tab-bar__filter-item">
                        <button class="btn filter-item__button" onclick="filterReview(2)">
                            <span class="filter-item__text">5</span><i class="fas fa-star star-icon active"></i>
                        </button>
                    </div>
                    <div class="tab-bar__filter-item">
                        <button class="btn filter-item__button" onclick="filterReview(3)">
                            <span class="filter-item__text">4</span><i class="fas fa-star star-icon active"></i>
                        </button>
                    </div>
                    <div class="tab-bar__filter-item">
                        <button class="btn filter-item__button" onclick="filterReview(4)">
                            <span class="filter-item__text">3</span><i class="fas fa-star star-icon active"></i>
                        </button>
                    </div>
                    <div class="tab-bar__filter-item">
                        <button class="btn filter-item__button" onclick="filterReview(5)">
                            <span class="filter-item__text">2</span><i class="fas fa-star star-icon active"></i>
                        </button>
                    </div>
                    <div class="tab-bar__filter-item">
                        <button class="btn filter-item__button" onclick="filterReview(6)">
                            <span class="filter-item__text">1</span><i class="fas fa-star star-icon active"></i>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ------------------------ IF HAS REVIEWS ------------------------------- -->

            <div class="feedback">
                <div class="box">
                    <div class="review-item__info">
                        <a href="#">
                            <img width="40" height="40" class="user__avatar"
                                 src="/assets/img/shop/shop-banner.webp"></a>
                        <div class="user__rating-wrapper">
                            <h3 class="user__name truncate">Minh Hường Nguyễn</h3>
                            <div class="user__rating-info">
                                <span class="user__rating-time">3 tháng</span>
                                <span class="user__rating"><i class="fas fa-star star-icon active"></i>
                    <i class="fas fa-star star-icon active"></i>
                    <i class="fas fa-star star-icon active"></i>
                    <i class="fas fa-star star-icon"></i>
                    <i class="fas fa-star star-icon"></i>
                  </span>
                            </div>
                            <div class="review-item__preview">
                                <div class="review-preview__left">
                                    <div class="review-preview__product"><a href=""><img
                                            class="review-preview__product-img"
                                            alt="Áo Thun Tay Lỡ Nữ Nam Form Rộng URBAN OUTFITS In To The Future ATO29 Cotton"
                                            title="Áo Thun Tay Lỡ Nữ Nam Form Rộng URBAN OUTFITS In To The Future ATO29 Cotton"
                                            width="76"
                                            height="76" src="/assets/img/shop/shop-logo.webp"></a>
                                        <div class="review-preview__product-summary">
                                            <a class="review-preview__product-brand"><span>URBAN OUTFITS</span></a>
                                            <span class="review-preview__product-name">Áo Thun Tay Lỡ Nữ Nam Form Rộng URBAN OUTFITS In To
                          The
                          Future ATO29
                          Cotton</span>
                                        </div>
                                    </div>
                                    <div class="review-item__feedback"><span>Lorem ipsum dolor sit amet consectetur, adipisicing elit.
                        Commodi deleniti saepe et numquam itaque aut omnis praesentium earum, illo suscipit excepturi
                        modi tempora odit quae quo! Alias voluptatum a accusamus.
                      </span></div>
                                    <!---->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="review-item__info">
                        <a href="#">
                            <img width="40" height="40" class="user__avatar"
                                 src="/assets/img/shop/shop-banner.webp"></a>
                        <div class="user__rating-wrapper">
                            <h3 class="user__name truncate">Minh Hường Nguyễn</h3>
                            <div class="user__rating-info">
                                <span class="user__rating-time">3 tháng</span>
                                <span class="user__rating"><i class="fas fa-star star-icon active"></i>
                    <i class="fas fa-star star-icon active"></i>
                    <i class="fas fa-star star-icon active"></i>
                    <i class="fas fa-star star-icon"></i>
                    <i class="fas fa-star star-icon"></i>
                  </span>
                            </div>
                            <div class="review-item__preview">
                                <div class="review-preview__left">
                                    <div class="review-preview__product"><a href=""><img
                                            class="review-preview__product-img"
                                            alt="Áo Thun Tay Lỡ Nữ Nam Form Rộng URBAN OUTFITS In To The Future ATO29 Cotton"
                                            title="Áo Thun Tay Lỡ Nữ Nam Form Rộng URBAN OUTFITS In To The Future ATO29 Cotton"
                                            width="76"
                                            height="76" src="/assets/img/shop/shop-logo.webp"></a>
                                        <div class="review-preview__product-summary">
                                            <a class="review-preview__product-brand"><span>URBAN OUTFITS</span></a>
                                            <span class="review-preview__product-name">Áo Thun Tay Lỡ Nữ Nam Form Rộng URBAN OUTFITS In To
                          The
                          Future ATO29
                          Cotton</span>
                                        </div>
                                    </div>
                                    <div class="review-item__feedback"><span>Lorem ipsum dolor sit amet consectetur, adipisicing elit.
                        Commodi deleniti saepe et numquam itaque aut omnis praesentium earum, illo suscipit excepturi
                        modi tempora odit quae quo! Alias voluptatum a accusamus.
                      </span></div>
                                    <!---->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="review-item__info">
                        <a href="#">
                            <img width="40" height="40" class="user__avatar"
                                 src="/assets/img/shop/shop-banner.webp"></a>
                        <div class="user__rating-wrapper">
                            <h3 class="user__name truncate">Minh Hường Nguyễn</h3>
                            <div class="user__rating-info">
                                <span class="user__rating-time">3 tháng</span>
                                <span class="user__rating"><i class="fas fa-star star-icon active"></i>
                    <i class="fas fa-star star-icon active"></i>
                    <i class="fas fa-star star-icon active"></i>
                    <i class="fas fa-star star-icon"></i>
                    <i class="fas fa-star star-icon"></i>
                  </span>
                            </div>
                            <div class="review-item__preview">
                                <div class="review-preview__left">
                                    <div class="review-preview__product"><a href=""><img
                                            class="review-preview__product-img"
                                            alt="Áo Thun Tay Lỡ Nữ Nam Form Rộng URBAN OUTFITS In To The Future ATO29 Cotton"
                                            title="Áo Thun Tay Lỡ Nữ Nam Form Rộng URBAN OUTFITS In To The Future ATO29 Cotton"
                                            width="76"
                                            height="76" src="/assets/img/shop/shop-logo.webp"></a>
                                        <div class="review-preview__product-summary">
                                            <a class="review-preview__product-brand"><span>URBAN OUTFITS</span></a>
                                            <span class="review-preview__product-name">Áo Thun Tay Lỡ Nữ Nam Form Rộng URBAN OUTFITS In To
                          The
                          Future ATO29
                          Cotton</span>
                                        </div>
                                    </div>
                                    <div class="review-item__feedback"><span>Lorem ipsum dolor sit amet consectetur, adipisicing elit.
                        Commodi deleniti saepe et numquam itaque aut omnis praesentium earum, illo suscipit excepturi
                        modi tempora odit quae quo! Alias voluptatum a accusamus.
                      </span></div>
                                    <!---->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ------------------------ ELSE NO REVIEWS ------------------------------- -->
            <section style="display: none;" class="no-reviews">
                <div><img src="/assets/img/shop/no-review.webp">
                    <p>Hãy là người đầu tiên đánh giá sản phẩm này</p>
                </div>
            </section>
            <!-- ------------------------ ENDIF ------------------------------- -->
        </div>
    </section>

</div>
<!-- ------------------------ End REVIEW ------------------------------- -->

<!-- ----------------- Begin FOOTER---------------------- -->
<footer class="footer">
    <div class="footer_top">
        <div class="footer_top-item">
            <div class="block_wrapper">
                <ul class="block_list">
                    <li class="block_item logo">
                        <a href="/"><img src="/assets/img/logo-white.png" alt="logo-white"/></a>
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
                                    <div class="card-item_icon"><img src="/assets/img/social/cod.webp" alt="Tiền mặt"
                                                                     title="Tiền mặt">
                                    </div>
                                    <div class="card-item_text">Tiền mặt</div>
                                </div>
                            </a><a class="block_link" href="/" title="Momo">
                            <div class="card-item_box">
                                <div class="card-item_icon"><img src="/assets/img/social/momo.png" alt="Momo"
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
                                    <div class="card-item_icon"><img src="/assets/img/social/credit-card.png"
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
                                    <div class="card-item_icon"><img src="/assets/img/social/credit-card.png"
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
<script src="${pageContext.request.contextPath}/newjs/menu.js"></script>
<script src="${pageContext.request.contextPath}/js/filter.js"></script>
<script src="${pageContext.request.contextPath}/js/modal.js"></script>
</body>

</html>