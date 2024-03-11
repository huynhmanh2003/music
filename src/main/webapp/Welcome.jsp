<%-- Document : Welcome Created on : Mar 10, 2024, 6:39:17 PM Author : Manh --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register Form</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="./css/register.css" />

    <style>
      .welcome {
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        width: 550px;
        height: 300px;
        background-color: rgba(218, 139, 174, 0.59);
        color: white;
      }
      .welcome h1 {
        text-align: center;
        font-size: 2.5em;
      }
      .welcome p {
        text-align: center;
        font-size: 1.5em;
      }
      .content-welcome {
        display: flex;
        justify-content: center;
        align-items: center;
      }
      .button {
        margin-left: 25%;
        margin-top: 30px;
        width: 50%;
        height: 40px;
        background-color: white;
        display: flex;
        justify-content: center;
        border-radius: 22px;
        align-items: center;
        background: rgb(162, 8, 122);
        background: linear-gradient(
          279deg,
          rgba(162, 8, 122, 1) 12%,
          rgba(110, 6, 76, 1) 47%,
          rgba(117, 0, 0, 1) 88%
        );
      }
      .button a {
        text-align: center;
        width: 100%;
        color: white;
        text-decoration: none;
      }
      .button:hover {
        background: rgb(117, 0, 0);
        background: linear-gradient(
          279deg,
          rgba(117, 0, 0, 1) 12%,
          rgba(110, 6, 76, 1) 47%,
          rgba(162, 8, 122, 1) 88%
        );
      }
    </style>
  </head>
  <body>
    <section
      class="vh-100 bg-image content-welcome"
      style="
        background-image: url('https://c.wallhere.com/photos/ac/10/1920x1080_px_music-1234085.jpg!d');
        background-size: cover; /* Đặt hình nền để cover toàn bộ trang */
        background-repeat: no-repeat;
      "
    >
      <div class="welcome">
        <h1>Welcome:</h1>
        <p>
          Welcome to Color Music. Hope you will have a great experience here
        </p>
        <div class="button">
          <a href="LoginHome.jsp">Continue</a>
        </div>
      </div>
    </section>
  </body>
</html>
