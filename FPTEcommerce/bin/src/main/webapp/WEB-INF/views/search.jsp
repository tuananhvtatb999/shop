<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Search</title>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/newcss/search.css"/>
    <jsp:include page="/WEB-INF/views/common/css.jsp"></jsp:include>
</head>

<body>
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
                        src="../assets/img/product/logo.svg" alt="logo"/>
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
                    <input type="text" onblur="Product.searchProduct();" id="key-word"
                           placeholder="Nhập từ khóa tìm kiếm "/>
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
                    </div>
                    <a class="about-user" href="#"> <span class="about-user-1">Tài
								khoản</span> <span class="about-user-2">Xin chào!</span>
                    </a> <i class="fas fa-caret-down" style="font-size: 1.6rem"></i>
                </li>
            </ul>
            <!-- end Header-right -->
        </div>
        <!-- end Header - bottom -->

        <!-- ------------------------ Begin BREADCRUMB ------------------------------- -->
        <ul class="category">
            <li class="category-item"><a href="#" class="text-hover"><span>Sản
							phẩm</span></a>
                <div class="category__dropdown-wrapper">
                    <ul class="category__dropdown">
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												thun</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo cổ trái tim</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="category-item"><a href="#" class="text-hover"><span>Nam</span></a>
                <div class="category__dropdown-wrapper">
                    <ul class="category__dropdown">
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												thun</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo cổ trái tim</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="category-item"><a href="#" class="text-hover"><span>Nữ</span></a>
                <div class="category__dropdown-wrapper">
                    <ul class="category__dropdown">
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												thun</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo cổ trái tim</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="category-item"><a href="#" class="text-hover"><span>Phụ
							kiện</span></a>
                <div class="category__dropdown-wrapper">
                    <ul class="category__dropdown">
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												thun</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo cổ trái tim</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="category-item"><a href="#" class="text-hover"><span>Thương
							hiệu</span></a>
                <div class="category__dropdown-wrapper">
                    <ul class="category__dropdown">
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												thun</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo cổ trái tim</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="category-item"><a href="#" class="text-hover"><span>Xếp
							hạng</span></a>
                <div class="category__dropdown-wrapper">
                    <ul class="category__dropdown">
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												thun</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo cổ trái tim</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="category-item"><a href="#" class="text-hover"><span>Mới
							nhất</span></a>
                <div class="category__dropdown-wrapper">
                    <ul class="category__dropdown">
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												thun</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo cổ trái tim</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="category-item"><a href="#" class="text-hover"><span>Giá
							sốc</span></a>
                <div class="category__dropdown-wrapper">
                    <ul class="category__dropdown">
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												thun</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo cổ trái tim</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="category-item"><a href="#" class="text-hover"><span>Sự
							kiện</span></a>
                <div class="category__dropdown-wrapper">
                    <ul class="category__dropdown">
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												thun</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo cổ trái tim</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                            </ul>
                        </li>
                        <li class="category__dropdown-block">
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo vải Phượng Hoàng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo nỉ Phượng Hoàng</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Áo
												khoác</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo khoác da hổ</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Áo Bomber</span></a></li>
                            </ul>
                            <ul class="dropdown__list--category">
                                <li class="dropdown__item--category menu-hover"><a
                                        href="#"><i class="fa-solid fa-shirt"></i><span>Quần</span></a>
                                </li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống rộng</span></a></li>
                                <li class="dropdown__item--category text-hover"><a
                                        href="#"><span>Quần ống loe</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>

        <!-- ------------------------ End BREADCRUMB ------------------------------- -->
    </div>

</header>
<!-- end Header -->

<!-- ----------------- Begin MAIN---------------------- -->
<main class="search">
    <div class="page-section brand-store__wrapper">
        <div class="brand-store">
            <div class="brand-store__left">
                <aside class="branch-store__aside aside">
                    <h3 class="filter__title">
                        <i class="fa-solid fa-filter"></i><span>Bộ lọc tìm kiếm</span>
                    </h3>
                    <div class="filter__group">
                        <div class="aside__header-box">
                            <h4>Theo danh mục</h4>
                        </div>
                        <div class="divider"></div>
                        <div class="aside-bar">
                            <ul class="aside-bar__list category-filter">
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="category" id="0" type="checkbox" value="0"
                                                       onclick="Product.searchProduct()"/><label
                                                    class="text-hover" for="0">Quần Denim / Jean</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="category" id="1" type="checkbox" value="1"
                                                       onclick="Product.searchProduct()"/><label
                                                    class="text-hover" for="1">Áo Sweater</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="category" id="2" type="checkbox" value="2"
                                                       onclick="Product.searchProduct()"/><label
                                                    class="text-hover" for="2">Quần Ngắn</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="category" id="3" type="checkbox" value="3"
                                                       onclick="Product.searchProduct()"/><label
                                                    class="text-hover" for="3">Áo Thun Tay Ngắn</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="category" id="4" type="checkbox" value="4"
                                                       onclick="Product.searchProduct()"/><label
                                                    class="text-hover" for="4">Quần Dài</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="category" id="5" type="checkbox" value="5"
                                                       onclick="Product.searchProduct()"/><label
                                                    class="text-hover" for="5">Áo Cổ Trụ</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="category" id="6" type="checkbox" value="6"
                                                       onclick="Product.searchProduct()"/><label
                                                    class="text-hover" for="6">Áo Denim / Jean</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="category" id="7" type="checkbox" value="7"
                                                       onclick="Product.searchProduct()"/><label
                                                    class="text-hover" for="7">Sơ Mi Tay Dài</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="category" id="8" type="checkbox" value="8"
                                                       onclick="Product.searchProduct()"/><label
                                                    class="text-hover" for="8">Sơ Mi Tay Ngắn</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="category" id="9" type="checkbox" value="9"
                                                       onclick="Product.searchProduct()"/><label
                                                    class="text-hover" for="9">Áo Len / Cardigan</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="filter__group">
                        <div class="aside__header-box">
                            <h4>Kích Thước</h4>
                        </div>
                        <div class="divider"></div>
                        <div class="aside-bar">
                            <ul class="aside-bar__list size-item size-filter">
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="size" id="size-0" type="checkbox"
                                                       value="0"/><label class="text-hover" for="size-0">XS</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="size" id="size-1" type="checkbox"
                                                       value="1"/><label class="text-hover" for="size-1">S</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="size" id="size-2" type="checkbox"
                                                       value="2"/><label class="text-hover" for="size-2">M</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="size" id="size-3" type="checkbox"
                                                       value="3"/><label class="text-hover" for="size-3">L</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="size" id="size-4" type="checkbox"
                                                       value="4"/><label class="text-hover" for="size-4">XL</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li class="aside-bar__item">
                                    <div class="aside-bar__item-box">
                                        <a class="aside-bar__item-link">
                                            <div class="input--radio__wrapper">
                                                <input name="size" id="size-5" type="checkbox"
                                                       value="5"/><label class="text-hover" for="size-5">XXL</label>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="button__wrapper">
                        <button class="btn btn-primary" onclick="Product.clearCheckBox();">
                            <span>Xóa Tất Cả</span>
                        </button>
                    </div>
                </aside>
            </div>
            <div class="brand-store__right">
                <div class="tittle-product">
                    <h3>
                        Shop liên quan đến "<span class="text-highlight key-word"></span>"
                    </h3>
                    <div class="section-description quantity-result"></div>
                </div>
                <div class="search__shop-list">
<%--                    <div class="search-shop__item-wrapper">--%>
<%--                        <a href="#">--%>
<%--                            <div class="search-shop__item">--%>
<%--                                <div class="search-shop__item-left">--%>
<%--                                    <div class="search-shop__image-wrapper">--%>
<%--                                        <img src="/../assets/img/shop/shop-banner.webp"--%>
<%--                                             alt="shop-image" width="80px" height="80px">--%>
<%--                                        <div class="badge"></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="search-shop__info-wrapper">--%>
<%--                                        <div class="search-shop__name">Name of the shop</div>--%>
<%--                                        <div class="search-shop__username">mot-hai-ba-bon</div>--%>
<%--                                        <div class="search-shop__statistic">--%>
<%--                                            <strong>3</strong>&nbsp;người theo dõi--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
                </div>
                <div class="tittle-product">
                    <i class="fa-regular fa-lightbulb"></i>
                    <h3>
                        Kết quả tìm kiếm cho từ khoá '<span class="text-highlight key-word"></span>'
                    </h3>
                    <div class="section-description quantity-result-p"></div>
                </div>
                <div class="search__product-list">
                    <div>
                        <div class="grid grid-20">
                            <!-- ======================= Begin PRODUCT ================================== -->
                            <div>
                                <ul class="category-about row product-search">
                                </ul>
                            </div>
                            <!-- ======================= End PRODUCT ================================== -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- ----------------- End MAIN---------------------- -->


<script src="../assets/js/dropdownFilter.js"></script>
<script src="${pageContext.request.contextPath}/js/search.js"></script>
<!-- ----------------- BEGIN FOOTER---------------------- -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<!-- ----------------- End FOOTER---------------------- -->
</body>
<jsp:include page="/WEB-INF/views/common/js.jsp"></jsp:include>
</html>