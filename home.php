<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:index.php');
}

if(isset($_POST['add_to_wishlist'])){

   $product_id = $_POST['product_id'];
   $product_name = $_POST['product_name'];
   $product_price = $_POST['product_price'];
   $product_image = $_POST['product_image'];
   
   $check_wishlist_numbers = mysqli_query($conn, "SELECT * FROM `wishlist` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

   $check_cart_numbers = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

   if(mysqli_num_rows($check_wishlist_numbers) > 0){
       $message[] = 'already added to wishlist';
   }elseif(mysqli_num_rows($check_cart_numbers) > 0){
       $message[] = 'already added to cart';
   }else{
       mysqli_query($conn, "INSERT INTO `wishlist`(user_id, pid, name, price, image) VALUES('$user_id', '$product_id', '$product_name', '$product_price', '$product_image')") or die('query failed');
       $message[] = 'product added to wishlist';
   }

}

if(isset($_POST['add_to_cart'])){

   $product_id = $_POST['product_id'];
   $product_name = $_POST['product_name'];
   $product_price = $_POST['product_price'];
   $product_image = $_POST['product_image'];
   $product_quantity = $_POST['product_quantity'];

   $check_cart_numbers = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

   if(mysqli_num_rows($check_cart_numbers) > 0){
       $message[] = 'already added to cart';
   }else{

       $check_wishlist_numbers = mysqli_query($conn, "SELECT * FROM `wishlist` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

       if(mysqli_num_rows($check_wishlist_numbers) > 0){
           mysqli_query($conn, "DELETE FROM `wishlist` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');
       }

       mysqli_query($conn, "INSERT INTO `cart`(user_id, pid, name, price, quantity, image) VALUES('$user_id', '$product_id', '$product_name', '$product_price', '$product_quantity', '$product_image')") or die('query failed');
       $message[] = 'product added to cart';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>home</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

   <!-- Link Swiper's CSS -->
    <link
    rel="stylesheet"
    href="https://unpkg.com/swiper/swiper-bundle.min.css"
  />


</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="home">
   <div class="container">
      <div class="content-left">
         <h1 class="heading">Penuhi Kebutuhan Peliharaan Kucing Anda</h1>
         <p class="subheading">Di pusat kebutuhan hewan peliharaan kucing terlengkap, dan terpercaya di Indonesia</p>
         <div class="btn-home">
            <a href="" class="btn-explore">Explore Now</a>
            <a href="" class="btn-learn">Learn More</a>
         </div>
      </div>
      <div class="content-right">
         <!-- Swiper -->
         <div class="swiper mySwiperHome">
            <div class="swiper-wrapper">
               <div class="swiper-slide">
                  <img src="image/cat1.jpeg" alt="">
               </div>
               <div class="swiper-slide">
                  <img src="image/cat2.jpeg" alt="">
               </div>
               <div class="swiper-slide">
                  <img src="image/cat3.jpeg" alt="">
               </div>
               <div class="swiper-slide">
                  <img src="image/cat4.jpeg" alt="">
               </div>
            </div>
            <div class="swiper-pagination"></div>
         </div>
      </div>
   </div>
</section>

<section class="service" id="service">
   <div class="container">
      <div class="row1">
         <h3 class="title">We provide a variety of services to meet your pet's needs</h3>
      </div>
      <div class="row2">
         <div class="img-box">
            <div class="detail">
               <a href="#product">Cat Supplies</a>
            </div>
            <img src="image/service1.png" alt="">
         </div>
         <div class="img-box">
            <div class="detail">
               <a href="https://api.whatsapp.com/send?phone=6282271145174&text=Hai%0ASaya%20tertarik%20dengan%20produk%20cat%20hotel%20dari%20CatStore">Cat Hotel</a>
            </div>
            <img src="image/service2.jpg" alt="">
         </div>
         <div class="img-box">
            <div class="detail">
               <a href="https://api.whatsapp.com/send?phone=6282271145174&text=Hai%0ASaya%20tertarik%20dengan%20produk%20cat%20grooming%20dari%20CatStore">Cat Grooming</a>
            </div>
            <img src="image/service3.jpg" alt="">
         </div>
            <div class="img-box">
               <div class="detail">
                  <a href="https://api.whatsapp.com/send?phone=6282271145174&text=Hai%0ASaya%20tertarik%20dengan%20produk%20cat%20daycare%20dari%20CatStore">Cat Daycare</a>
            </div>
            <img src="image/service4.png" alt="">
         </div>
      </div>
   </div>
</section>


<section class="products">

   <h1 class="title">latest products</h1>

   <div class="box-container">

      <?php
         $select_products = mysqli_query($conn, "SELECT * FROM `products` LIMIT 6") or die('query failed');
         if(mysqli_num_rows($select_products) > 0){
            while($fetch_products = mysqli_fetch_assoc($select_products)){
      ?>
      <form action="" method="POST" class="box">
         <a href="view_page.php?pid=<?php echo $fetch_products['id']; ?>" class="fas fa-eye"></a>
         <div class="price">Rp<?php echo $fetch_products['price']; ?></div>
         <img src="uploaded_img/<?php echo $fetch_products['image']; ?>" alt="" class="image">
         <div class="name"><?php echo $fetch_products['name']; ?></div>
         <input type="number" name="product_quantity" value="1" min="0" class="qty">
         <input type="hidden" name="product_id" value="<?php echo $fetch_products['id']; ?>">
         <input type="hidden" name="product_name" value="<?php echo $fetch_products['name']; ?>">
         <input type="hidden" name="product_price" value="<?php echo $fetch_products['price']; ?>">
         <input type="hidden" name="product_image" value="<?php echo $fetch_products['image']; ?>">
         <input type="submit" value="add to wishlist" name="add_to_wishlist" class="option-btn">
         <input type="submit" value="add to cart" name="add_to_cart" class="btn">
      </form>
      <?php
         }
      }else{
         echo '<p class="empty">no products added yet!</p>';
      }
      ?>

   </div>

   <div class="more-btn">
      <a href="shop.php" class="option-btn">load more</a>
   </div>

</section>

<section class="home-contact">

   <div class="content">
      <h3>have any questions?</h3>
      <p></p>
      <a href="contact.php" class="btn">contact us</a>
   </div>

</section>




<?php @include 'footer.php'; ?>

<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="js/script.js"></script>
<script src="js/home_script.js"></script>

</body>
</html>