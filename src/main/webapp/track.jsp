<%-- 
    Document   : track
    Created on : Mar 18, 2024, 7:15:10 PM
    Author     : Hi
--%>

<%@page import="java.util.List"%>
<%@page import="DAO.MusicDAO"%>
<%@page import="DAO.UserMusicDao"%>
<%@page import="DAO.UserDao"%>
<%@page import="Model.Music"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Musico</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

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
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="js/audioplayer.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    </head>

    <body class="slider_bg_1 ">
        <!--[if lte IE 9]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
            <![endif]-->

        <!-- header-start -->
        <header>
            <div class="header-area ">
                <div id="sticky-header" class="main-header-area">
                    <div class="container-fluid">
                        <div class="header_bottom_border">
                            <div class="row align-items-center">
                                <div class="col-xl-3 col-lg-2">
                                    <div class="logo">
                                        <a href="index.html">
                                            <img src="img/logo.png" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-7">
                                    <div class="main-menu  d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">
                                                <li><a href="index.jsp">Home</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                                <ul class="Login-SignIn connection-page">
                                    <% if (session.getAttribute("usersession") == null) {%>
                                    <li><a href="./LoginHome.jsp" class="Login-Button">Login</a></li>
                                    <li><a href="./RegisterHome.jsp" class="Signin-Button">Register</a></li>
                                        <%} else {%>
                                    <span style="color: white" >Welcome:  ${usersession} </span>
                                    <% }
                                    %>
                                </ul>
                                <div class="custom-col-lg-3">
                                    <div class="Login-SignIn text-right">

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

        <div  >
            <div  class="container "style="margin-top: 100px;">
                  <%
                      String username = (String) request.getSession().getAttribute("usersession");
                      int id = UserDao.findID(username);
                      String music = UserMusicDao.findMusic(id);
                      ArrayList<Music> arm = new ArrayList<>();
                      String musics[] = music.split("-");
                      for (String um : musics) {
                          arm.add(MusicDAO.searchbyID(um));
                      }
                      int itemsPerPage = arm.size();
                      int attributesPerPage = 2;
                      int totalPages = (int) Math.ceil((double) itemsPerPage / attributesPerPage);
                      int currentPage = (request.getParameter("page") != null) ? Integer.parseInt(request.getParameter("page")) : 1;
                      int startIndex = (currentPage - 1) * attributesPerPage;
                      int endIndex = Math.min(startIndex + attributesPerPage, itemsPerPage);
                      List<Music> currentItems = arm.subList(startIndex, endIndex);
                  %>

                  <c:forEach var = "music" items="<%=currentItems%>">
                      <div class="music_field">
                      <div  class="thumb">
                          <img style="height: 148px;width: 148px" src="${music.getLinkToImage()}" alt="" />
                      </div>
                      <div class="audio_name">
                          <a style="color: white" href="${music.getLinkToSong()}" download="${music.getMusicName()}.mp3" class="download-link">Download</a>
                          <div class="name">
                              <h4 style="color : white; margin-top: 10px" >${music.getMusicName()}</h4>
                              <p style="color: #B3B3B3"> ${music.getArtist()}</p>
                          </div>
                          <audio preload="auto" controls download="${music.getLinkToSong()}">
                              <source src="${music.getLinkToSong()}" />
                          </audio>
                              
                      </div>
                  </div>
            </c:forEach> 
            <% if (totalPages > 1) { %>
            <div class="pagination" >
                <%-- Liên kết đến trang trước (nếu có) --%>
                <% if (currentPage > 1) {%>
                <a style="color: white" href="?page=<%= currentPage - 1%>">Previous</a>       <% } %>

                <%-- Hiển thị các liên kết đến các trang --%>
                <% for (int i = 1; i <= totalPages; i++) {%>
                <a style="color: white" href="?page=<%= i%>" <%= (i == currentPage) ? "class=\"active\"" : ""%>><%= i%></a>
                <% } %>

                <%-- Liên kết đến trang tiếp theo (nếu có) --%>
                <% if (currentPage < totalPages) {%>
                <a style="color: white" href="?page=<%= currentPage + 1%>">Next</a>
                <% } %>
            </div>
            <% }%>
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
            $('audio').audioPlayer({

            });
        });
    </script>
</body>

</html>
