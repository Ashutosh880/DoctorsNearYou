package com.servlets;

import com.dao.Doctordao;
import com.entities.Message;
import com.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author aashu
 */
public class UpdateTime extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String stime = request.getParameter("stime");
        String etime = request.getParameter("etime");
        String demail = request.getParameter("demail");

        Doctordao dd = new Doctordao(ConnectionProvider.createConnection());

        boolean b = dd.update(demail, stime, etime);
        if (b == true) {
            Message msg = new Message("Updated Successfully", "error", "alert-success");
            HttpSession s = request.getSession();
            s.setAttribute("msg", msg);
            response.sendRedirect("doctor.jsp");
        } else {
            Message msg = new Message("Please Set Availability First", "error", "alert-danger");
            HttpSession s = request.getSession();
            s.setAttribute("msg", msg);
            response.sendRedirect("doctor.jsp");
        }

    }
}
