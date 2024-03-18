
<%-- 
Document   : adminBase
Created on : Mar 12, 2024, 4:43:50 PM
Author     : MSIGAMING
--%>

<%@page import="Controller.CartProvider"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="Model.Music"%>
<%@page import="DAO.MusicDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <section class="h-100 gradient-custom">
            <div class="container py-5">
                <div class="row d-flex justify-content-center my-4">
                    <div class="col-md-8">
                        <div class="card mb-4">
                            <div class="card-header py-3">
                                <h5 class="mb-0">Cart</h5>
                            </div>
                            <div class="card-body">
                                <%
                                    String listmusic = "";
                                    double total = 0;
                                    String[] musicIDs = {};
                                    Cookie cookies[] = request.getCookies();
                                    Music m = new Music();
                                    if (cookies != null) {
                                        for (Cookie cookie : cookies) {
                                            if (cookie.getName().equals("cookies")) {
                                                String cookieValue = cookie.getValue();
                                                if (!cookieValue.equals("")) {
                                                    musicIDs = cookieValue.split("-");
                                                    for (String musicID : musicIDs) {
                                                        m = MusicDAO.searchbyID(musicID);
                                                        total = total + m.getPrice();


                                %>
                                <!-- Single item -->
                                <div class="row" style="margin: 20px">
                                    <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                                        <!-- Image -->
                                        <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                                            <img src="<%=m.getLinkToImage()%>"
                                                 class="w-100" alt="<%=m.getMusicName()%>" />
                                            <a href="#!">
                                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.2)"></div>
                                            </a>
                                        </div>
                                        <!-- Image -->
                                    </div>

                                    <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                                        <!-- Data -->
                                        <p><strong><%=m.getMusicName()%></strong></p>
                                        <p>Artist: <%=m.getArtist()%></p>
                                        <form action="DeleteCart" method="post">
                                            <input type="hidden" name="musicIDtodelete" value="<%=m.getMusicID()%>">
                                            <input type="submit" class="btn btn-primary btn-sm me-1 mb-2" style="background-color: red" name="name" value="Delete">
                                        </form>
                                        <!-- Data -->
                                    </div>

                                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">

                                        <!-- Price -->
                                        <p class="text-start text-md-center">
                                            <strong><%=m.getPrice()%>$</strong>
                                        </p>
                                        <!-- Price -->
                                    </div>
                                </div>
                                <!-- Single item -->
                                <%
                                                    }
                                                } else {
                                                    total = 0;
                                                    m = null;
                                                }
                                            }
                                        }
                                    }
                                    for (String n : musicIDs) {
                                        listmusic=CartProvider.getNewCart(listmusic, n);
}
                                %>


                                <hr class="my-4" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4">
                            <div class="card-header py-3">
                                <h5 class="mb-0">Summary</h5>
                            </div>
                            <div class="card-body">
                                <ul class="list-group list-group-flush">
                                    <li
                                        class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                                        Products
                                        <span>$<%=total%></span>
                                    </li>
                                    <li class="list-group-item d-flex justify-content-between align-items-center px-0">
                                        Shipping
                                        <span>Gratis</span>
                                    </li>
                                    <li
                                        class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                                        <div>
                                            <strong>Total amount</strong>
                                            <strong>
                                                <p class="mb-0">(including VAT)</p>
                                            </strong>
                                        </div>
                                        <span><strong>$<%=total%></strong></span>
                                    </li>
                                </ul>
                                <%

                                %>
                                <!--<span style="color: red">Incorrect password</span>-->
                                <!--<span style="color: red">Empty Cart!</span>-->
                                <form action="TrackController" method="post">
                                    <input style="width: 100%; margin-bottom: 30px" type="password" name="userpassword">
                                    <input type="submit" name="name" class="btn btn-primary btn-lg btn-block" value="Go to checkout">
                                    <input type="hidden" name="items" value="<%=listmusic %>">
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>

</body>
</html>
