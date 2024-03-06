<%-- Document : SingUpDemo Created on : Mar 5, 2024, 9:32:27 PM Author : Manh
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="./css/reset.css" />
    <link rel="stylesheet" href="./css/style.css" />
    <link rel="stylesheet" href="./css/loginstyle.css" />
    <link rel="stylesheet" href="./bootstrap/bootstrap.css" />
  </head>
  <body>
    <div class="login">
      <div
        class="bg-success p-2 text-dark bg-opacity-50 container-lg shadow-lg p-3 mb-5 bg-body rounded"
      >
        <div class="login-content align-items-center row">
          <div class="notif col-lg">
            <h1>Welcome to website</h1>
            <p>
              Welcome to our music haven! We are thrilled to have you join us on
              this musical journey. Whether you're a melody enthusiast or a
              rhythm aficionado, our web platform is designed to cater to all
              music lovers. Dive into a world where notes and beats come
              together to create a symphony of emotions.
            </p>
          </div>
          <div class="col-lg login-form">
            <div class="login-from-content">
              <h2>User Login</h2>
              <form action="login.java" method="post">
                <div class="username">
                  <img src="" alt="" />
                  <input
                    type="text"
                    name="userName"
                    placeholder="UserName"
                    class="userform shadow p-3 mb-5 bg-body-tertiary rounded"
                  />
                </div>
                <div class="Password">
                  <img src="" alt="" />
                  <input
                    type="password"
                    name="userPassword"
                    placeholder="UserPassword"
                    class="userform2 shadow p-3 mb-5 bg-body-tertiary rounded"
                  />
                </div>
                <div class="action">
                  <div class="checkbox">
                    <label for="mycheckbox">Remember?</label>
                    <input type="checkbox" name="remember" id="mycheckbox" />
                  </div>
                  <div class="sign-up-nav">
                    <label for="">You don't have Acount?</label>
                    <a href="#" class="sign-up">Sign-up</a>
                  </div>
                  <div class="login-btn">
                    <button type="button" class="btn btn-success">Login</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
