<%-- 
    Document   : crud
    Created on : Mar 20, 2024, 10:31:01 AM
    Author     : Manh
--%>

<%@page import="Model.Music"%>
<%@page import="DAO.MusicDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link rel="stylesheet" href="./css/bootstrap.min.css" />
    </head>
    <style>
        .table-crud th,
        td {
            color: white;
        }
    </style>
    <body
        style="
        height: 900px;
        background-image: url(img/banner/contact.png);
        background-repeat: no-repeat;
        background-size: cover;
        "
        >
        <header style="width: 100%; height: 100px; background-color: black">
            <h1 style="color: white; text-align: center; padding-top: 25px">
                This Is Crud
            </h1>
        </header>
        <div class="table-crud" style="background-color: rgba(46, 171, 248, 0.71)">
            <table class="table table-borderless">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Music's Name</th>
                        <th>Link To Image</th>
                        <th>Link to Song</th>
                        <th>Artist</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        MusicDAO md = new MusicDAO();
                        ArrayList<Music> arr = md.getMusic();
                    %>
                    <c:forEach var="music" items="<%=arr%>">
                        <c:url var="tempLink" value="MusicController">
                            <c:param name="command" value="LOAD"
                                     ></c:param>
                            <c:param name="musicID" value="${music.getMusicID()}"
                                     ></c:param>
                        </c:url>
                        <tr>
                            <td>${music.getMusicID() }</td>
                            <td>${music.getMusicName()}</td>
                            <td>${music.getLinkToImage()}</td>
                            <td>${music.getLinkToSong()}</td>
                            <td>${music.getArtist()}</td>
                            <td>${music.getPrice()}</td>
                            <td>
                                <a href="${tempLink}">
                                    <img style="height: 32px" src="img/pen.png" alt="" />
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

        </div>
        <a href="addNewSong.jsp">Add New Song</a>
    </body>
</html>

