package com.servlets;

import com.dao.PatientDao;
import com.entities.Message;
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

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String type = request.getParameter("type");

        PatientDao pd = new PatientDao(ConnectionProvider.createConnection());
        Patient p = pd.getUserByEP(email, password, type);

        if (p == null) {
            Message msg = new Message("Invalid Username and Password", "error", "alert-danger");
            HttpSession s = request.getSession();
            s.setAttribute("msg", msg);

            response.sendRedirect("login.jsp");

        } else {
            HttpSession s = request.getSession();
            s.setAttribute("currentPatient", p);
            switch (type) {
                case "patient": {
                   response.sendRedirect("patient.jsp");
                    break;
                }
                case "admin": {
                    response.sendRedirect("admin.jsp");
                    break;
                }
                case "doctor": {
                   response.sendRedirect("doctor.jsp");
                    break;
                }
                default:
            }

        }

    }
}
