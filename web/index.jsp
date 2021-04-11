<%-- 
    Document   : index
    Created on : 10 Apr, 2021, 1:39:32 PM
    Author     : aashu
--%>

<%@page import="com.helper.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,200;0,400;1,300&display=swap"
              rel="stylesheet">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    
    <body style="background-image: url(image/img10.jpg)">

        <!--navbar-->

        <%@include file="reuse.jsp"%>

        <!--crousal started-->
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100 " src="image/img1.jpg" alt="First slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h2 class="text-danger text-center">Welcome to our website</h2>
                        <div>
                            <h3 class="text-center text-dark">Stay Safe, Stay Healthy.<h3>
                                    </div>
                                    <h4 class="text-center text-dark">Caring For Your Life</h4>
                                    </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="image/img2.png" alt="Second slide">
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block w-100" src="image/img3.jpg" alt="Third slide">
                                    </div>
                                    </div>
                                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                    </div>
        <!--body started-->
          <div class="container text-center mt-5 mb-5">
                                        <h2 class="text-dark">Company Profile</h2>
                                        <div class="row text-dark">
                                            Welcome to our Website - The Instant Medical Help site . Our aim is to make this the most authentic updated
                                            resource for Indian medical information.There are nearly 1500 sites in the Directory, and with simple and
                                            advanced searching facilities you will be able to find what you need effortlessly.
                                        </div>
                                        <div class="row text-dark">
                                            We also encourage every medical entity - including small Nursing homes, Polyclinics etc to have their own
                                            websites, by offering affordable solutions for creating them and for updating them - either on their own, or
                                            with our help.
                                            <br>
                                            With this Directory we believe that we'd never have to say "Indian medical information is difficult to find"
                                            <br><br>
                                        </div>
                                    </div>
                                    <div class="container col-md-8">
                                        <div class=" text-dark mt-3">
                                            <div class="col-md-8 offset-md-2">
                                                They treat patients with acute problems in different body areas, such as the digestive tract, skin or
                                                abdomen. Some surgeons specialize in specific areas of medicine, like oncology, pediatrics, organ
                                                transplant, orthopedics, and trauma. They treat patients with injuries, such as broken bones; and
                                                diseases
                                                such as cancerous tumors or deformities.
                                                <br>
                                                They give people medicine and other kinds of treatment. They also give advice about diet, exercise, and
                                                sleep. Doctors use science to figure out what is making people sick. Doctors examine people, listen to
                                                them
                                                describe their health problems, and do tests to see what is wrong.


                                            </div>


                                        </div>
                                    </div>


                                    <div class="container text-center mt-2 mb-5">
                                        <br>
                                        <br>
                                        <h2 class="text-dark">Doctors That Work Within a Community</h2>
                                        <div class="row text-dark">
                                            The other half or so of medical students will end up becoming general practitioners, seeing patients of all
                                            ages within a particular community. They are the frontline and first point of contact in a patient's health
                                            care. They diagnose and treat their patients for all sorts of ailments, and also refer their patients to the
                                            appropriate specialist doctor when needed for specific medical opinions and advice. There are other types of
                                            doctors who can also work within a community, such as those who work in paediatrics, obstetrics, and Sexual
                                            health.
                                        </div>
                                    </div>
                                    <div">
                                        <!-- Footer -->
                                        <footer class="bg-dark text-center text-white">
                                            <!-- Grid container -->
                                            <div class="container p-4">
                                                <!-- Section: Social media -->
                                                <section class="mb-4">
                                                    <!-- Facebook -->
                                                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                                                       >FAQ<i class="fab fa-facebook-f"></i
                                                        ></a>

                                                    <!-- Twitter -->
                                                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                                                       >Privacy Policy<i class="fab fa-twitter"></i
                                                        ></a>

                                                    <!-- Google -->
                                                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                                                       >Terms of services<i class="fab fa-google"></i
                                                        ></a>

                                                    <!-- Instagram -->
                                                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                                                       >Feedback<i class="fab fa-instagram"></i
                                                        ></a>
                                                </section>
                                                <!-- Section: Social media -->

                                                <!-- Section: Form -->
                                                <section class="">
                                                    <form action="">
                                                        <!--Grid row-->
                                                        <div class="row d-flex justify-content-center">
                                                            <!--Grid column-->
                                                            <div class="col-auto">
                                                                <p class="pt-2">
                                                                    <strong>Subscribe to join with us</strong>
                                                                </p>
                                                            </div>
                                                            <!--Grid column-->

                                                            <!--Grid column-->
                                                            <div class="col-md-5 col-12">
                                                                <!-- Email input -->
                                                                <div class="form-outline form-white mb-4">
                                                                    <input type="email" id="form5Example2" class="form-control" />
                                                                    <label class="form-label" for="form5Example2">Email address</label>
                                                                </div>
                                                            </div>
                                                            <!--Grid column-->

                                                            <!--Grid column-->
                                                            <div class="col-auto">
                                                                <!-- Submit button -->
                                                                <button type="submit" class="btn btn-outline-light mb-4">
                                                                    Subscribe
                                                                </button>
                                                            </div>
                                                            <!--Grid column-->
                                                        </div>
                                                        <!--Grid row-->
                                                    </form>
                                                </section>
                                                <!-- Section: Form -->

                                                <!-- Section: Text -->
                                                <section class="mb-4">
                                                    <p>
                                                        Thank You for using our website,I hope you feel better after using our services
                                                        <br>
                                                        <br>
                                                        created by :  <a class="btn btn-outline-secondary" href="about.html" role="button">About our team</a><marquee>Amit Dashore,Ashutosh Bhardwaj,Adarsh Upadhyay,Himanshu Mishra,Harshvardhan Singh</marquee>
                                                    </p>
                                                </section>
                                                <!-- Section: Text -->

                                                <!-- Section: Links -->

                                                <!-- Section: Links -->
                                            </div>
                                            <!-- Grid container -->

                                            <!-- Copyright -->
                                            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                                                © 2020 Copyright:
                                                <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
                                            </div>
                                            <!-- Copyright -->
                                        </footer>

                                    <!--javascripts-->
                                    <script
                                        src="https://code.jquery.com/jquery-3.6.0.min.js"
                                        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
                                    crossorigin="anonymous"></script>
                                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                                    <script src="js/myjs.js" type="text/javascript"></script>

                                    </body>
                                    </html>
