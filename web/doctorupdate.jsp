<%-- 
    Document   : doctorupdate
    Created on : 24 Apr, 2021, 6:35:34 PM
    Author     : aashu
--%>

<%@page import="com.entities.Message"%>
<%@page import="com.entities.Doctor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Doctor doctor = (Doctor) session.getAttribute("currentDoctor");
    if (doctor == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

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
            <a class="navbar-brand text-white"><span class="fa fa-user-circle"  style="color:red"></span> <%=doctor.getName()%></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>


            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="doctor.jsp"><span class="fa fa-home" ></span> Home <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item">
                        <!--                        <a class="nav-link" href="searchhospital.jsp"><span class="fa fa-plus-square " ></span> Get Appointment</a>-->
                    </li>
                </ul>
                <div>
                    <a class="btn btn-outline-success" href="LogoutServlet" role="button">Logout</a>
                </div>
            </div>
        </nav>  

        <div class="card container mt-5">
            <div class="card-header text-center mt-3">
                <h2>Update Profile</h2>

            </div>

            <div class="card-body">

                <form id="reg-form" action="DoctorAdd" method="POST">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <span class="text-danger">*</span>

                            <label for="inputEmail5">Name</label>
                            <input type="text" required="required" name="name" class="form-control" value="<%=doctor.getName()%>" id="inputEmail5" placeholder="Name">
                        </div>
                        <div class="form-group col-md-6">
                            <span class="text-danger">*</span>
                            <label for="inputPassword4">Mobile</label>
                            <input type="text" name="number" required class="form-control" value="<%=doctor.getNumber()%>" id="inputPassword4" placeholder="Mobile">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <span class="text-danger">*</span>
                            <label for="type">Specialization</label>
                            <select id="type" required class="form-control" name="specialist">
                                <option selected value="Neurologist">Neurologist</option>
                                <option value="Rheumatologist">Rheumatologist</option>
                                <option value="Immunologist">Immunologist</option>
                                <option value="Nephrologist">Nephrologist</option>
                                <option value="Surgeon">Surgeon</option>
                                <option value="Oncologist">Oncologist</option>
                                <option value="Urologist">Urologist</option>
                                <option value="Radiologist">Radiologist</option>
                                <option value="Cardiologist">Cardiologist</option>
                                <option value="Orthopedist">Orthopedist</option>
                                <option value="Dentist">Dentist</option>
                                <option value="ENT Specialist">ENT Specialist</option>
                                <option value="Anestheologists">Anestheologists</option>
                                <option value="Gastroenterologist">Gastroenterologist</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <span class="text-danger">*</span>
                            <label for="inputEmail">Email</label>
                            <input type="email" name="email" autocomplete="username" class="form-control" id="inputEmail" value="<%=doctor.getEmail()%>" readonly>
                            <small id="emailHelp" class="form-text text-muted">old email should be applicable only</small>
                        </div>
                    </div>

                    <div class="form-row">

                        <div class="form-group col-md-6">

                            <span class="text-danger">*</span>                          
                            <label for="inputAddress">Hospital Address</label>
                            <input type="text" name="haddress" class="form-control" value="<%=doctor.getAddress()%>" id="inputAddress" placeholder="Hospital Address">
                        </div>

                        <!--                                    <span><input type="hidden" name="admin" id="admin" value=""></span>-->
                        <!--                                    <span><input type="hidden" name="user" id="user_doctor" value="doctor"></span>-->
                        <div class="form-group col-md-6">
                            <span class="text-danger">*</span>
                            <label for="password">Password</label>
                            <input type="password" autocomplete="current-password" value="<%=doctor.getPassword()%>" class="form-control" name="password" id="password" placeholder="Password" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">

                        </div>
                        <!--                                    <div class="form-group col-md-5">
                                                                <label for="hname">Hospital Name</label>
                                                                <select id="hname" name="h_name" required class="form-control">
                        
                                                                    <option selected value="Arihant Hospital">Arihant Hospital</option>
                                                                    <option value="Sai Hospital">Sai Hospital</option>
                                                                    <option value="Apollo Hospital">Apollo Hospital</option>
                                                                    <option value="Akash Hospital">Akash Hospital</option>
                                                                    <option value="Devi Ahilya Cancer Hospital">Devi Ahilya Cancer Hospital</option>
                                                                    <option value="Bapat Hospital">Bapat Hospital</option>
                                                                    <option value="Charak Hospital">Charak Hospital</option>
                                                                    <option value="Geetanjali Hospital">Geetanjali Hospital</option>
                                                                    <option value="Bombay Hospital">Bombay Hospital</option>
                                                                    <option value="CHL Hospital">CHL Hospital</option>
                                                                    <option value="Choithram Hospital">Choithram Hospital</option>
                                                                    <option value="Vishesh Hospital">Vishesh Hospital</option>
                                                                    <option value="Gokuldas Hospital">Gokuldas Hospital</option>
                                                                    <option value="Motherhood Hospital">Motherhood Hospital</option>
                        
                                                                </select>
                                                            </div>-->

                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <span class="text-danger">*</span>

                            <label for="inputEmail">Home Address</label>
                            <input type="text" required="required" value="<%=doctor.getHadd()%>" name="home" class="form-control" id="inputEmail" placeholder="Home Address">
                        </div>
                        <div class="form-group col-md-6">
                            <span class="text-danger">*</span>
                            <label for="input">City</label>
                            <input type="text" required name="city" value="<%=doctor.getCity()%>" class="form-control" id="input" placeholder="City">
                        </div>
                    </div>
                    <!--                                 <div class="container text-center" id="loader" style="display: none;">
                                                        <span class="fa fa-refresh fa-spin fa-1.5x"></span>Please Wait........
                              
                    </div>-->
                    <div class="container text-center" id="loader" style="display: none;">
                        <span class="fa fa-refresh fa-spin fa-1.5x"></span>Please Wait........
                    </div>
                    <div class="text-center"> 
                        <button type="submit" class="btn btn-outline-primary" id="submit">Submit</button> </div>
                </form>

            </div>

        </div>



        <script
            src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>                                
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                console.log("loaded.....")

                $('#reg-form').on('submit', function (event) {

                    event.preventDefault();

                    let form = new FormData(this);

                    $("#submit").hide();
                    $("#loader").show();
                    $.ajax({

                        url: "DoctorAdd",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)

                            $("#submit").show();
                            $("#loader").hide();

                            swal({
                                    title: "Profile Updated Succesfully",
                                    text: "Updated Data Will Show After Login Again",
                                    icon: "success",
                                    button: "OK",
                                }).then((value) => {
                                    window.location = "doctor.jsp"
                                });

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR)
                            $("#submit").show();
                            $("#loader").hide();
                            
                            swal({
                                    title: "Something Went Wrong",
                                    text: "Please Try Again",
                                    icon: "danger",
                                    button: "OK",
                                }).then((value) => {
                                    window.location = "doctorupdate.jsp"
                                });
                            
                        },
                        processData: false,
                        contentType: false
                    });



                });



            });
        </script>
    </body>
</html>
