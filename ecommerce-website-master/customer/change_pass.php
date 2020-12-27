
<h1 align="center">Đổi mật khẩu </h1>

<form action="" method="post"><!-- form Starts -->

<div class="form-group"><!-- form-group Starts -->

<label>Nhập mật khẩu hiện tại</label>

<input type="text" name="old_pass" class="form-control" required>

</div><!-- form-group Ends -->


<div class="form-group"><!-- form-group Starts -->

<label>Nhập mật khẩu mới</label>

<input type="text" name="new_pass" class="form-control" required>

</div><!-- form-group Ends -->


<div class="form-group"><!-- form-group Starts -->

<label>Nhập lại mật khẩu mới</label>

<input type="text" name="new_pass_again" class="form-control" required>

</div><!-- form-group Ends -->

<div class="text-center"><!-- text-center Starts -->

<button type="submit" name="submit" class="btn btn-primary">

<i class="fa fa-user-md"> </i> Đổi mật khẩu

</button>

</div><!-- text-center Ends -->

</form><!-- form Ends -->
<?php

if(isset($_POST['submit'])){

$c_email = $_SESSION['customer_email'];

$old_pass = $_POST['old_pass'];

$new_pass = $_POST['new_pass'];

$new_pass_again = $_POST['new_pass_again'];

$sel_old_pass = "select * from customers where customer_pass='$old_pass'";

$run_old_pass = mysqli_query($con,$sel_old_pass);

$check_old_pass = mysqli_num_rows($run_old_pass);

if($check_old_pass==0){

echo "<script>alert('Mật khẩu hiện tại của bạn không hợp lệ, hãy thử lại')</script>";

exit();

}

if($new_pass!=$new_pass_again){

echo "<script>alert('
Mật khẩu mới của bạn không khớp với liều lượng')</script>";

exit();

}

$update_pass = "update customers set customer_pass='$new_pass' where customer_email='$c_email'";

$run_pass = mysqli_query($con,$update_pass);

if($run_pass){

echo "<script>alert('Mật khẩu của bạn đã được thay đổi thành công')</script>";

echo "<script>window.open('my_account.php?my_orders','_self')</script>";


}




}



?>







