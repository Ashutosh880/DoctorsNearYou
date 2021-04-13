<%@page import="com.entities.Message"%>
<%@page import="com.helper.ConnectionProvider"%>
<%@page import="java.sql.*" %>

<%
  String email = request.getParameter("u");
  Connection con = ConnectionProvider.createConnection();
  
String q = "delete from alldoctor where email='"+email+"'";

  Statement stmt = con.createStatement();
  stmt.executeUpdate(q);
  
  
  HttpSession s = request.getSession();
  Message m = new Message("Doctor Deleted Succesfully","success","alert-success");      
  s.setAttribute("msg", m);
  response.sendRedirect("deletedoctor.jsp");

%>