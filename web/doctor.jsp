<%@page import="com.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.entities.Doctor"%>
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
        <title>Doctor Page</title>
        <title>Patient Page</title>


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
    <style>
            body {
                background-color: #f9f9fa
            }

            .padding {
                padding: 3rem !important
            }

            .user-card-full {
                overflow: hidden
            }

            .card {
                border-radius: 5px;
                -webkit-box-shadow: 0 1px 20px 0 rgba(69, 90, 100, 0.08);
                box-shadow: 0 1px 20px 0 rgba(69, 90, 100, 0.08);
                border: none;
                margin-bottom: 30px
            }

            .m-r-0 {
                margin-right: 0px
            }

            .m-l-0 {
                margin-left: 0px
            }

            .user-card-full .user-profile {
                border-radius: 5px 0 0 5px
            }

            .bg-c-lite-green {
                background: -webkit-gradient(linear, left top, right top, from(#f29263), to(#ee5a6f));
                background: linear-gradient(to right, #ee5a6f, #f29263)
            }

            .user-profile {
                padding: 20px 0
            }

            .card-block {
                padding: 1.25rem
            }

            .m-b-25 {
                margin-bottom: 25px
            }

            .img-radius {
                border-radius: 5px
            }

            h6 {
                font-size: 14px
            }

            .card .card-block p {
                line-height: 25px
            }

            @media only screen and (min-width: 1400px) {
                p {
                    font-size: 14px
                }
            }

            .card-block {
                padding: 1.25rem
            }

            .b-b-default {
                border-bottom: 1px solid #e0e0e0
            }

            .m-b-20 {
                margin-bottom: 20px
            }

            .p-b-5 {
                padding-bottom: 5px !important
            }

            .card .card-block p {
                line-height: 25px
            }

            .m-b-10 {
                margin-bottom: 10px
            }

            .text-muted {
                color: #919aa3 !important
            }

            .b-b-default {
                border-bottom: 1px solid #e0e0e0
            }

            .f-w-600 {
                font-weight: 600
            }

            .m-b-20 {
                margin-bottom: 20px
            }

            .m-t-40 {
                margin-top: 20px
            }

            .p-b-5 {
                padding-bottom: 5px !important
            }

            .m-b-10 {
                margin-bottom: 10px
            }

            .m-t-40 {
                margin-top: 20px
            }

            .user-card-full .social-link li {
                display: inline-block
            }

            .user-card-full .social-link li a {
                font-size: 20px;
                margin: 0 10px 0 0;
                -webkit-transition: all 0.3s ease-in-out;
                transition: all 0.3s ease-in-out
            }
        </style>
    <body style="background-image: url(image/img10.jpg)">


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

        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Set Weekend Availability</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="SetTime" method="POST">
                        <div class="modal-body form-control">
                            <div class="form-row ml-5">
                                <div class="form-group">
                                    <label for="app">Starting Time</label>

                                    <input type="time" id="app"
                                           required name="stime">
                                </div>
                                <div class=" form-group ml-3">
                                    <label for="ap">Ending Time</label>

                                    <input type="time" id="ap"
                                           required name="etime">
                                </div>
                            </div>
                            <!--                                <div class="mt-2 col-md-7 offset-md-2 text-center">
                                                                <label for="appt">Select Day</label>
                                                                <select name="day" id="appt" required class="form-control">
                                                                    <option value="Monday">Monday</option>
                                                                    <option value="Tuesday">Tuesday</option>
                                                                    <option value="Wednesday">Wednesday</option>
                                                                    <option value="Thursday">Thursday</option>
                                                                    <option value="Friday">Friday</option>
                                                                    <option value="Saturday">Saturday</option>
                                                                    <option value="Sunday">Sunday</option>
                                                                </select>
                                                            </div>-->
                            <span>
                                <input type="hidden" name="demail" value="<%=doctor.getEmail()%>">
                            </span>
                            <div class="mt-4 text-center">
                                <button type="submit" class="btn btn-primary ">Set</button>
                            </div>
                        </div>

                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div>

                            
                            <div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Update Weekend Availability</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="UpdateTime" method="POST">
                        <div class="modal-body form-control">
                            <div class="form-row ml-5">
                                <div class="form-group">
                                    <label for="app">Starting Time</label>

                                    <input type="time" id="app"
                                           required name="stime">
                                </div>
                                <div class=" form-group ml-3">
                                    <label for="ap">Ending Time</label>

                                    <input type="time" id="ap"
                                           required name="etime">
                                </div>
                            </div>
                            <!--                                <div class="mt-2 col-md-7 offset-md-2 text-center">
                                                                <label for="appt">Select Day</label>
                                                                <select name="day" id="appt" required class="form-control">
                                                                    <option value="Monday">Monday</option>
                                                                    <option value="Tuesday">Tuesday</option>
                                                                    <option value="Wednesday">Wednesday</option>
                                                                    <option value="Thursday">Thursday</option>
                                                                    <option value="Friday">Friday</option>
                                                                    <option value="Saturday">Saturday</option>
                                                                    <option value="Sunday">Sunday</option>
                                                                </select>
                                                            </div>-->
                            <span>
                                <input type="hidden" name="demail" value="<%=doctor.getEmail()%>">
                            </span>
                            <div class="mt-4 text-center">
                                <button type="submit" class="btn btn-primary ">Save changes</button>
                            </div>
                        </div>

                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div>
                            
                            
                            
        <div>

            <div class="sidebar bg-secondary">
                <a href="doctorupdate.jsp"><p class="text-white">Update Profile</p></a>
                <a data-toggle="modal" data-target="#exampleModalCenter"><p class="text-white">Set Availability</p></a>
                <a data-toggle="modal" data-target="#exampleModalCenter1"><p class="text-white">Update Availability</p></a>
                <!--<a href="#about"><p class="text-white">See Doctor Patient</p></a>-->
            </div>

            <!-- Page content -->
            <div class="content">

                 <%
                    Message m = (Message) session.getAttribute("msg");
                    if (m != null) {
                %>
                <div class="alert <%= m.getCssClass()%>" role="alert">
                    <%= m.getContent()%>
                </div>
                <%
                        session.removeAttribute("msg");
                    }
                %>


                
                <div class="padding col-md mt-5">
                    <div class="row container d-flex justify-content-center">
                        <div class="container">
                            <div class="card user-card-full">
                                <div class="row m-l-0 m-r-0">
                                    <div class="col-sm-4 bg-c-lite-green user-profile">
                                        <div class="card-block text-center text-white">
                                            <div class="m-b-25"> <img src="https://img.icons8.com/bubbles/100/000000/user.png" class="img-radius" alt="User-Profile-Image"> </div>
                                            <h6 class="f-w-600"><%=doctor.getName()%></h6>
                                            <p><%=doctor.getType()%></p> <i class=" mdi mdi-square-edit-outline feather icon-edit m-t-10 f-16"></i>
                                        </div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="card-block">
                                            <h6 class="m-b-20 p-b-5 b-b-default f-w-600">Information</h6>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">Email</p>
                                                    <h6 class="text-muted f-w-400"><%=doctor.getEmail()%></h6>
                                                </div>
                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">Phone</p>
                                                    <h6 class="text-muted f-w-400"><%=doctor.getNumber()%></h6>
                                                </div>
                                            </div>
                                            <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600">Address Detail</h6>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">Home Address</p>
                                                    <h6 class="text-muted f-w-400"><%=doctor.getAddress()%></h6>
                                                </div>
                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">City</p>
                                                    <h6 class="text-muted f-w-400"><%=doctor.getCity()%></h6>
                                                    
                                                </div>
                                            </div>
                                                    <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600">Hospital Detail</h6>
                                                    <div class="row">
                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">Hospital Name</p>
                                                    <h6 class="text-muted f-w-400"><%=doctor.getHname()%></h6>
                                                </div>
                                                <div class="col-sm-6">
                                                    <p class="m-b-10 f-w-600">Hospital Address</p>
                                                    <h6 class="text-muted f-w-400"><%=doctor.getHadd()%></h6>
                                                    
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
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
    </body>
</html>
