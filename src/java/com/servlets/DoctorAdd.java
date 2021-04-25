package com.servlets;

import com.dao.Doctordao;
import com.entities.Doctor;
import com.entities.Message;
import com.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author aashu
 */
@MultipartConfig
public class DoctorAdd extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String number = request.getParameter("number");
        String email = request.getParameter("email");
        String haddress = request.getParameter("haddress");
        String password = request.getParameter("password");
        String specialist = request.getParameter("specialist");
        String home = request.getParameter("home");
        String city = request.getParameter("city");

        Doctordao d = new Doctordao(ConnectionProvider.createConnection());

        boolean f = d.updateDoctor(name, number, email, haddress, password, specialist, home, city);

        if (f == true) {

            out.println("done");
          
        } else {

          out.println("error");

        }

    }

}
