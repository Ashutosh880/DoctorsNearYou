<%-- 
    Document   : deletedoctor
    Created on : 13 Apr, 2021, 10:02:07 AM
    Author     : aashu
--%>
<%@page import="com.entities.Message"%>
<%@page import="com.entities.Patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %>
<%@page import="com.helper.ConnectionProvider" %>
<%
    Patient patient = (Patient) session.getAttribute("currentPatient");
    if (patient == null) {
        response.sendRedirect("login.jsp");
    }


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Doctor</title>

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

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,200;0,400;1,300&display=swap"
              rel="stylesheet">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

    </head>
    <body>



        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand text-white"><span class="fa fa-user-circle"  style="color:red"></span> <%=patient.getName()%></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>


            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="admin.jsp"><span class="fa fa-home" ></span> Home <span class="sr-only">(current)</span></a>
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
                    <!--                    <li class="nav-item">
                                            <a class="nav-link" href="adddoctor.jsp"><span class="fa fa-plus-square " ></span> Add Doctor</a>
                                        </li>-->
                </ul>
                <div>
                    <a class="btn btn-outline-success" href="LogoutServlet" role="button">Logout</a>
                </div>
            </div>
        </nav>





        <div>
            <div class="sidebar bg-secondary">
                <a class="nav-link text-white" href="adddoctor.jsp"><span class="fa fa-plus-square text-white" ></span> Add Doctor</a>

                <a href="doctorpatient.jsp"><p class="text-white">See Doctor Patient</p></a>
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
                <!--                <h2 class="text-center">Search Doctor You Want To Delete</h2>
                                <div class="input-group container mt-5 col-md-3 text-center">
                                    <input type="text" class="form-control rounded" placeholder="Search" aria-label="Search"
                                           aria-describedby="search-addon">
                                    <button type="button" class="btn btn-outline-success ml-1"> search</button>
                                    <small id="emailHelp" class="form-text text-muted">Enter email address of doctor you want to delete</small>
                                </div> -->

                <table class="table table-bordered">
                    <tr>
                        <th>Name :</th>
                        <th>Number :</th>
                        <th>Email :</th>
                        <th>Address :</th>
                        <th>Specialist</th>
                        <th class="text-center">Action</th>
                    </tr>

                    <tr>
                        <%
                            String query = "select name,number,email,address,specialist from alldoctor where admin=?";
                            Connection conn = ConnectionProvider.createConnection();
                            PreparedStatement pstmt = conn.prepareStatement(query);

                            pstmt.setString(1, patient.getEmail());

                            ResultSet rs = pstmt.executeQuery();
                            while (rs.next()) {

                        %>
                    </tr>
                    <tr>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("number")%></td>
                        <td><%=rs.getString("email")%></td>
                        <td><%=rs.getString("address")%></td>
                        <td><%=rs.getString("specialist")%></td>
                        <td class="text-center">
                            <a href="doctordelete.jsp?u=<%=rs.getString("Email")%>" class="btn btn-danger">Delete</a>
                            <a href="updatedoctor.jsp?u=<%=rs.getString("Email")%>" class="btn btn-success">Update</a>
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
