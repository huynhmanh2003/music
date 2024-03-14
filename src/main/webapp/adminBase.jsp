<%-- 
    Document   : adminBase
    Created on : Mar 12, 2024, 4:43:50 PM
    Author     : MSIGAMING
--%>

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
            String favLang = "N/A";
            Cookie[] theCookies = request.getCookies();
            if (theCookies != null) {
                for (Cookie tempCookie : theCookies) {
                    if (tempCookie.getName().equals("musicID")) {
                        favLang = tempCookie.getValue();
                        break;
                    }
                }
            }
        %>
        <h4> We read the information like <%= favLang%>                                                                                                                                                                                                                                 
    </body>
</html>
