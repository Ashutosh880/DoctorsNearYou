package com.servlets;

import com.dao.PatientDao;
import com.entities.Patient;
import com.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aashu
 */
@MultipartConfig
public class RegistrationServlet extends HttpServlet {
 @Override
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        
        String name = request.getParameter("name");
        String number = request.getParameter("number");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        String type = request.getParameter("user");
        
        Patient pt = new Patient(name,number,email,address,password,type);
        
        PatientDao pd = new PatientDao(ConnectionProvider.createConnection());
        if(pd.savePatient(pt))
        {
             out.println("done");
        }
        else
        {
            out.println("error");
        }
        
       
    }

}
