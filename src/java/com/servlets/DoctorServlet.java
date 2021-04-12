package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.entities.Patient;
import com.dao.Doctordao;
import com.helper.ConnectionProvider;
import javax.servlet.annotation.MultipartConfig;

@MultipartConfig
public class DoctorServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
      PrintWriter out = response.getWriter();
        
        String name = request.getParameter("name");
        String number = request.getParameter("number");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        String type = request.getParameter("user");
        String specialist = request.getParameter("specialist");
        
        Patient pt = new Patient(name,number,email,address,password,type,specialist);
        
        Doctordao dd = new Doctordao(ConnectionProvider.createConnection());
        if(dd.saveDoctor(pt))
        {
            out.println("done");
        }
        else
        {
            out.println("error");
        }
        
        
    }
}
