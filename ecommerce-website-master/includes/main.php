</head>

<body>

  <header class="page-header">
    <!-- topline -->
    <div class="page-header__topline">
      <div class="container clearfix">

        <div class="currency">
          <a class="currency__change" href="customer/my_account.php?my_orders">
          <?php
          if(!isset($_SESSION['customer_email'])){
          echo "Chào mừng bạn đến với cửa hàng của chúng tôi"; 
          }
          else
          { 
              echo "Xin chào : " . $_SESSION['customer_email'] . "";
            }
?>
          </a>
        </div>

        <div class="basket">
          <a href="cart.php" class="btn btn--basket">
            <i class="icon-basket"></i>
            <?php items(); ?> items
          </a>
        </div>
        
        
        <ul class="login">

<li class="login__item">
<?php
if(!isset($_SESSION['customer_email'])){
  echo '<a href="customer_register.php" class="login__link">Đăng kí</a>';
} 
  else
  { 
      echo '<a href="my_account.php?my_orders" class="login__link">Tài khoản</a>';
  }   
?>  
</li>


<li class="login__item">
<?php
if(!isset($_SESSION['customer_email'])){
  echo '<a href="checkout.php" class="login__link">Đăng nhập</a>';
} 
  else
  { 
      echo '<a href="../logout.php" class="login__link">Đăng xuất</a>';
  }   
?>  
  
</li>
</ul>
      
      </div>
    </div>
    <!-- bottomline -->
    <div class="page-header__bottomline">
      <div class="container clearfix">

        <div class="logo">
          <a class="logo__link" href="index.php">
            <img class="logo__img" src="images/logo.png" alt="Avenue fashion logotype" width="237" height="19">
          </a>
        </div>

        <nav class="main-nav">
          <ul class="categories">

            <li class="categories__item">
              <a class="categories__link" href="#">
                Mens
               
              </a>
              </li>

            <li class="categories__item">
              <a class="categories__link" href="#">
                Womens
               
              </a>
            </li>

            <li class="categories__item">
              <a class="categories__link categories__link--active" href="shop.php">
                Shop
              </a>
            </li>

            <li class="categories__item">
              <a class="categories__link" href="localstore.php">
                Cửa hàng nội địa
              </a>
            </li>

          <li class="categories__item">
              <a class="categories__link" href="customer/my_account.php?my_orders">
                My Account
                <i class="icon-down-open-1"></i>
              </a>
              <div class="dropdown dropdown--lookbook">
                <div class="clearfix">
                  <div class="dropdown__half">
                    <div class="dropdown__heading">Cài đặt tài khoản</div>
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Danh sách yêu thích</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Các đơn hàng</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Xem giỏ hàng</a>
                      </li>
                    </ul>
                  </div>
                  <div class="dropdown__half">
                    <div class="dropdown__heading"></div>
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Chỉnh sửa tài khoản</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Đổi mật khẩu</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Xóa tài khoản</a>
                      </li>
                    </ul>
                  </div>
                </div>
             

              </div>

            </li>

          </ul>
        </nav>
      </div>
    </div>
  </header>