<%-- 
    Document   : update-student-form.jsp
    Created on : Mar 19, 2024, 6:45:19 AM
    Author     : Manh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-
              8">

        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <h2>FPT University</h2>
            </div>
        </div>
        <div id="container">
            <h1>update-Music-form</h1>
            <hr>
            <form action="MusicController" method="GET">
                <input type="hidden" name="command" value="UPDATE">
                <input type="hidden" name="Musicid"
                       value="${Music.getMusicID()}">
                <table border="0">

                    <tbody>
                        <tr>
                            <td>ID:</td>
                            <td><input type="text" placeholder="${Music.getMusicID()}" readonly></td>
                        </tr>
                        <tr>
                            <td>Music's Name:</td>
                            <td><input type="text" name="mname"
                                       value="${Music.getMusicName()}"></td>
                        </tr>
                        <tr>
                            <td>Music's Artist</td>
                            <td><input type="text" name="martist"
                                       value="${Music.getArtist()}"></td>

                        </tr>
                        <tr>
                            <td>Link To Song </td>
                            <td><input type="text" name="linktosong"
                                       value="${Music.getLinkToSong()}"></td>
                        </tr>
                        <tr>
                            <td>Link To Image </td>
                            <td><input type="text" name="linktoimage"
                                       value="${Music.getLinkToImage()}"></td>
                        </tr>
                        <tr>
                            <td>Price </td>
                            <td><input type="text" name="price"
                                       value="${Music.getPrice()}"></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="UPDATE" class="save" /></td>
                            <td><a href="crud.jsp">Return To Music List</a></td>
                        </tr>
                    </tbody>
                </table>
            </form>

        </div>
    </body>
</html>
