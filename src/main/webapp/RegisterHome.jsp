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
    <section class="vh-100 bg-image" style="background-image: url('https://c.wallhere.com/photos/ac/10/1920x1080_px_music-1234085.jpg!d');">
        <div class="mask d-flex align-items-center h-100 gradient-custom-3">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                        <div class="card" style="border-radius: 15px;">
                            <div class="card-body p-5">
                                <h2 class="text-uppercase text-center mb-5">Create an account</h2>
                                <form>
                                    <div class="mb-4">
                                        <label for="formName" class="form-label">Your Name</label>
                                        <input type="text" id="formName" class="form-control form-control-lg">
                                    </div>
                                    <div class="mb-4">
                                        <label for="formEmail" class="form-label">Your Email</label>
                                        <input type="email" id="formEmail" class="form-control form-control-lg">
                                    </div>
                                    <div class="mb-4">
                                        <label for="formPassword" class="form-label">Password</label>
                                        <input type="password" id="formPassword" class="form-control form-control-lg">
                                    </div>
                                    <div class="mb-4">
                                        <label for="formRepeatPassword" class="form-label">Repeat your password</label>
                                        <input type="password" id="formRepeatPassword" class="form-control form-control-lg">
                                    </div>
                                    <div class="form-check mb-4">
                                        <input class="form-check-input" type="checkbox" value="" id="agreeTerms">
                                        <label class="form-check-label" for="agreeTerms">
                                            I agree all statements in <a href="#!" class="text-body"><u>Terms of service</u></a>
                                        </label>
                                    </div>
                                    <div class="d-grid">
                                        <button type="button" class="btn btn-success btn-lg">Register</button>
                                    </div>
                                    <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="#!" class="fw-bold text-body"><u>Login here</u></a></p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>

