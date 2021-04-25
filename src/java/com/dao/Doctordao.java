package com.dao;

import com.entities.Doctor;
import com.helper.ConnectionProvider;
import com.servlets.SetTime;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

public class Doctordao {

    private Connection con;

    public Doctordao(Connection con) {
        this.con = con;
    }

    public boolean saveDoctor(Doctor doctor) {
        boolean f = false;
        try {

            String q = "insert into alldoctor(name,number,email,address,password,type,specialist,hname,admin,city) values(?,?,?,?,?,?,?,?,?,?)";

            PreparedStatement pstmt = this.con.prepareStatement(q);

            pstmt.setString(1, doctor.getName());
            pstmt.setString(2, doctor.getNumber());
            pstmt.setString(3, doctor.getEmail());
            pstmt.setString(4, doctor.getAddress());
            pstmt.setString(5, doctor.getPassword());
            pstmt.setString(6, doctor.getType());
            pstmt.setString(7, doctor.getSpecialist());
            pstmt.setString(8, doctor.getHname());
            pstmt.setString(9, doctor.getAdmin());
            pstmt.setString(10, doctor.getHadd());

            pstmt.executeUpdate();
            f = true;

        } catch (Exception ex) {
            ex.printStackTrace();

        }
        return f;
    }

    public Doctor getUserByEP(String email, String password, String type) {
        Doctor doctor = null;

        try {

            String q = "Select * from alldoctor where email=? and password=? and type=?";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            pstmt.setString(3, type);

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                doctor = new Doctor();

                doctor.setEmail(rs.getString("email"));
                doctor.setPassword(rs.getString("password"));
                doctor.setType(rs.getString("type"));
                doctor.setAddress(rs.getString("address"));
                doctor.setName(rs.getString("name"));
                doctor.setNumber(rs.getString("number"));
                doctor.setSpecialist(rs.getString("specialist"));
                doctor.setHname(rs.getString("hname"));
                doctor.setCity(rs.getString("city"));
                doctor.setHadd(rs.getString("haddress"));

            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return doctor;
    }

    public void getDoctor(String hname, String city) {
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

    }

    public boolean setTime(String id, String stime, String etime) {
        boolean b = false;
        Connection con = ConnectionProvider.createConnection();
        String q1 = "select * from appointment where d_email=?";
        try {
            PreparedStatement pstmt = con.prepareStatement(q1);

            pstmt.setString(1, id);

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                return b;
            } else {
                b = true;
                for (int i = 0; i < 7; i++) {

                    LocalDate ld = LocalDate.now().plusDays(i);
                    String strday = ld.getDayOfWeek().toString();
                    System.out.println(strday);

                    String strDate = ld.toString();
                    String day = stime.concat("-" + etime);

                    String q = "insert into appointment(d_email,date,day,time) value(?,?,?,?) ";

                    try {

                        PreparedStatement pstmt1 = con.prepareStatement(q);

                        pstmt1.setString(1, id);
                        pstmt1.setString(2, strDate);
                        pstmt1.setString(3, strday);
                        pstmt1.setString(4, day);

                        pstmt1.executeUpdate();
                    } catch (SQLException ex) {

                    }

                }

            }

        } catch (SQLException ex) {
            Logger.getLogger(Doctordao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return b;
    }

    public boolean update(String id, String stime, String etime) {
        boolean g = false;

        try {

            Connection con = ConnectionProvider.createConnection();

            String q = "select * from appointment where d_email=?";

            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setString(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                String q1 = "delete from appointment where d_email='" + id + "'";
                PreparedStatement pstmt1 = con.prepareStatement(q1);
                pstmt1.executeUpdate();
                setTime(id, stime, etime);
                g = true;
            } else {
                return g;
            }

        } catch (Exception e) {

        }
        return g;
    }
    //public boolean 

    public boolean updateDoctor(String name,String number,String email,String haddress,String password,String specialist,String home,String city) {
        boolean b = true;

        try {

            String q = "update alldoctor set name=?,number=?,email=?,address=?,password=?,specialist=?,city=?,haddress=? where email=?";
            Connection con = ConnectionProvider.createConnection();
            PreparedStatement pstmt = con.prepareStatement(q);
            
            pstmt.setString(1,name);
            pstmt.setString(2, number);
            pstmt.setString(3, email);
            pstmt.setString(4, haddress);
            pstmt.setString(5, password);
            pstmt.setString(6, specialist);
            pstmt.setString(7, city);
            pstmt.setString(8, home);
            pstmt.setString(9, email);
            
            pstmt.executeUpdate();
             
        } catch (Exception ex) {

            return b=false;
        }

        return b;
    }

}
