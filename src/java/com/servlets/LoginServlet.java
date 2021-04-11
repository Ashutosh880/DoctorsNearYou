package com.servlets;

import com.dao.PatientDao;
import com.entities.Patient;
import com.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String type = request.getParameter("type");

        PatientDao pd = new PatientDao(ConnectionProvider.createConnection());

        Patient p = pd.getUserByEP(email, password, type);

        if (p == null) {
            out.println("Invalid Details Try Again");
            response.sendRedirect("error_page.jsp");
           
        } else {         
         HttpSession s = request.getSession();
         s.setAttribute("currentPatient", p);
         
            switch (type) {
                case "patient":{
                    RequestDispatcher rd = request.getRequestDispatcher("patient.jsp");
                    rd.forward(request, response);
                        break;
                    }
                case "admin":{
                    RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
                    rd.forward(request, response);
                        break;
                    }
                case "doctor":{
                    RequestDispatcher rd = request.getRequestDispatcher("doctor.jsp");
                    rd.forward(request, response);
                        break;
                    }
                default:
                    response.sendRedirect("error_page.jsp");
                    break;
            }

        }

    }
}
