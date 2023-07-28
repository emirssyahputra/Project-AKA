<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<?php
        function limit_words($string, $word_limit){
            $words = explode(" ",$string);
            return implode(" ",array_splice($words,0,$word_limit));
        }
    ?>
  <title>Detail Alat - Laboratorium Fisika</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

   <!-- Favicons -->
  <link href="<?php echo base_url().'theme/img/favicon.png'?>" rel="icon">
  <link href="<?php echo base_url().'theme/img/apple-touch-icon.png'?>" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<?php echo base_url().'theme/vendor/animate.css/animate.min.css'?>" rel="stylesheet">
  <link href="<?php echo base_url().'theme/vendor/bootstrap/css/bootstrap.min.css'?>" rel="stylesheet">
  <link href="<?php echo base_url().'theme/vendor/bootstrap-icons/bootstrap-icons.css'?>" rel="stylesheet">
  <link href="<?php echo base_url().'theme/vendor/boxicons/css/boxicons.min.css'?>" rel="stylesheet">
  <link href="<?php echo base_url().'theme/vendor/glightbox/css/glightbox.min.css'?>" rel="stylesheet">
  <link href="<?php echo base_url().'theme/vendor/remixicon/remixicon.css'?>" rel="stylesheet">
  <link href="<?php echo base_url().'theme/vendor/swiper/swiper-bundle.min.css'?>" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<?php echo base_url().'theme/css/style.css'?>" rel="stylesheet">

  
</head>

<body>

  <main id="main">

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portfolio-details-slider swiper">
              <div class="swiper-wrapper align-items-center">

                <div class="swiper-slide">
                  <img src="<?php echo base_url().'assets/images/'.$image?>" class="img-fluid" width="500px;" alt="blog-img">
                </div>


              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="portfolio-info">
              <h3>Informasi Alat</h3>
              <ul>
                <li><strong>Nama Alat</strong>: <a href="<?php echo site_url('artikel/'.$slug); ?>"><?php echo $title; ?></a></li>
                <li><strong>Kategori Alat</strong>: <?php echo $kategori;?></li>
                <li><strong>Author</strong>: <?php echo $author;?></li>
              </ul>
            </div>
            <div class="portfolio-description">
              <h2>Panduan Alat</h2>
              <p>
                <?php echo $blog;?>
              </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->

  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

   <!-- Vendor JS Files -->
  <script src="<?php echo base_url().'theme/js/jquery.min.js'?>"></script>
  <script src="<?php echo base_url().'theme/vendor/bootstrap/js/bootstrap.bundle.min.js'?>"></script>
  <script src="<?php echo base_url().'theme/vendor/glightbox/js/glightbox.min.js'?>"></script>
  <script src="<?php echo base_url().'theme/vendor/isotope-layout/isotope.pkgd.min.js'?>"></script>
  <script src="<?php echo base_url().'theme/vendor/swiper/swiper-bundle.min.js'?>"></script>
  <script src="<?php echo base_url().'theme/vendor/waypoints/noframework.waypoints.js'?>"></script>
  <script src="<?php echo base_url().'theme/vendor/php-email-form/validate.js'?>"></script>

  <!-- Template Main JS File -->
  <script src="<?php echo base_url().'theme/js/main.js'?>"></script>


</body>

</html>