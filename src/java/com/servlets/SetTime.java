/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets;

import com.dao.Doctordao;
import com.entities.Message;
import com.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.time.LocalDate;
import java.time.Month;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.http.HttpSession;

/**
 *
 * @author aashu
 */
public class SetTime extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String stime = request.getParameter("stime");
        String etime = request.getParameter("etime");
        String demail = request.getParameter("demail");

        Doctordao dd = new Doctordao(ConnectionProvider.createConnection());
        boolean c = dd.setTime(demail, stime, etime);
        
   if(c==false)
   {
        Message msg = new Message("You are already set time please update or set time", "error", "alert-danger");
            HttpSession s = request.getSession();
            s.setAttribute("msg", msg);
            response.sendRedirect("doctor.jsp");
   }
   else
   {
       out.println("done");
        Message msg = new Message("Time Set Successfully", "error", "alert-success");
            HttpSession s = request.getSession();
            s.setAttribute("msg", msg);
            response.sendRedirect("doctor.jsp");
   }
        

//        String day = request.getParameter("day");
    }

}
