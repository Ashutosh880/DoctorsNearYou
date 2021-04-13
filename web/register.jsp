<%-- 
    Document   : register
    Created on : 10 Apr, 2021, 3:30:48 PM
    Author     : aashu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,200;0,400;1,300&display=swap"
              rel="stylesheet">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

    </head>
    <body style="background-image: url(image/img14.jpg); background-repeat: no-repeat;background-size: 100%">

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
                        <a class="nav-link disabled" href="login.jsp" title="can not access this page please login first"><span class="fa fa-plus-square " ></span> Get Appointment</a>
                    </li>
                </ul>
                <div>
                    <a class="btn btn-outline-success" href="login.jsp" role="button"><span class="fa fa-user-plus fa-spin" ></span> Login</a>
                </div>
            </div>
        </nav>


        <main class="d-flex align-items-center" style="height: 90vh">
            <div class="container col">
                <div class="col-md-4 offset-md-4">

                    <div class="card">
                        <div class="card-header text-center">
                            <spam class="fa fa-3x fa-user-circle-o"></spam>
                            <br>
                            <h3> Register Here</h3>
                        </div>
                        <div class="card-body ">
                            <form action="RegistrationServlet" method="POST" id="reg-form">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <span class="text-danger">*</span>
                                        <label for="name">Full Name</label>
                                        <input type="text" class="form-control" id="name" placeholder="Name" required="required" name="name">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <span class="text-danger">*</span>
                                        <label for="mobile">Mobile No.</label>
                                        <input type="tel" class="form-control" name="number" id="mobile" pattern="[6789][0-9]{9}" placeholder="10 digit number" required="required">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <span class="text-danger">*</span>
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" name="email" autocomplete="username" id="email" placeholder="Email" required="required">

                                </div>
                                <div class="form-group">
                                    <span class="text-danger">*</span>
                                    <label for="address">Address</label>

                                    <input type="text" class="form-control" name="address" id="address" placeholder="Address" required="required">
                                </div>
                                <span><input type="hidden" name="user" id="user_patient" value="patient"></span>
                                
                                <div>
                                    <div class="form-group">
                                        <span class="text-danger">*</span>
                                        <label for="password">Password</label>
                                        <input type="password" autocomplete="current-password" class="form-control" name="password" id="password" placeholder="Password" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
                                    </div>
                                </div>
                                <div class="container text-center" id="loader" style="display: none;">
                                    <span class="fa fa-refresh fa-spin fa-1.5x"></span>Please Wait........
                                </div>
                                <div class="text-center"> 
                                    <button type="submit" class="btn btn-outline-primary" id="submit">Submit</button> </div>
                            </form>
                        </div>
                        <div class="card-footer text-center">
                            <span>Already a user <a href="login.jsp">Login</a></span>
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
        <script src="js/myjs.js" type="text/javascript"></script>

        <script>
            $(document).ready(function () {
                console.log("loaded.....");
                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();

                    $('#submit').hide();
                    $('#loader').show();

                    let form = new FormData(this);
                    $.ajax({

                        url: "RegistrationServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, testStatus, jqXHR) {
                            console.log(data)

                            $('#submit').show();
                            $('#loader').hide();
                            if (data.trim() == 'done')
                            {
                                swal({
                                    title: "Patient Registered Succesfully",
                                    text: "Please Login",
                                    icon: "success",
                                    button: "OK",
                                }).then((value) => {
                                    window.location = "login.jsp"
                                });


                            }else
                            {
                                swal("Patient Already Exist Please Login ").then((value)=>
                                {
                                   window.location="login.jsp" 
                                });
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR)
                            swal({
                                title: "Something went Wrong",
                                text: "Please check",
                                icon: "success",
                                button: "OK",
                            })

                        },
                        processData: false,
                        contentType: false

                    });
                });
            }
            );

        </script>

    </body>
</html>
