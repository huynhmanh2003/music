<%@page import="DAO.UserDao"%>
<%@page import="java.util.List"%>
<%@page import="Model.Music"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.MusicDAO"%>
<%@page import="Filter.LoginCheck"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <link rel="stylesheet" href="./css/styleshit.css"/>
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
                                                <li><a href="UserMusicController">tracks</a></li>
                                                    <%
                                                        if (request.getSession() != null && session.getAttribute("usersession") != null) {
                                                            if (UserDao.findrole(session.getAttribute("usersession").toString()).equals("Admin")) {
                                                    %>
                                                <li><a href="crud.jsp">Control</a></li>
                                                    <%
                                                        }
                                                        }
                                                    %>
                                                <li><a href="#contact">Contact</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                                <div class="custom-col-lg-3">
                                    <div class="Login-SignIn text-right">
                                        <ul class="Login-SignIn connection-page">
                                            <%
                                                String size = "";
                                                Cookie cookies[] = request.getCookies();
                                                if (cookies != null) {
                                                    for (Cookie cookie : cookies) {
                                                        if (cookie.getName().equals("cookies")) {
                                                            String cookieValue = cookie.getValue();
                                                            if (!cookieValue.equals("")) {
                                                                String[] musicIDs = cookieValue.split("-");
                                                                size = "" + musicIDs.length;
                                                            } else {
                                                                size = "0";
                                                            }
                                                        }
                                                    }
                                                }
                                                if (session.getAttribute("usersession") == null || session.getAttribute("passwordsession") == null) {%>
                                            <li><a href="./LoginHome.jsp" class="Login-Button">Login</a></li>
                                            <li><a href="./RegisterHome.jsp" class="Signin-Button">Register</a></li>
                                                <%} else {%>
                                        </ul>
                                        <div class="nav-bar" style="display: flex;
                                             justify-content: space-between;
                                             align-items: center" >
                                            <span style="color: white" >Welcome:  ${usersession} </span>
                                            <a href="CartPage.jsp" class="Signin-Button">
                                                <img style="width: 30px; height: 30px;" src="img/empty-cart.png" alt="alt"/>
                                                <span style="color: white">(<%=size%>)</span>
                                            </a>

                                            <a href="./signOut" class="Signin-Button" style="color: white"> Sign Out</a>
                                        </div>
                                        <%}
                                        %>
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
                                    <div class="thumb" >
                                        <img style="width: 148px;height: 148px" src="img/MusicImg/godmusic.jpg" alt="" />
                                    </div>
                                    <div class="audio_name">
                                        <div class="name">
                                            <h4>Smells Like Teen Spirit</h4>
                                            <p>Nirvana</p>
                                        </div>
                                        <audio preload="auto" controls>
                                            <source src="Musicsource/god.mp3" />
                                        </audio>
                                    </div>
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
                            <img class="img-fluid" src="img/MusicImg/artist god.jpg" alt="" />
                        </div>
                    </div>
                    <div class="col-xl-7 col-md-6">
                        <div class="about_info">
                            <h3>Kurt Cobain</h3>
                            <p>
                                No one is afraid of heights, they're afraid of falling down. No one is afraid of saying I love you, they're afraid of the answer.
                            </p>
                            <div class="signature">
                                <img style="width: 148px;height: 60px" src="img/MusicImg/SignKurt.png" alt="" />
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
                                <img style="height: 100%" src="img/MusicImg/COFFE BEANS.jpg" alt="" />
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
                                <img style="height: 100%" src="img/MusicImg/All The Stars.jpg" alt="" />
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


                <%
                    MusicDAO m1 = new MusicDAO();
                    ArrayList<Music> arr = m1.getMusic();
                    int itemsPerPage = arr.size();
                    int attributesPerPage = 3;
                    int totalPages = (int) Math.ceil((double) itemsPerPage / attributesPerPage);
                    int currentPage = (request.getParameter("page") != null) ? Integer.parseInt(request.getParameter("page")) : 1;
                    int startIndex = (currentPage - 1) * attributesPerPage;
                    int endIndex = Math.min(startIndex + attributesPerPage, itemsPerPage);
                    List<Music> currentItems = arr.subList(startIndex, endIndex);
                %>

                <c:forEach var = "music" items="<%=currentItems%>">
                    <div class="row align-items-center justify-content-center mb-20">
                        <div class="col-xl-10">
                            <div class="row align-items-center">
                                <div class="col-xl-9 col-md-9">
                                    <div class="music_field">
                                        <div  class="thumb">
                                            <img style="height: 148px;width: 148px" src="${music.getLinkToImage()}" alt="" />
                                        </div>
                                        <div class="audio_name">
                                            <div class="name">
                                                <h4>${music.getMusicName()}</h4>
                                                <p> ${music.getArtist()}</p>
                                            </div>
                                            <audio preload="auto" controls>
                                                <source src="${music.getLinkToSong()}" />
                                            </audio>
                                        </div>
                                    </div>
                                </div>
                                <div id="here" class="col-xl-3 col-md-3 btn-addShopCart-music">
                                    <div class="music_btn" style="display:flex;justify-content: space-between;white-space: nowrap">
                                        <%
                                            if (session.getAttribute("usersession") == null) {
                                        %>
                                        <a href="LoginHome.jsp" class="boxed-btn js-buy-tickets buy-album-btn">Buy Album</a>
                                        <%
                                        } else {
                                        %>
                                        <a href="#button" class="boxed-btn js-buy-tickets buy-album-btn" 
                                           data-music-song="${music.getMusicName()}"
                                           data-music-artist="${music.getArtist()}"
                                           data-music-price="${music.getPrice()}"
                                           data-music-pass="${session.getAttribute("passwordsession")}";
                                           style=" margin-right: 10px;border-radius: 5px;"
                                           >Buy Album</a>

                                        <%}%>

                                        <form action="Buy" method="post">
                                            <input type="hidden" name="musicID" value="${music.getMusicID()}">
                                            <input  type="submit" class="boxed-btn  add-to-cart-btn"style=" margin-left: 10px;border-radius: 5px;" name="name" value="add to cart">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach> 
                <% if (totalPages > 1) { %>
                <div class="pagination" style="display: flex;justify-content: space-around;padding-top: 30px;" >
                    <%-- Liên k?t ??n trang tr??c (n?u có) --%>
                    <% if (currentPage > 1) {%>
                    <a style="color: black;    font-size: x-large;" href="?page=<%= currentPage - 1%>">Previous</a>       <% } %>

                    <%-- Hi?n th? các liên k?t ??n các trang --%>
                    <% for (int i = 1; i <= totalPages; i++) {%>
                    <a style="color: black;    font-size: x-large;" href="?page=<%= i%>" <%= (i == currentPage) ? "class=\"active\"" : ""%>><%= i%></a>
                    <% } %>

                    <%-- Liên k?t ??n trang ti?p theo (n?u có) --%>
                    <% if (currentPage < totalPages) {%>
                    <a style="color: black;    font-size: x-large;" href="?page=<%= currentPage + 1%>">Next</a>
                    <% } %>
                </div>
                <% }%>
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
                                            <a href="#">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-google-plus"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-youtube-play"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
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
                                    document.write(new Date().getFullYear());</script>
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
                        <img src="./img/Music.png" alt="">
                        <span id="modal-nameSong"></span>
                        <span id="modal-artist"></span>
                        <span id="modal-price"></span>  
                    </div>
                    <div class="modal-content" id="payment-button-container">
                        <label for="ticket-email" class="modal-label">
                            <i class="ti-key"></i>
                            YourPassword
                        </label>
                        <%
                            String pass = (String) session.getAttribute("passwordsession");
                        %>
                        <input data-music-pass1 ="<%=pass%>" id="ticket-email" type="password" class="modal-input" placeholder="Enter YourPassword...">

                        <button id="buy-tickets">
                            <a href="#" style="color: #fff;">Pay</a>
                            <i class="ti-check"></i>
                        </button>
                    </div>
                    <div class="modal-content" id="success-message" style="display: none;color: green;font-size: larger;">
                        Payment Successful!
                        <i class="ti-face-smile"></i>
                    </div>
                </div>

            </div>
        </div>

        <!-- link that opens popup -->

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
            const modalSongName = document.querySelector('#modal-nameSong');
            const modalArtist = document.querySelector('#modal-artist');
            const modalPrice = document.querySelector('#modal-price');


            function showBuyTicket() {
                const musicame = this.getAttribute('data-music-song');
                const musicartist = this.getAttribute('data-music-artist');
                const musicprice = this.getAttribute('data-music-price');

                modalSongName.innerHTML = 'Sone Name: ' + musicame;
                modalArtist.innerHTML = 'Artist: ' + musicartist;
                modalPrice.innerHTML = 'Price ' + musicprice;
                modal.classList.add('open');
            }

            function hideBuyTicket() {
                modal.classList.remove('open')
            }

            for (const buyBtn of buyBtns) {
                buyBtn.addEventListener('click', showBuyTicket)
            }

            modalClose.addEventListener('click', hideBuyTicket)

            modal.addEventListener('click', hideBuyTicket)

            modalContainer.addEventListener('click', function (event) {
                event.stopPropagation()
            })



        </script>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var payButton = document.getElementById("buy-tickets");
                payButton.addEventListener("click", function (event) {
                    event.preventDefault();

                    var passwordField = document.getElementById("ticket-email");
                    var musicpass = passwordField.getAttribute('data-music-pass1');

                    var successMessage = document.getElementById("success-message");

                    // Ki?m tra m?t kh?u
                    if (passwordField.value !== musicpass) {
                        alert("Incorrect Password");
                    } else {
                        payButton.style.display = "none";
                        successMessage.style.display = "block";
                    }
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

                    var passwordField = document.getElementById("ticket-email");
                    passwordField.value = "";
                }
            });
        </script>
    </body>
</html>