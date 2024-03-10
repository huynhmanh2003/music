<%-- 
    Document   : RegisterHome
    Created on : Mar 6, 2024, 8:36:48 PM
    Author     : Hi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register Form</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="./css/register.css">
    </head>
    <body>
        <section class="vh-100 bg-image" style="background-image: url('https://c.wallhere.com/photos/ac/10/1920x1080_px_music-1234085.jpg!d');    background-size: cover; /* Đặt hình nền để cover toàn bộ trang */
                 background-repeat: no-repeat;">
            <div class="mask d-flex align-items-center h-100 gradient-custom-3">
                <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="card" style="border-radius: 15px;">
                                <div class="card-body p-5">
                                    <h2 class="text-uppercase text-center mb-5" style="color: #FFF">Create an account</h2>
                                    <form action="Register" method="POST" onsubmit="return validateForm1(event)">
                                        <div class="mb-4">
                                            <label for="formFName" class="form-label" style="color: #FFF">Your First Name </label>
                                            <input type="text" id="formFName" name="userFirstName" class="form-control form-control-lg">
                                            <span id="error-message1" style="color: #0d6efd"></span>
                                        </div>
                                        <div class="mb-4">
                                            <label for="formLname" class="form-label " style="color: #FFF"">Your Last Name</label>
                                            <input type="text" id="formLname" name="userLastName" class="form-control form-control-lg">
                                            <span id="error-message2" style="color: #0d6efd"></span>
                                        </div>
                                        <div class="mb-4">
                                            <label for="formName" class="form-label" style="color: #FFF">User Name</label>
                                            <input type="text" id="formName" name="userName" class="form-control form-control-lg">
                                            <span id="error-message3" style="color: #0d6efd"></span>
                                        </div>
                                        <div class="mb-4">
                                            <label for="formPassword" class="form-label" style="color: #FFF" >Password</label>
                                            <input type="password" id="formPassword" name="userPassword" class="form-control form-control-lg">
                                            <span id="error-message4" style="color: #0d6efd"></span>
                                        </div>
                                        <div class="form-check mb-4">
                                            <input class="form-check-input" type="checkbox" value=""  id="agreeTerms">
                                            <label class="form-check-label"style="color: #FFF" for="agreeTerms">
                                                I agree all statements in <a href="#!" class="text-body"><u style="color: #FFF">Terms of service</u></a>
                                            </label>

                                        </div>
                                        <div class="d-grid">
                                            <input type="submit" class="btn btn-success btn-lg"style="color: #FFF" name="name" value="Register">
                                        </div>
                                        <p class="text-center text-muted mt-5 mb-0" style="color: #FFF">Have already an account? <a href="./LoginHome.jsp" class="fw-bold text-body"style="color: #FFF"><u style="color: #FFF">Login here</u></a></p>
                                    </form>
<script>
    function validateForm1(event) {
        var fname = document.getElementById("formFName").value;
        var lname = document.getElementById("formLname").value;
        var username = document.getElementById("formName").value; // Sửa ID ở đây
        var password = document.getElementById("formPassword").value; // Sửa ID ở đây
        var errorMessage1 = document.getElementById("error-message1");
        var errorMessage2 = document.getElementById("error-message2");
        var errorMessage3 = document.getElementById("error-message3");
        var errorMessage4 = document.getElementById("error-message4");

        // Xóa thông báo lỗi trước mỗi lần kiểm tra
        errorMessage1.innerHTML = '';
        errorMessage2.innerHTML = '';
        errorMessage3.innerHTML = '';
        errorMessage4.innerHTML = '';

        if (fname.trim() === '') {
            errorMessage1.innerHTML = "Cannot Be Null";
        }
        if (lname.trim() === '') {
            errorMessage2.innerHTML = "Cannot Be Null";
        }
        if (username.trim() === '') {
            errorMessage3.innerHTML = "Cannot Be Null";
        }
        if (password.trim() === '') {
            errorMessage4.innerHTML = "Cannot Be Null";
        }

        if (username.trim() === '' || password.trim() === '' || fname.trim() === '' || lname.trim() === '') {
            event.preventDefault(); // Ngăn chặn việc submit form
            return false;
        }
        return true; // Cho phép submit form
    }
</script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>

