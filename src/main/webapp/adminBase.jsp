<%-- 
    Document   : adminBase
    Created on : Mar 12, 2024, 4:43:50 PM
    Author     : MSIGAMING
--%>

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
    </head>
    <body>
        <%
            // Lấy danh sách các cookie từ yêu cầu

        %>
        <h4> We read the information like <%= favLang%>   
            <div class="cart-item">
                <table border="2">
                    <thead>
                        <tr>
                            <th>Music's Name</th>
                            <th>Music's Artist</th>
                            <th>Music's Price</th>
                        </tr>
                    </thead>
                    <c:forEach var="music" items="${arrMusic}">

                        <tbody>
                            <tr>
                                <td>${music.getMusicName()}</td>
                                <td>${music.getArtist()}</td>
                                <td>${music.getPrice()}</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>   
                        </c:forEach>
                    </table>                                        
                <a href="index.jsp">back</a>                   

                </div>
        </body>
    </html>
