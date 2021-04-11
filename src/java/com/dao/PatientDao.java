package com.dao;

import com.entities.Patient;
import java.sql.*;

public class PatientDao {

    private Connection con;

    public PatientDao(Connection con) {
        this.con = con;
    }

    public boolean savePatient(Patient patient) {
        boolean f = false;
        try {

            String q = "insert into reg_form(name,number,email,address,password,type) values(?,?,?,?,?,?)";

            PreparedStatement pstmt = this.con.prepareStatement(q);

            pstmt.setString(1, patient.getName());
            pstmt.setString(2, patient.getNumber());
            pstmt.setString(3, patient.getEmail());
            pstmt.setString(4, patient.getAddress());
            pstmt.setString(5, patient.getPassword());
            pstmt.setString(6, patient.getType());

            pstmt.executeUpdate();
            f = true;

        } catch (Exception ex) {
            ex.printStackTrace();

        }
        return f;
    }

    public Patient getUserByEP(String email, String password , String type) {
        Patient patient=null;

        try{
         
            String q = "Select * from reg_form where email=? and password=? and type=?";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            pstmt.setString(3, type);
            
            ResultSet rs = pstmt.executeQuery();
            
            if(rs.next())
            {
                patient = new Patient();
                
               
                patient.setEmail(rs.getString("email"));
                patient.setPassword(rs.getString("password"));
                patient.setType(rs.getString("type"));
                
                
                
            }
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return patient;
    }
}
