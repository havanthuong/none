<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");
?>


  <!-- Cover -->
  <main>
    <div class="hero">
      <a href="shop.php" class="btn1">Xem tất cả sản phẩm
</a>
    </div>
    <!-- Main -->
    <div class="wrapper">
            <h1>Bộ sưu tập nổi bật<h1>
            
      </div>



    <div id="content" class="container"><!-- container Starts -->

    <div class="row"><!-- row Starts -->

    <?php

    getPro();

    ?>

    </div><!-- row Ends -->

    </div><!-- container Ends -->
    <!-- FOOTER -->
    <footer class="page-footer">

      <div class="footer-nav">
        <div class="container clearfix">

          <div class="footer-nav__col footer-nav__col--info">
            <div class="footer-nav__heading">Thông tin</div>
            <ul class="footer-nav__list">
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Thương hiệu</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Hàng nội địa</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Dịch vụ cho khách hàng</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Chính sách &amp; cookies</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Sơ đồ website</a>
              </li>
            </ul>
          </div>

          <div class="footer-nav__col footer-nav__col--whybuy">
            <div class="footer-nav__heading">Tại sao lại mua sản phẩm</div>
            <ul class="footer-nav__list">
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Giao hàng &amp; Trả hàng</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Giao hàng đảm bảo</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Giấy chứng nhận</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Đoạt giải</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Giao dịch uy tín</a>
              </li>
            </ul>
          </div>

          <div class="footer-nav__col footer-nav__col--account">
            <div class="footer-nav__heading">Tài khoản</div>
            <ul class="footer-nav__list">
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Đăng nhập</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Đăng ký</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Xem giỏ</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Xem lookbook</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Theo dõi đơn hàng</a>
              </li>
              <li class="footer-nav__item">
                <a href="#" class="footer-nav__link">Cập nhật thông tin </a>
              </li>
            </ul>
          </div>


          <div class="footer-nav__col footer-nav__col--contacts">
            <div class="footer-nav__heading">Liên hệ chi tiết</div>
            <address class="address">
            UIT_store<br>
            kp 6 linh trung, Thủ đức, tp HCM
          </address>
            <div class="phone">
              Điện thoại:
              <a class="phone__number" href="tel:0123456789">0123-456-789</a>
            </div>
            <div class="email">
              Email:
              <a href="mailto:support@yourwebsite.com" class="email__addr">hotro@gmail.com</a>
            </div>
          </div>

        </div>
      </div>

      <div class="banners">
        <div class="container clearfix">

          <div class="banner-award">
            <span>Giải thưởng</span><br> Fashion awards 2021
          </div>

          <div class="banner-social">
            <a href="#" class="banner-social__link">
            <i class="icon-facebook"></i>
          </a>
            <a href="#" class="banner-social__link">
            <i class="icon-twitter"></i>
          </a>
            <a href="#" class="banner-social__link">
            <i class="icon-instagram"></i>
          </a>
            <a href="#" class="banner-social__link">
            <i class="icon-pinterest-circled"></i>
          </a>
          </div>

        </div>
      </div>

      <div class="page-footer__subline">
        <div class="container clearfix">

          <div class="copyright">
            &copy; 2020 Avenue Fashion&trade;
          </div>

          <div class="developer">
            Lập trình Handsome Guys
          </div>

          <div class="designby">
            Thiết kế Handsome Guys
          </div>

        </div>
      </div>
    </footer>
</body>

</html>