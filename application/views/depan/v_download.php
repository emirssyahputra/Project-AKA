<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Modul - Laboratorium Fisika</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<?php echo base_url().'theme/images/icon.png'?>" rel="icon">
  <link href="<?php echo base_url().'theme/images/icon.png'?>" rel="apple-touch-icon">


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

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      
      
      <a href="<?php echo site_url('');?>" class="logo me-auto"><img src="<?php echo base_url().'theme/images/logo-dark.png'?>" alt="" class="img-fluid"></a>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="<?php echo site_url('home');?>">Home</a></li>

          <li><a  href="<?php echo site_url('blog');?>"><span>Alat</span></a></li>
          <li><a href="<?php echo site_url('guru');?>">Tendik</a></li>
          <li><a class="active"  href="<?php echo site_url('download');?>">Modul</a></li>
          <li><a href="<?php echo site_url('about');?>">About</a></li>
          <li><a href="<?php echo site_url('administrator');?>" class="getstarted">Login</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Modul Praktikum</h2>
          <ol>
            <li><a href="<?php echo site_url('home');?>">Home</a></li>
            <li>Modul</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Guru ======= -->
    <section id="team" class="team ">
      <div class="container">

        <div class="row">
            <div class="col-md-12">
              <div class="table-responsive">
                <table class="table table-striped" id="display">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Files</th>
                      <th>Tanggal</th>
                      <th>Oleh</th>
                      <th style="text-align:center;">Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      $no=1;
                      foreach ($data->result() as $row):
                    ?>
                    <tr>
                      <td><?php echo $no++;?></td>
                      <td><?php echo $row->file_judul;?></td>
                      <td><?php echo $row->tanggal;?></td>
                      <td><?php echo $row->file_oleh;?></td>
                      <td style="text-align:center;"><a href="<?php echo site_url('download/get_file/'.$row->file_id);?>" class="btn btn-info">Download</a></td>
                    </tr>
                  <?php endforeach;?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
      </div>
    </section><!-- End Guru Section -->

  </main><!-- End #main -->

<!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3>SMA S Al Kautsar</h3>
              <p>
                Bandar Lampung, 35144 <br>
                Lampung, Indonesia<br><br>
                <strong>Phone:</strong> 0721 781578<br>
                <strong>Email:</strong> smaalkautsarlampung@gmail.com<br>
              </p>
              <div class="social-links mt-3">
                <a href="https://www.youtube.com/@smaalkautsarlampung9585/featured" class="twitter"><i class="bx bxl-youtube"></i></a>
                <a href="https://www.instagram.com/smaalkautsar/?hl=id" class="instagram"><i class="bx bxl-instagram"></i></a>
              </div>
            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Menu</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="<?php echo site_url('home');?>">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="<?php echo site_url('blog');?>">Alat</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="<?php echo site_url('download');?>">Modul</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>About Us</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="<?php echo site_url('about');?>">About</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="<?php echo site_url('guru');?>">Tendik</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <a href="<?php echo site_url();?>">
                        <img src="<?php echo base_url().'theme/images/logo-white.png'?>" class="img-fluid" alt="footer_logo">
                    </a>

          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>SMA S Al Kautsar</span></strong>. All Rights Reserved
      </div>
    </div>
  </footer><!-- End Footer -->
  
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