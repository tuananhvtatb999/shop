<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- require -->

  <link rel="stylesheet" href="${pageContext.request.contextPath}/newcss/base.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
    integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- require -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/newcss/shared.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pages/setting.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/newcss/footer.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/newcss/userCart.css" />

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
            <img src="${pageContext.request.contextPath}/newimage/logo.svg" alt="logo" />
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
  <div class="container">
   
      <div class="mid-card">
        <div class="card-body cart">
          <div class="col-sm-12 empty-cart-cls text-center">
            <img src="${pageContext.request.contextPath}/newimage/cartEmpty.png" class="image-empty">
            <h2><strong>Giỏ hàng của bạn đang trống</strong></h2>
           
            <a href="#" class="btn btn-primary">
              <span>
                Tiếp Tục Mua Hàng
              </span>
             </a>
            
          
          </div>
      </div>
    </div>
  </div>
  <!-- ----------------- End MAIN: SETTING  ---------------------- -->


  <!-- ----------------- End FOOTER---------------------- -->

  
</body>
<!-- ----------------- Begin FOOTER---------------------- -->
<footer class="footer">
  <div class="footer_top">
    <div class="footer_top-item">
      <div class="block_wrapper">
        <ul class="block_list">
          <li class="block_item logo">
            <a href="/"><img src="${pageContext.request.contextPath}/newimage/logo-white.png" alt="logo-white" /></a>
          </li>
          <li class="block_item">
            <a class="block_link" href="tel:0906.880.960" title="Hotline: 0906.880.960">Hotline: 0906.880.960</a>
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
                  <div class="card-item_icon"><img src="${pageContext.request.contextPath}/newimage/cod.jpg" alt="Tiền mặt" title="Tiền mặt">
                  </div>
                  <div class="card-item_text">Tiền mặt</div>
                </div>
              </a><a class="block_link" href="/" title="Momo">
                <div class="card-item_box">
                  <div class="card-item_icon"><img src="${pageContext.request.contextPath}/newimage/momo.png" alt="Momo" title="Momo" />
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
                  <div class="card-item_icon"><img src="${pageContext.request.contextPath}/newimage/credit-card.png" alt="VISA, MASTER, JCB"
                      title="VISA, MASTER, JCB" /></div>
                  <div class="card-item_text">VISA, MASTER, JCB</div>
                </div>
              </a>
            </div>
          </li>
          <li class="block_card-item">
            <div class="card-item_list">
              <a class="block_link" href="/" title="Internet Banking">
                <div class="card-item_box">
                  <div class="card-item_icon"><img src="${pageContext.request.contextPath}/newimage/credit-card.png" alt="Internet Banking"
                      title="Internet Banking" /></div>
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