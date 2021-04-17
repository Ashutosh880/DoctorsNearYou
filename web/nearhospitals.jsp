<%-- 
    Document   : nearhospitals
    Created on : 13 Apr, 2021, 6:54:18 PM
    Author     : aashu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.entities.Doctor"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.helper.ConnectionProvider"%>
<%@page import="com.entities.Patient"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<%

    Patient patient = (Patient) session.getAttribute("currentPatient");
    if (patient == null) {
        response.sendRedirect("login.jsp");

    }
%>
<!DOCTYPE html>
<html>
    <head>






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




        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <title>Search Doctor</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,200;0,400;1,300&display=swap"
              rel="stylesheet">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand text-white"><span class="fa fa-user-circle"  style="color:red"></span><%=patient.getName()%></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>


            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="patient.jsp"><span class="fa fa-home" ></span> Home <span class="sr-only">(current)</span></a>
                    </li>

                    <!--                    <li class="nav-item">
                                            <a class="nav-link" href="nearhospitals.j"><span class="fa fa-plus-square " ></span> Get Appointment</a>
                                        </li>-->
                </ul>
                <div>
                    <a class="btn btn-outline-success" href="LogoutServlet" role="button">Logout</a>
                </div>
            </div>
        </nav>

        <div>

            <div class="sidebar bg-secondary">
                <!--                <a href="nearhospitals.jsp"><p class="text-white">Search Near Hospital</p></a>-->
                <!--                <a href="#"><p class="text-white">Update Profile</p></a>-->
                <!--<a href="#about"><p class="text-white">See Doctor Patient</p></a>-->
            </div>

            <!-- Page content -->
            <div class="content">
                <%
                    String hname = request.getParameter("hname");
                    String city = request.getParameter("city");

                    Connection con = ConnectionProvider.createConnection();
                    ArrayList<String> d1 = new ArrayList();
                    ArrayList<String> d2 = new ArrayList();
                    ArrayList<String> d3 = new ArrayList();
                    ArrayList<String> d4 = new ArrayList();
                    ArrayList<String> d5 = new ArrayList();
                    ArrayList<String> d6 = new ArrayList();
                    ArrayList<String> d7 = new ArrayList();
                    try {
                        String q = "Select * from alldoctor where hname=? and city=?";
                        PreparedStatement pstmt = con.prepareStatement(q);

                        pstmt.setString(1, hname);
                        pstmt.setString(2, city);

                        ResultSet rs = pstmt.executeQuery();

                        while (rs.next()) {
                            d1.add(rs.getString("name"));
                            d2.add(rs.getString("number"));
                            d3.add(rs.getString("email"));
                            d4.add(rs.getString("address"));
                            d5.add(rs.getString("specialist"));
                            d6.add(rs.getString("city"));
                            d7.add(rs.getString("hname"));
                        }

                    } catch (Exception ex) {

                    }


                %>

                <table class="table table-bordered">
                    <tr>
                        <th>Name :</th>
                        <th>Number :</th>
                        <th>Email :</th>
                        <th>Address :</th>
                        <th>Specialist</th>
                        <th>Hospital Name</th>
                        <th>City</th>
                        <th>Appointment</th>
                    </tr>

                    <tr>


                    </tr>
                    <%                        for (int i = 0; i < d1.size(); i++) {
                    %>
                    <tr>
                        <td><%=d1.get(i)%></td>
                        <td><%=d2.get(i)%></td>
                        <td><%=d3.get(i)%></td>
                        <td><%=d4.get(i)%></td>
                        <td><%=d5.get(i)%></td>
                        <td><%=d6.get(i)%></td>
                        <td><%=d7.get(i)%></td>
                        <td>
                            <a class="btn btn-success ml-4" href="getapp.jsp?u=<%=d3.get(i)%>">Get</a>
                        </td>
                    </tr>      


                    <%
                        }
                    %>

                </table>











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
