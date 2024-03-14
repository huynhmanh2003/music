<!DOCTYPE html>
<html class="no-js" lang="en" style="scroll-behavior: smooth;">
  <head>
    <meta charset="utf-8" />
    <!--    <meta http-equiv="x-ua-compatible" content="ie=edge">-->
    <title>Musico</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="./img/favicon.ico" />
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="./css/reset.css" />
    <link rel="stylesheet" href="./css/bootstrap.min.css" />
    <link rel="stylesheet" href="./css/animate.css" />
    <link rel="stylesheet" href="./css/audioplayer.css" />
    <link rel="stylesheet" href="./css/flaticon.css" />
    <link rel="stylesheet" href="./css/font-awesome.min.css" />
    <link rel="stylesheet" href="./css/gijgo.css" />
    <link rel="stylesheet" href="./css/magnific-popup.css" />
    <link rel="stylesheet" href="./css/nice-select.css" />
    <link rel="stylesheet" href="./css/owl.carousel.min.css" />
    <link rel="stylesheet" href="./css/slick.css" />
    <link rel="stylesheet" href="./css/slicknav.css" />
    <link rel="stylesheet" href="./css/style.css" />
    <link rel="stylesheet" href="./css/themify-icons.css" />
    
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
  </head>

  <body>
    <!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve
        your experience and security.
      </p>
    <![endif]-->

    <!-- header-start -->
    <header>
      <div class="header-area">
        <div id="sticky-header" class="main-header-area">
          <div class="container-fluid">
            <div class="header_bottom_border">
              <div class="row align-items-center">
                <div class="col-xl-3 col-lg-2">
                  <div class="logo">
                    <a href="index.jsp">
                        <img style="width: 50%" src="img/Music.png" alt="" />    
                    </a>
                  </div>
                </div>
                <div class="col-xl-6 col-lg-7">
                  <div class="main-menu d-none d-lg-block">
                    <nav>
                      <ul id="navigation">
                        <li><a class="active" href="index.jsp">home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="track.html">tracks</a></li>
                        <li>
                          <a href="#">blog <i class="ti-angle-down"></i></a>
                          <ul class="submenu">
                            <li><a href="blog.html">blog</a></li>
                            <li><a href="single-blog.html">single-blog</a></li>
                          </ul>
                        </li>
                        <li>
                          <a href="#">pages <i class="ti-angle-down"></i></a>
                          <ul class="submenu">
                            <li><a href="elements.html">elements</a></li>
                          </ul>
                        </li>
                        <li><a href="#contact">Contact</a></li>
                      </ul>
                    </nav>
                  </div>
                </div>
                <div class="custom-col-lg-3">
                  <div class="Login-SignIn text-right">
                    <ul class="Login-SignIn connection-page">
                        <%
                            if(session.getAttribute("usersession")==null||session.getAttribute("passwordsession")==null){%>
                            <li><a href="./LoginHome.jsp" class="Login-Button">Login</a></li>
                            <li><a href="./RegisterHome.jsp" class="Signin-Button">Register</a></li>
                            <%}else{%>
                            <li><span >Welcome:  ${usersession} </span></li>
                            <li><a href="./signOut" class="Signin-Button">Sign Out</a></li>
                            <%}
                        %>
                        
                    </ul>
                  </div>
                </div>
                <div class="col-12">
                  <div class="mobile_menu d-block d-lg-none"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- header-end -->

    <!-- slider_area_start -->
    <div class="slider_area">
      <div class="single_slider d-flex align-items-center slider_bg_1 overlay2">
        <div class="container">
          <div class="row">
            <div class="col-xl-12">
              <div class="slider_text text-center">
                <h3>Music</h3>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- slider_area_end -->

    <!-- music_area  -->
    <div class="music_area">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-xl-10">
            <div class="row align-items-center">
              <div class="col-xl-9 col-md-9">
                <div class="music_field">
                  <div class="thumb">
                    <img src="img/music_man/1.png" alt="" />
                  </div>
                  <div class="audio_name">
                    <div class="name">
                      <h4>Frando Kally</h4>
                      <p>10 November, 2019</p>
                    </div>
                    <audio preload="auto" controls>
                      <source src="https://www.w3schools.com/html/horse.mp3" />
                    </audio>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-md-3 btn-addShopCart-music">
                                <div class="music_btn" style="display:flex;justify-content: space-between;white-space: nowrap">
                                    <a href="#button" class="boxed-btn js-buy-tickets buy-album-btn" style=" margin-right: 10px;border-radius: 5px;" >buy album</a>
                                    <a href="#button" class="boxed-btn js-buy-tickets add-to-cart-btn" style=" margin-left: 10px;border-radius: 5px;" >add to cart</a>
                                </div>
                            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- music_area end  -->

    <!-- about_area  -->
    <div class="about_area">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-xl-5 col-md-6">
            <div class="about_thumb">
              <img class="img-fluid" src="img/about/about_1.png" alt="" />
            </div>
          </div>
          <div class="col-xl-7 col-md-6">
            <div class="about_info">
              <h3>Jack Kalib</h3>
              <p>
                Esteem spirit temper too say adieus who direct esteem. It
                esteems luckily or picture placing drawing. Apartments
                frequently or motionless on reasonable projecting expression
                enim ad minim veniam quis nostrud exercitation we have supported
                programmes to help alleviate human suffering through animal
                welfare when people might depend.
              </p>
              <div class="signature">
                <img src="img/about/signature.png" alt="" />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--/ about_area  -->

    <!-- youtube_video_area  -->
   <div class="youtube_video_area">
            <div class="container-fluid p-0">
                <div class="row no-gutters">
                    <div class="col-xl-3 col-lg-3 col-md-6">
                        <div class="single_video">
                            <div class="thumb">
                                <img style="height: 100%" src="img/MusicImg/Circle.jpg" alt="" />
                            </div>
                            <div class="hover_elements">
                                <div class="video">
                                    <a
                                        class="popup-video"
                                        href="https://www.youtube.com/watch?v=Z6d3BofQqN0"
                                        >
                                        <i class="fa fa-play"></i>
                                    </a>
                                </div>

                                <div class="hover_inner">
                                    <span>Travis Scott</span>
                                    <h3><a href="#">COFFE BEANS</a></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6">
                        <div class="single_video">
                            <div class="thumb">
                                <img style="height: 100%" src="img/MusicImg/Circle.jpg" alt="" />
                            </div>
                            <div class="hover_elements">
                                <div class="video">
                                    <a
                                        class="popup-video"
                                        href="https://www.youtube.com/watch?v=JQbjS0_ZfJ0"
                                        >
                                        <i class="fa fa-play"></i>
                                    </a>
                                </div>

                                <div class="hover_inner">
                                    <span>SZA, Kendrick Lamar</span>
                                    <h3><a href="https://www.youtube.com/watch?v=JQbjS0_ZfJ0">All The Star</a></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6">
                        <div class="single_video">
                            <div class="thumb">
                                <img style="height: 100%" src="img/MusicImg/Circle.jpg" alt="" />
                            </div>
                            <div class="hover_elements">
                                <div class="video">
                                    <a
                                        class="popup-video"
                                        href="https://www.youtube.com/watch?v=wXhTHyIgQ_U"
                                        >
                                        <i class="fa fa-play"></i>
                                    </a>
                                </div>

                                <div class="hover_inner">
                                    <span>Post Malone</span>
                                    <h3><a href="https://www.youtube.com/watch?v=wXhTHyIgQ_U">Circles</a></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6">
                        <div class="single_video">
                            <div class="thumb">
                                <img src="img/MusicImg/She Knows.png" alt="" />
                            </div>
                            <div class="hover_elements">
                                <div class="video">
                                    <a
                                        class="popup-video"
                                        href="https://www.youtube.com/watch?v=jYdaQJzcAcw"
                                        >
                                        <i class="fa fa-play"></i>
                                    </a>
                                </div>

                                <div class="hover_inner">
                                    <span>J.Cole FT.Amber Coffman, Cults</span>
                                    <h3><a href="#">She Knows</a></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- / youtube_video_area  -->

    <!-- music_area  -->
    <div class="music_area music_gallery">
      <div class="container">
        <div class="row">
          <div class="col-xl-12">
            <div class="section_title text-center mb-65">
              <h3>Latest Tracks</h3>
            </div>
          </div>
        </div>
        <div class="row align-items-center justify-content-center mb-20">
          <div class="col-xl-10">
            <div class="row align-items-center">
              <div class="col-xl-9 col-md-9">
                <div class="music_field">
                  <div class="thumb">
                    <img src="img/music_man/1.png" alt="" />
                  </div>
                  <div class="audio_name">
                    <div class="name">
                      <h4>Frando Kally</h4>
                      <p>10 November, 2019</p>
                    </div>
                    <audio preload="auto" controls>
                      <source src="https://www.w3schools.com/html/horse.mp3" />
                    </audio>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-md-3 btn-addShopCart-music">
                                <div class="music_btn" style="display:flex;justify-content: space-between;white-space: nowrap">
                                    <a href="#button" class="boxed-btn js-buy-tickets buy-album-btn" style=" margin-right: 10px;border-radius: 5px;" >buy album</a>
                                    <a href="#button" class="boxed-btn js-buy-tickets add-to-cart-btn" style=" margin-left: 10px;border-radius: 5px;" >add to cart</a>
                                </div>
                            </div>
            </div>
          </div>
        </div>
        <div class="row align-items-center justify-content-center mb-20">
          <div class="col-xl-10">
            <div class="row align-items-center">
              <div class="col-xl-9 col-md-9">
                <div class="music_field">
                  <div class="thumb">
                    <img src="img/music_man/2.png" alt="" />
                  </div>
                  <div class="audio_name">
                    <div class="name">
                      <h4>Frando Kally</h4>
                      <p>10 November, 2019</p>
                    </div>
                    <audio preload="auto" controls>
                      <source src="https://www.w3schools.com/html/horse.mp3" />
                    </audio>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-md-3 btn-addShopCart-music">
                                <div class="music_btn" style="display:flex;justify-content: space-between;white-space: nowrap">
                                    <a href="#button" class="boxed-btn js-buy-tickets buy-album-btn" style=" margin-right: 10px;border-radius: 5px;" >buy album</a>
                                    <a href="#button" class="boxed-btn js-buy-tickets add-to-cart-btn" style=" margin-left: 10px;border-radius: 5px;" >add to cart</a>
                                </div>
                            </div>
            </div>
          </div>
        </div>
        <div class="row align-items-center justify-content-center mb-20">
          <div class="col-xl-10">
            <div class="row align-items-center">
              <div class="col-xl-9 col-md-9">
                <div class="music_field">
                  <div class="thumb">
                    <img src="img/music_man/3.png" alt="" />
                  </div>
                  <div class="audio_name">
                    <div class="name">
                      <h4>Frando Kally</h4>
                      <p>10 November, 2019</p>
                    </div>
                    <audio preload="auto" controls>
                      <source src="https://www.w3schools.com/html/horse.mp3" />
                    </audio>
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-md-3 btn-addShopCart-music">
                                <div class="music_btn" style="display:flex;justify-content: space-between;white-space: nowrap">
                                    <a href="#button" class="boxed-btn js-buy-tickets buy-album-btn" style=" margin-right: 10px;border-radius: 5px;" >buy album</a>
                                    <a href="#button" class="boxed-btn js-buy-tickets add-to-cart-btn" style=" margin-left: 10px;border-radius: 5px;" >add to cart</a>
                                </div>
                            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- music_area end  -->

    <!-- gallery -->
    <div class="gallery_area">
      <div class="container">
        <div class="row">
          <div class="col-xl-12">
            <div class="section_title text-center mb-65">
              <h3>Image Galleries</h3>
            </div>
          </div>
        </div>
        <div class="row grid">
          <div class="col-xl-5 col-lg-5 grid-item cat1 col-md-6">
            <div class="single-gallery mb-30">
              <div class="portfolio-img">
                <img src="img/gallery/1.png" alt="" />
              </div>
              <div class="gallery_hover">
                <a
                  class="popup-image"
                  href="img/gallery/1.png"
                  class="hover_inner"
                >
                  <i class="ti-plus"></i>
                </a>
              </div>
            </div>
          </div>
          <div class="col-xl-7 col-lg-7 grid-item cat3 cat4 col-md-6">
            <div class="single-gallery mb-30">
              <div class="portfolio-img">
                <img src="img/gallery/2.png" alt="" />
              </div>
              <div class="gallery_hover">
                <a
                  class="popup-image"
                  href="img/gallery/2.png"
                  class="hover_inner"
                >
                  <i class="ti-plus"></i>
                </a>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-lg-6 grid-item cat4 col-md-6">
            <div class="single-gallery mb-30">
              <div class="portfolio-img">
                <img src="img/gallery/3.png" alt="" />
              </div>
              <div class="gallery_hover">
                <a
                  class="popup-image"
                  href="img/gallery/3.png"
                  class="hover_inner"
                >
                  <i class="ti-plus"></i>
                </a>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-lg-6 grid-item cat2 col-md-6">
            <div class="single-gallery mb-30">
              <div class="portfolio-img">
                <img src="img/gallery/4.png" alt="" />
              </div>
              <div class="gallery_hover">
                <a
                  class="popup-image"
                  href="img/gallery/4.png"
                  class="hover_inner"
                >
                  <i class="ti-plus"></i>
                </a>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-lg-6 grid-item cat2 col-md-6">
            <div class="single-gallery mb-30">
              <div class="portfolio-img">
                <img src="img/gallery/5.png" alt="" />
              </div>
              <div class="gallery_hover">
                <a
                  class="popup-image"
                  href="img/gallery/5.png"
                  class="hover_inner"
                >
                  <i class="ti-plus"></i>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--/ gallery -->


    <!-- footer start -->
    <footer id="contact" class="footer">
      <div class="footer_top">
        <div class="container">
          <div class="row">
            <div class="col-xl-6 col-md-6">
              <div class="footer_widget">
                <p class="sub_text">
                  "Without music, life would be a mistake."
                  <br>
 Friedrich Nietzsche, Twilight of the Idols
                </p>
              </div>
            </div>
            <div class="col-xl-5 col-md-5 offset-xl-1">
              <div class="footer_widget">
                <h3 class="footer_title">Contact US</h3>
                <ul>
                  <li><a href="#">hehehe@fpt.edu.vn </a></li>
                  <li><a href="#">+0766504809 </a></li>
                  <li>
                    <a href="https://maps.app.goo.gl/P6mGqjvEMvMDtYbf9">FPT University</a>
                  </li>
                </ul>
                <div class="socail_links">
                  <ul>
                    <li>
                      <a href="https://www.facebook.com/groups/1538600073595443">
                        <i class="fa fa-facebook"></i>
                      </a>
                    </li>
                    <li>
                      <a href="https://www.google.com.vn/">
                        <i class="fa fa-google-plus"></i>
                      </a>
                    </li>
                    <li>
                      <a href="https://twitter.com/i/flow/login">
                        <i class="fa fa-twitter"></i>
                      </a>
                    </li>
                    <li>
                      <a href="https://www.youtube.com/">
                        <i class="fa fa-youtube-play"></i>
                      </a>
                    </li>
                    <li>
                      <a href="https://www.instagram.com/">
                        <i class="fa fa-instagram"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="copy-right_text">
        <div class="container">
          <div class="footer_border"></div>
          <div class="row">
            <div class="col-xl-7 col-md-6">
              <p class="copy_right">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;
                <script>
                  document.write(new Date().getFullYear());
                </script>
                All rights reserved | This Web is made with
                <i class="fa fa-heart-o" aria-hidden="true"></i> by
                <a href="https://www.facebook.com/quydn2003" target="_blank">NguyenDangQuy</a>
              </p>
            </div>
            <div class="col-xl-5 col-md-6">
              <div class="footer_links">
                <ul>
                  <li><a href="#">home</a></li>
                  <li><a href="#">about</a></li>
                  <li><a href="#">tracks</a></li>
                  <li><a href="#">blog</a></li>
                  <li><a href="#">contact</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!--/ footer end  -->

    <!-- link that opens popup -->
     <div class="modal js-modal">
        <div class="modal-container js-modal-container">
            <div class="modal-close js-modal-close">
                <i class="ti-close"></i>
            </div>
            <header class="modal-header">
                <i class="modal-heading-icon ti-bag"></i>
                Music
            </header>
            <div class="modal-body">
                <div class="modal-content">
                    <img src="./img/ad.jpg" alt="">
                    <a href="">nameSong:</a>
                    <a href="">nghe si:</a>
                    <a href="">Price = 300,000?</a>
                </div>
                <div class="modal-content" id="payment-button-container">
                    <button id="buy-tickets">
                        <a href="#" style="color: #fff;">Pay</a>
                        <i class="ti-check"></i>
                    </button>
                </div>
                <div class="modal-content" id="success-message" style="display: none;color: green;font-size: larger;">
                    Payment successful!
                </div>
            </div>

        </div>
    </div>
    
    
    <!-- JS here -->
    <script
      src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"
    ></script>
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/audioplayer.js"></script>
    <script src="js/scrollIt.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/nice-select.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/gijgo.min.js"></script>
    <script src="js/slick.min.js"></script>
    <!--contact js-->
    <script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>

    <script src="js/main.js"></script>

    <script>
      $(function () {
        $("audio").audioPlayer({});
      });
    </script>
    
      <script>
        const buyBtns = document.querySelectorAll('.js-buy-tickets');
        const modal = document.querySelector('.modal');
        const modalClose = document.querySelector('.js-modal-close');
        const modalContainer = document.querySelector('.js-modal-container');

        function showBuyTicket() {
            modal.classList.add('open');
        }

        function hideBuyTicket() {
            modal.classList.remove('open');
        }

        for (const buyBtn of buyBtns) {
            buyBtn.addEventListener('click', showBuyTicket);
        }

        modalClose.addEventListener('click', hideBuyTicket);

        modal.addEventListener('click', hideBuyTicket);

        modalContainer.addEventListener('click', function (event) {
            event.stopPropagation();
        });



    </script>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        var payButton = document.getElementById("buy-tickets");
        payButton.addEventListener("click", function (event) {
            event.preventDefault();
            payButton.style.display = "none";
            var successMessage = document.getElementById("success-message");
            successMessage.style.display = "block";
        });

        var modalCloseButton = document.querySelector(".js-modal-close");
        modalCloseButton.addEventListener("click", function () {
            resetModal();
        });

        function resetModal() {
            var payButton = document.getElementById("buy-tickets");
            payButton.style.display = "block";
            var successMessage = document.getElementById("success-message");
            successMessage.style.display = "none";
        }
    });
</script>

  </body>
</html>
