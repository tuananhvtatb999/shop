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
          href="${pageContext.request.contextPath}/newcss/shared.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/newcss/pages/setting.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/newcss/breadcrumb.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/newcss/footer.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/newcss/modal.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/newcss/pagination.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/newcss/detail.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/newcss/userCart.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/newcss/userCheckOut.css"/>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>

    <title>User Check-Out</title>
    <style>
        .user-infor-address {
            background-color: #fff;
            padding: 20px;
            font-size: 17px;
            font-weight: 500;
        }

        .styled-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 25px;
            font-size: 0.9em;
            font-family: sans-serif;
        }

        .styled-table thead tr {
            color: #a3a3a3;
            text-align: left;
        }

        .styled-table th,
        .styled-table td {
            padding: 12px 15px;
        }

        .edit-adr {
            color: red;
        }

        .setting {
            display: flex;
        }

        .setting__left {
            width: 244px;
            transition: width 0.25s ease;
        }

        .setting__left.close {
            width: 70px;
        }

        .setting__right {
            width: calc(100% - 244px);
            margin-top: 4rem;
            transition: width 0.25s ease;
        }

        .setting__right.close {
            width: calc(100% - 70px);
        }

        .sidebar {
            min-height: 100vh;
            height: 100%;
            font-weight: normal;
            padding: 0;
            transition: width 0.25s ease, background 0.25s ease;
        }

        .sidebar.close .nav-item {
            padding-right: 0;
        }

        .sidebar.close .menu-title {
            display: none;
        }

        .sidebar.close .sidebar-brand-wrapper {
            width: 70px;
        }

        .sidebar.close .sidebar-brand-logo {
            display: none;
        }

        .sidebar.close .sidebar-brand-logo-mini {
            display: block;
        }

        .sidebar {
            padding-top: 5rem;
        }

        .sidebar .nav {
            display: flex;
            overflow: hidden;
            flex-wrap: nowrap;
            flex-direction: column;
            margin-bottom: 6rem;
        }

        .sidebar .nav > li:nth-child(5n + 1) .menu-icon {
            color: #0090e7;
        }

        .sidebar .nav > li:nth-child(5n + 2) .menu-icon {
            color: #ffab00;
        }

        .sidebar .nav > li:nth-child(5n + 3) .menu-icon {
            color: #fc424a;
        }

        .sidebar .nav > li:nth-child(5n + 4) .menu-icon {
            color: #00d25b;
        }

        .sidebar .nav > li:nth-child(5n) .menu-icon {
            color: #8f5fe8;
        }

        .sidebar .nav-item,
        .sidebar .nav-child-item {
            position: relative;
            cursor: pointer;
            padding-right: 2rem;
            transition: all 0.4s cubic-bezier(0.165, 0.84, 0.44, 1);
        }

        .sidebar .nav-item .menu-title,
        .sidebar .nav-child-item .menu-child-title {
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            color: var(--text-color);
            background: transparent;
        }

        .sidebar .nav-item {
            height: 3.8rem;
        }

        .sidebar .nav-item.active {
            height: 100%;
        }

        .sidebar .nav-item.active .nav-link {
            position: relative;
            background: linear-gradient(135deg, #fce6f7, #d5d0f0);
        }

        .sidebar .nav-item.active .nav-link::before {
            content: "";
            width: 3px;
            height: 100%;
            background: #9b7ca9;
            display: inline-block;
            position: absolute;
            left: 0;
            top: 0;
        }

        .sidebar .nav-item .menu-title,
        .sidebar .nav-child-item .menu-child-title {
            transition: background 0.3s ease;
        }

        .sidebar .nav-item.active .nav-link .menu-title,
        .sidebar .nav-item:hover .menu-title,
        .sidebar .nav-child-item.active .menu-child-title,
        .sidebar .nav-child-item:hover .menu-child-title,
            /*.sidebar .nav-link:hover .menu-icon {*/
            /*  color: var(--theme-color);*/
            /*  background: var(--theme-color);*/
            /*  -webkit-background-clip: text;*/
            /*  background-clip: text;*/
            /*  -webkit-text-fill-color: transparent;*/
            /*}*/
        .sidebar .nav-link,
        .sidebar .nav-child-link {
            display: flex;
            align-items: center;
            white-space: nowrap;
            padding: 1.1rem;
            color: #000;
            transition: all 0.45s ease;
            border-radius: 0px 10rem 10rem 0px;
            gap: 0.5rem;
        }

        .nav-item.active .nav-child {
            height: auto;
            opacity: 1;
        }

        .nav-child {
            height: 0px;
            opacity: 0;
            transition: height 0.4s cubic-bezier(0.4, 0, 0.2, 1),
            opacity 0.4s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .sidebar .nav-child-link {
            font-size: 1.4rem;
            padding-left: 4rem;
        }

        .sidebar .menu-icon {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
            margin-right: 0.5rem;
            border-radius: 100%;
        }

        .sidebar .menu-title {
            font-size: 1.6rem;
            transition: all 0.25s ease;
        }

        .user-info-wrapper {
            margin: auto auto;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 0.5rem;
            padding: 2rem;
        }

        .user-info-title {
            font-size: 2.4rem;
            padding: 1rem 0;
        }

        .user-info-description {
            font-size: 1.4rem;
            padding-bottom: 1.5rem;
        }

        .user-info .form-group {
            margin-bottom: 1.5rem;
        }

        .user-info .form-group.password {
            position: relative;
        }

        .user-info .form-group.password i {
            position: absolute;
            top: 35%;
            right: 1rem;
            width: 1.5rem;
            cursor: pointer;
        }

        .user-info .form-group label {
            display: inline-block;
            font-size: 1.4rem;
            color: #828282;
        }

        .user-info .form-group input:not([type="checkbox"], [type="radio"]),
        .user-info .form-group textarea:not([type="checkbox"], [type="radio"]) {
            border: 1px solid #ccabdb;
            font-size: 1.4rem;
            padding: 1rem;
            color: #303030;
            border-radius: 0.5rem;
            width: 100%;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
            outline: none;
        }

        .user-info .form-group input:focus,
        .user-info .form-group textarea:focus {
            border: 1px solid #9b7ca9;
        }

        .user-info .form-group input::placeholder,
        .user-info .form-group textarea::placeholder {
            color: #595959;
        }

        .user-info .form-group .form-input {
            transition: border 0.3s cubic-bezier(0.165, 0.84, 0.44, 1);
        }

        .user-info .form-group .form-input.error {
            border: 1px solid var(--warning);
        }

        .user-info .form-group input:read-only:not([type="checkbox"], [type="radio"]),
        .user-info
        .form-group
        textarea:read-only:not([type="checkbox"], [type="radio"]) {
            border: none;
            cursor: not-allowed;
        }

        .user-info .form-group textarea {
            resize: none;
            height: 10rem;
        }

        .user-info .form-icon {
            position: absolute;
            right: 2rem;
            top: 60%;
            width: 2rem;
            height: 2rem;
            color: #303030;
            cursor: pointer;
        }

        .user-info .form-button {
            display: flex;
            justify-content: center;
            padding: 2rem 0;
        }

        .user-info .form-button .btn {
            color: #ffffff;
            text-align: center;
            user-select: none;
            outline: none;
            padding: 1rem 2rem;
            border-radius: 0.5rem;
            transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
            border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
            cursor: pointer;
        }

        .form__wrapper {
            display: grid;
            grid-template-columns: 7fr 1px 3fr;
        }

        .form-group {
            display: grid;
            grid-template-columns: 2fr 7fr;
            align-items: center;
            gap: 2rem;
        }

        .form__left {
            padding-right: 3rem;
        }

        .form__right {
            padding-left: 3rem;
        }

        .user__image-description {
            margin-top: 2rem;
            color: var(--text-semi-white);
        }

        .form-group label {
            text-align: right;
        }

        .user__image {
            display: flex;
            justify-content: center;
            position: relative;
            margin: 0 auto;
        }

        .user__image img {
            width: 15rem;
            height: 15rem;
            border-radius: 50%;
            object-fit: cover;
            border: 5px solid #ccabdb;
            flex-shrink: 0;
        }

        .user__image-upload {
            display: flex;
            flex-direction: column;
            gap: 2rem;
            align-items: center;
            flex-shrink: 0;
        }

        .user__image input[type="file"] {
            display: none;
        }

        .preview-thumbnail .profile-pic {
            width: 4rem;
            height: 4rem;
            border-radius: 50%;
            background-color: #08979d;
        }

        .preview-icon {
            width: 3rem;
            height: 3rem;
            text-align: center;
            display: -webkit-flex;
            display: flex;
            -webkit-align-items: center;
            align-items: center;
            -webkit-justify-content: center;
            justify-content: center;
        }

        .preview-subject {
            font-size: 1.5rem;
        }

        .preview-subject-description {
            font-size: 1.2rem;
            color: #828282;
        }

        .navbar-dropdown {
            position: absolute;
            font-size: 0.9rem;
            margin-top: 0;
            top: 110%;
            right: 0;
            left: auto;
            border: none;
            border-radius: 4px;
            box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;
            animation-duration: 0.25s;
            animation-fill-mode: both;
            min-width: 10rem;
            color: #828282;
            text-align: left;
            list-style: none;
            background-color: #fffafa;
            background-clip: padding-box;
        }

        .navbar-dropdown .dropdown-item {
            display: flex;
            align-items: center;
            padding: 1.1rem 1.3rem;
            gap: 1.5rem;
            cursor: pointer;
            white-space: nowrap;
        }

        .navbar-dropdown .dropdown-item:hover {
            background-color: #fdf;
        }

        .navbar-dropdown .dropdown-divider {
            border-top: 1px solid #eee;
        }

        .navbar-dropdown .dropdown-navigating {
            text-align: center;
        }

        .navbar-dropdown-title {
            font-weight: 600;
        }

        .navbar-dropdown-title,
        .navbar-dropdown .dropdown-navigating {
            font-size: 1.6rem;
            padding: 1.5rem 2rem;
        }

        .group__gender .gender__item {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 3rem 0;
        }

        .gender__item input {
            width: 1rem;
        }

        .group__gender p {
            color: #595959;
            font-size: 1.6rem;
        }

        .group__gender label {
            padding-left: 0.5rem;
            color: #595959;
            font-size: 1.4rem;
        }

        .gender__item-list {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
        }

        .gender__item-list .gender__item label {
            color: var(--text-color);
            position: relative;
            transition: all 0.3s ease;
        }

        .gender__item-list .gender__item label::before {
            content: "";
            position: absolute;
            top: 0;
            left: -2rem;
            width: 1.4rem;
            height: 1.4rem;
            border-radius: 50%;
            background: var(--theme-color);
        }

        .gender__item-list .gender__item label::after {
            content: "";
            position: absolute;
            top: 2px;
            left: -1.8rem;
            width: 1rem;
            height: 1rem;
            border-radius: 50%;
            background: #fff;
            transition: width 0.15s ease-in-out, height 0.15s ease-in-out,
            left 0.15s ease-in-out, top 0.15s ease-in-out;
        }

        .gender__item-list .gender__item [type="radio"] {
            display: none;
        }

        .gender__item-list .gender__item [type="radio"]:checked + label::after {
            top: 4px;
            left: -1.6rem;
            width: 0.6rem;
            height: 0.6rem;
            border-radius: 50%;
        }

        [type="checkbox"],
        [type="radio"],
        .gender__item label {
            cursor: pointer;
        }

        .user-info .divider {
            margin-bottom: 2rem;
        }

        .order-box__top {
            display: flex;
            justify-content: space-between;
            margin-bottom: 1rem;
        }

        .order__user-info__badge {
            padding: 0.3rem;
            background-color: var(--danger);
            color: #fff;
        }

        .order__user-info__brand {
            font-weight: 600;
        }

        .order__user-info {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 1rem;
        }

        .order__state-display__state {
            text-transform: uppercase;
        }

        .order__state-display {
            display: flex;
            gap: 1rem;
            align-items: center;
        }

        .aside__user {
            display: flex;
            align-items: center;
            gap: 1rem;
            margin-bottom: 2rem;
        }

        .aside__user-img img {
            width: 4rem;
            height: 4rem;
            border-radius: 50%;
            object-fit: cover;
        }

        .aside__user-name {
            font-weight: 600;
        }

        .order-box__mid-left {
            display: flex;
            flex-direction: column;
            gap: 1rem;
            padding: 1rem 0;
        }

        .order-box__product {
            display: flex;
            gap: 2rem;
        }

        .order-product__name {
            font-size: 1.6rem;
            text-transform: capitalize;
        }

        .order-product__detail {
            display: flex;
            flex-direction: column;
            gap: 1rem;
        }

        .order-product__description,
        .order-product__quantity {
            font-size: 1.4rem;
        }

        .order-product__description {
            color: var(--text-semi-white);
        }

        .order__product-state {
            display: flex;
            gap: 0.5rem;
            color: var(--success);
        }

        .order__product-state__icon {
        }

        .order-box__mid,
        .order-box__next-actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .order-box__next-actions {
            padding: 3rem 0;
        }

        .order-box__next-actions__text {
            color: var(--text-semi-white);
            font-size: 1.2rem;
        }

        .order-box__next-actions__button-list {
            display: flex;
            justify-content: space-between;
            gap: 2rem;
        }

        .order-box__next-actions__button-list .btn.btn-badge,
        .order-box__next-actions__button-list .btn.btn-badge-border .btn-inner {
            padding: 1rem 3rem;
            min-width: 15rem;
        }

        .order-box__total {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            gap: 1rem;
            font-size: 1.6rem;
        }

        .order-box__total-price {
            font-size: 2rem;
            font-weight: 600;
        }

        .order-box__mid-right {
            display: flex;
            gap: 1rem;
        }

        .order-product__img--gift {
            width: 85px;
            height: 85px;
            display: flex;
            justify-content: flex-end;
            align-items: flex-start;
        }

        .order-product__name {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .order-product__name .btn.btn-badge-border .btn-inner {
            padding: 4px;
        }

        .order-product__name span {
            font-size: 1.2rem;
            line-height: 1;
        }

        .tab-list {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            background-color: #fff;
            margin: 1rem 0;
        }

        .tab-item {
            position: relative;
            font-size: 1.6rem;
            text-align: center;
            padding: 1.5rem 2rem;
        }

        /*.tab-item.active a {*/
        /*  //color: linear-gradient(135deg, #ed55c7, #6756ca);*/
        /*  background: linear-gradient(135deg, #ed55c7, #6756ca);*/
        /*  -webkit-background-clip: text;*/
        /*  background-clip: text;*/
        /*  -webkit-text-fill-color: transparent;*/
        /*}*/
        .tab-item::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            width: 0;
            height: 2px;
            background: linear-gradient(135deg, #ed55c7, #6756ca);
            transition: width 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        }

        .tab-item.active::after {
            width: 100%;
        }

        /* .nav-item .nav-link,
        .nav-item .nav-child-link,
        .nav-item span,
        .tab-list .tab-item a {
          pointer-events: none;
        } */
        .order__state-display__icon {
            cursor: pointer;
        }

        .order__state-display__icon {
            position: relative;
        }

        .order__popup {
            opacity: 0;
            text-align: center;
            color: var(--text-semi-white);
            position: absolute;
            top: 2.5rem;
            left: calc(-15rem / 2);
            right: calc(-15rem / 2);
            background-color: black;
            font-size: 1.4rem;
            line-height: 1.2;
            border-radius: 5px;
            padding: 1.6rem;
            z-index: 2;
            text-transform: capitalize;
            transition: transform 0.3s ease-in-out;
            transform: translateY(-26%);
            user-select: none;
            pointer-events: none;
        }

        .order__state-display__icon::before {
            content: "";
            top: 1.5rem;
            position: absolute;
            opacity: 0;
            border-left: 0.8rem solid transparent;
            border-right: 0.8rem solid transparent;
            border-bottom: 1rem solid black;
            transform: translateY(-9%);
            transition: transform 0.3s ease-in-out;
            user-select: none;
            pointer-events: none;
        }

        .order__state-display__icon:hover .order__popup,
        .order__state-display__icon:hover::before {
            opacity: 1;
            transform: translateY(0);
        }

    </style>
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
                        <span class="header-bottom-item-text text-hover active">Thanh Toán</span>
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
                <div class="user-infor-address">
                    <div class="text-highlight">
                        <i class="fa-solid fa-location-dot"></i>
                        <span>
                Thông tin nhận hàng
              </span>
                    </div>
                    <table class="table styled-table">
                        <thead class="table-light">
                        <tr>
                            <th>Tên</th>
                            <th>Số điện thoại</th>
                            <th>Địa chỉ</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">

                        <tr>
                            <td>${name}</td>
                            <td>${phone}</td>
                            <td>${address}</td>
                            <td>
                                <a class="edit-adr" href="">Thay Đổi</a>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
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
                                        <span class="minus"
                                              onclick="Product.changeAmountMinus(${item.id}, ${total}, ${item.promotionPrice});">-</span>
                                        <span class="product__quantity qty" id="quantity">${item.quantity}</span>
                                        <span class="plus"
                                              onclick="Product.changeAmountAdd(${item.id}, ${total}, ${item.promotionPrice})">+</span>

                                    </div>
                                </div>

                                <div class="order-box__mid-right">
                                    <div class="order-product__price--old">${item.unitPrice}</div>
                                    <div class="discountPercent"><i>-</i>${item.percentz}<i>%</i></div>
                                    <div class="order-product__price--new text-highlight price"
                                         id="promotion-price">${item.promotionPrice}</div>
                                </div>
                                <button class="btn btn-badge-border"
                                        onclick="location.href='${pageContext.request.contextPath}/remove-product-in-cart/${item.id}'">
                                    <div class="btn-inner">
                                        <span>Xóa</span>
                                    </div>
                                </button>
                            </div>

                            <c:set var="total" value="${total + item.quantity * item.promotionPrice}"/>
                        </c:forEach>
                        <div class="order-box__bot">
                            <div class="order-box__total">
                                <span class="order-box__icon-right"><i
                                        class="fas fa-shield-alt text-highlight"></i></span>
                                <span class="order-box__total-text">Tổng số tiền:</span>
                                <span class="order-box__total-price text-highlight total" id="total"><fmt:formatNumber
                                        type="number" maxIntegerDigits="13"
                                        value="${total }"/></span>
                            </div>
                            <div class="order-box__next-actions">
                                <div class="order-box__next-actions__text"></div>
                                <div class="order-box__next-actions__button-list"><a class="btn btn-badge"
                                                                                     href="${pageContext.request.contextPath}/customer/check-out">
                                    <span>Mua Ngay</span>
                                </a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>


            </div>
        </div>
    </div>
</div>
<!-- ----------------- End MAIN: SETTING  ---------------------- -->


<!-- ----------------- End FOOTER---------------------- -->

<!-- <script src="../assets/js/changeOrderTabs.js"></script> -->
<script src="/assets/js/utils.js"></script>
<script src="/assets/js/modal.js"></script>
<!-- <script src="/assets/js/detail.js"></script> -->
<script src="/assets/js/user-cart.js"></script>
<script src="${pageContext.request.contextPath}/js/search.js"></script>
</body>
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

</html>