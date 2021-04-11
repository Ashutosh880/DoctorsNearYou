<%-- 
    Document   : login
    Created on : 10 Apr, 2021, 2:59:18 PM
    Author     : aashu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,200;0,400;1,300&display=swap"
              rel="stylesheet">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body style="background-image: url(image/img14.jpg); background-repeat: no-repeat;background-size: 100%">

        <!--navbar started-->

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href=""><span class="fa fa-plus-circle"  style="color:red"></span> DoctorNearYou</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>


            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp"><span class="fa fa-home" ></span> Home <span class="sr-only">(current)</span></a>
                    </li>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="form.html">Sign in</a>
                    </li> -->
                    <li class="nav-item">
                        <a class="nav-link" href="contact.html"><span class="fa fa-address-book" ></span> Contact Us</a>
                    </li>
                    <!--                    <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Dropdown
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            </div>
                                        </li>-->
                    <li class="nav-item">
                        <a class="nav-link disabled" href="login.jsp" title="can not access this page please login first">Find Doctor</a>
                    </li>
                </ul>
                <div>
                    <a class="btn btn-outline-success" href="register.jsp" role="button"><span class="fa fa-user-plus fa-spin" ></span> SignUP</a>
                </div>
            </div>
        </nav>



        <!--form started-->

        <main class="d-flex align-items-center" style="height: 80vh">
            <div class="container">
                <div class="col-md-5 offset-md-4">

                    <div class="card">
                        <div class="card-header text-center">
                            <spam class="fa fa-3x fa-user-circle-o"></spam>
                            <br>
                            <h3> User Login</h3>
                        </div>
                        <div class="card-body ">
                            <form action="LoginServlet" method="post">
                                <div class="form-group">
                                    <span class="text-danger">*</span>
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="required">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <span class="text-danger">*</span>
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
                                </div>
                                <div class="form-group">
                                    <span class="text-danger">*</span>Type
                                    <span class="ml-5">
                                        <input type="radio" name="type" id="k" value="admin" required="required">
                                        <label for="k">Admin</label>
                                    </span>
                                    <span class="ml-2">
                                        <input type="radio" name="type" id="c" value="doctor" required="required">
                                        <label for="c">Doctor</label>
                                    </span>
                                    <span class="mt-2">
                                        <input type="radio" name="type" id="v" value="patient" required="required">
                                        <label for="v">Patient</label></span>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-outline-primary">Submit</button>
                                </div>

                            </form>
                        </div>
                        <div class="card-footer text-center">
                            <span>New User <a href="register.jsp">Create an Account</a></span>
                        </div>
                    </div>

                </div>
            </div>

        </main>








        <script
            src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
