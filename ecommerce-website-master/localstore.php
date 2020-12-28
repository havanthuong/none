<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");

?>
  <!-- MAIN -->
  <main>
    <!-- HERO -->
    <div class="nero">
      <div class="nero__heading">
        <span class="nero__bold">Cửa hàng </span>nội địa
      </div>
      <p class="nero__text">
      </p>
    </div>
  </main>


<div id="content" ><!-- content Starts -->

<div class="container-fluid" ><!-- container Starts -->






<div class="col-md-12" ><!-- col-md-12 Starts -->

<div class="services row"><!-- services row Starts -->

<?php

$get_stores = "select * from store";

$run_stores = mysqli_query($con,$get_stores);

while($row_stores = mysqli_fetch_array($run_stores)){

  $stores_id = $row_stores['store_id'];
  
  $stores_title = $row_stores['store_title'];
  
  $stores_image = $row_stores['store_image'];
  
  $stores_desc = $row_stores['store_desc'];
  
  $stores_button = $row_stores['store_button'];
  
  $stores_url = $row_stores['store_url'];
  
  ?>
  
  <div class="col-md-4 col-sm-6 box"><!-- col-md-4 col-sm-6 box Starts -->
  
  <img src="admin_area/store_images/<?php echo $stores_image; ?>" class="img-responsive">
  
  <h2 align="center"> <?php echo $stores_title; ?> </h2>
  
  <p>
  <?php echo $stores_desc; ?>
  </p>
  
  <center>
  
  <a href="<?php echo $stores_url; ?>" class="btn btn-primary">
  
  <?php echo $stores_button; ?>
  
  </a>
  
  </center>
  
  </div><!-- col-md-4 col-sm-6 box Ends -->
  
  <?php } ?>

</div><!-- services row Ends -->

</div><!-- col-md-12 Ends -->



</div><!-- container Ends -->
</div><!-- content Ends -->



<?php

include("includes/footer.php");

?>

<script src="js/jquery.min.js"> </script>

<script src="js/bootstrap.min.js"></script>

</body>
</html>
