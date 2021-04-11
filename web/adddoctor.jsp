<%-- 
    Document   : adddoctor
    Created on : 11 Apr, 2021, 5:11:08 PM
    Author     : aashu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.entities.Patient"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,200;0,400;1,300&display=swap"
              rel="stylesheet">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <style>
        .sidebar {
            margin: 0;
            padding: 0;
            width: 200px;
            background-color: #f1f1f1;
            position: fixed;
            height: 100%;
            overflow: auto;
        }

        /* Sidebar links */
        .sidebar a {
            display: block;
            color: black;
            padding: 16px;
            text-decoration: none;
        }

        /* Active/current link */
        .sidebar a.active {
            background-color: #4CAF50;
            color: white;
        }

        /* Links on mouse-over */
        .sidebar a:hover:not(.active) {
            background-color: #555;
            color: white;
        }

        /* Page content. The value of the margin-left property should match the value of the sidebar's width property */
        div.content {
            margin-left: 200px;
            padding: 1px 16px;
            height: 1000px;
        }

        /* On screens that are less than 700px wide, make the sidebar into a topbar */
        @media screen and (max-width: 700px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }
            .sidebar a {float: left;}
            div.content {margin-left: 0;}
        }

        /* On screens that are less than 400px, display the bar vertically, instead of horizontally */
        @media screen and (max-width: 400px) {
            .sidebar a {
                text-align: center;
                float: none;
            }
        }
    </style>
    <body style="background-image: url(image/img10.jpg); background-repeat: no-repeat;background-size: 100%">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand text-white"><span class="fa fa-user-circle"  style="color:red"></span></a>
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

                    <!--                    <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Dropdown
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            </div>
                                        </li>-->
                    <li class="nav-item">
                        <a class="nav-link" href="adddoctor.jsp"><span class="fa fa-plus-square " ></span> Add Doctor</a>
                    </li>
                </ul>
                <div>
                    <a class="btn btn-outline-success" href="LogoutServlet" role="button">Logout</a>
                </div>
            </div>
        </nav>
        <div>
            <div class="sidebar">
                <a class="active" href="#home">Home</a>
                <a href="#news">News</a>
                <a href="#contact">Contact</a>
                <a href="#about">About</a>
            </div>

            <!-- Page content -->
            <div class="content">
                <div class="container mt-5">

                    <div class="card">
                        <div class="card-header text-center mt-3">
                            <h2>Add Doctors</h2>
                        </div>

                        <div class="card-body">
                            <form action="DoctorServlet" method="post" id="reg-form">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail4">Name</label>
                                        <input type="text" required class="form-control" id="inputEmail4" placeholder="Name">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPassword4">Mobile</label>
                                        <input type="text" required class="form-control" id="inputPassword4" placeholder="Mobile">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="type">Specialization</label>
                                        <select id="type" required class="form-control">
                                            <option selected>Choose...</option>
                                            <option selected>Neurologist</option>
                                            <option>Rheumatologist</option>
                                            <option>Immunologist</option>
                                            <option>Nephrologist</option>
                                            <option>Surgeon</option>
                                            <option>Oncologist</option>
                                            <option>Urologist</option>
                                            <option>Radiologist</option>
                                            <option>Cardiologist</option>
                                            <option>Orthopedist</option>
                                            <option>Dentist</option>
                                            <option>ENT Specialist</option>
                                            <option>Anestheologists</option>
                                            <option>Gastroenterologist</option>
                                            <option>Other</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputEmail">Email</label>
                                        <input type="email" required class="form-control" id="inputEmail" placeholder="Email">
                                    </div>
                                </div>
                                 
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="inputAddress">Address</label>
                                        <input type="text" class="form-control" id="inputAddress" placeholder="Address">
                                    </div>
                                    <span><input type="hidden" name="user" id="user_doctor" value="doctor"></span>
                                    <div class="form-group col-md-6">
                                        <label for="password">Password</label>
                                        <input type="password" autocomplete="current-password" class="form-control" name="password" id="password" placeholder="Password" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
                                    </div>

                                </div>
                                 <div class="container text-center" id="loader" style="display: none;">
                                    <span class="fa fa-refresh fa-spin fa-1.5x"></span>Please Wait........
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Add</button>
                                </div>
                            </form>

                        </div>

                    </div>
                </div>

            </div>
        </div>



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
