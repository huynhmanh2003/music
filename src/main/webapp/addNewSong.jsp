<%-- 
    Document   : addNewSong
    Created on : Mar 20, 2024, 12:53:22 PM
    Author     : Manh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div id="wrapper">
            <div id="header">
                <h2>FPT University</h2>
            </div>
        </div>
        <div id="container">
            <h1>update-Music-form</h1>
            <hr>
            <form action="MusicController" method="post">
                <table border="0">
                    <tbody>
                        <tr>
                            <td>Music's Name:</td>
                            <td><input type="text" name="mname"></td>
                        </tr>
                        <tr>
                            <td>Music's Artist</td>
                            <td><input type="text" name="martist"></td>
                        </tr>
                        <tr>
                            <td>Link To Song </td>
                            <td><input type="text" name="linktosong"></td>
                        </tr>
                        <tr>
                            <td>Link To Image </td>
                            <td><input type="text" name="linktoimage"></td>
                        </tr>
                        <tr>
                            <td>Price </td>
                            <td><input type="text" name="price"></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="ADD" /></td>
                            <td><a href="crud.jsp">Return To Music List</a></td>
                        </tr>
                    </tbody>
                </table>
            </form>

        </div>
    </body>
</html>
