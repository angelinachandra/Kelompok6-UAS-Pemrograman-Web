<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:index.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3>about us</h3>
    <p> <a href="home.php">home</a> / about </p>
</section>

<section class="about">

    <div class="flex">

        <div class="image">
            <img src="image/about-img-1.jpg" alt="">
        </div>

        <div class="content">
            <h3>why choose us?</h3>
            <p><br></p>
            <div class="item">
                <div class="icon">
                    <i class='bx bx-cart-alt'>   Free Delivery</i>
                </div>
                <p></p>
            </div>
            <div class="item">
                <div class="icon">
                    <i class='bx bx-donate-heart'>   Great Experience</i>
                </div>
                <p></p>
            </div>
            <div class="item">
                <div class="icon">
                    <i class='bx bxs-check-square'>   Product Variety</i>
                </div>
            </div>
            <p><br></p>
            <a href="shop.php" class="btn">shop now</a>
        </div>

    </div>

    <div class="flex">

        <div class="content">
            <h3>Our Commitment</h3>
            <p>Kami akan selalu menyediakan kebutuhan Cat Lovers - yaitu produk berkualitas dengan harga terbaik, disertai dengan pelayanan yang luar biasa. Kebahagiaan pelanggan adalah prioritas utama kami sehingga kami tim CatStore selalu bersemangat untuk melayani Cat Lovers dengan sepenuh hati.</p>
            <a href="contact.php" class="btn">contact us</a>
        </div>

        <div class="image">
            <img src="image/about-img-2.jpg" alt="">
        </div>

    </div>

</section>

<section class="reviews" id="reviews">

    <h1 class="title">our team</h1>

    <div class="box-container">

        <div class="box">
            <img src="img2/Foto Zefanya Massie.jpeg" alt="">
            
            <h3>Zefanya J Massie</h3>
            <p>210211060110</p>
            <div class="sosmed">
                <a href="https://www.instagram.com/massiejeremia/" target="blank">
                    <img src="image/Icon IG.jpeg">
                </a>
            </div>
        </div>

        <div class="box">
            <img src="img2/Foto Ka Angelina Chandra.jpg" alt="">
            <h3>Angelina Chandra</h3>
            <p>20021106024</p>
            <div class="sosmed">
                <a href="https://www.instagram.com/angel.chandra/" target="blank">
                    <img src="image/Icon IG.jpeg">
                </a>
            </div>
        </div>

        <div class="box">
            <img src="img2/Foto Ka Marshalino Mamesah.jpg" alt="">
            <h3>Marshalino I M Tiagun</h3>
            <p>20021106007</p>
            <div class="sosmed">
                <a href="https://www.instagram.com/lino_tiagun/" target="blank">
                    <img src="image/Icon IG.jpeg">
                </a>
            </div>
        </div>

    </div>

</section>











<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>