<%-- Document : SingUpDemo Created on : Mar 5, 2024, 9:32:27 PM Author : Manh
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Đăng Nhập</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <link rel="stylesheet" href="./css/login.css">
</head>
<body>
  <section class="h-100 gradient-form" style="background-image: url('https://c.wallhere.com/photos/ac/10/1920x1080_px_music-1234085.jpg!d');    background-size: cover; /* Đặt hình nền để cover toàn bộ trang */
    background-repeat: no-repeat; ">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-xl-10">
          <div class="card rounded-3 text-black">
            <div class="row g-0">
              <div class="col-lg-6">
                <div class="card-body p-md-5 mx-md-4">
  
                  <div class="text-center">
                      <img src="./img/Music.png"
                      style="width: 185px;" alt="logo">
                    <h4 class="mt-1 mb-5 pb-1">We are The Color Team</h4>
                  </div>
  
                  <form action="SignIn" method="POST" onsubmit="return validateForm(event)">
                    <div class="form-group">
                      <label for="username">Username</label>
                      <input type="text" id="username" name="username" class="form-control" placeholder="Phone number or email address" />
                    </div>
  
                    <div class="form-group">
                      <label for="password">Password</label>
                      <input type="password" id="password" name="password" class="form-control" />
                    </div>
                      <%
                          if(request.getAttribute("sign")=="true"){
                          %><div id="error-message" style="color: red;">Wrong Username or Password</div><%
                          }
                      %>
                      
                    <div class="d-flex align-items-center justify-content-center pb-4">
                      <div class="mr-2">Don't have an account?</div>
                      <button type="button" class="btn btn-outline-danger "><a  class="regis-btn" style="text-decoration: none; " href="./RegisterHome.jsp">Create new</a></button>
                    </div>
                      <div style="display: flex; justify-content: center" class="button-input">
                          <input style="background-color: #ee7724; color: #FFF" type="submit" name="submit-btn" value="Login" class="btn  input-btn ">
                      </div>
                  </form>
  <script>
                    function validateForm(event) {
                      var username = document.getElementById("username").value;
                      var password = document.getElementById("password").value;
                      var errorMessage = document.getElementById("error-message");

                      // Xóa thông báo lỗi trước mỗi lần kiểm tra
                      errorMessage.innerHTML = '';

                      if (username.trim() === '' || password.trim() === '') {
                        errorMessage.innerHTML = "Please enter both username and password.";
                        return false; // Prevent form submission
                      }
                    return true; // Allow form submission
                    }
                  </script>
                </div>
              </div>
              <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                  <h4 class="mb-4">We are more than just a company</h4>
                  <p class="small mb-0">From catchy tunes to profound compositions, Web Music has been a reliable companion, guiding me to the wonders of this life. Sometimes, when my soul is quiet, the music on your website serves as a powerful encouragement, helping me overcome challenges and rediscover faith.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section
  

</body>
</html>

  </body>
</html>
