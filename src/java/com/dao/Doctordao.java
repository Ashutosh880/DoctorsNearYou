package com.dao;
import com.entities.Patient;
import java.sql.*;
public class Doctordao {

    private final Connection con;

    public Doctordao(Connection con) {
        this.con = con;
    }

     public boolean saveDoctor(Patient patient) {
        boolean f = false;
        try {

            String q = "insert into reg_form(name,number,email,address,password,type,specialist) values(?,?,?,?,?,?,?)";

            PreparedStatement pstmt = this.con.prepareStatement(q);

            pstmt.setString(1, patient.getName());
            pstmt.setString(2, patient.getNumber());
            pstmt.setString(3, patient.getEmail());
            pstmt.setString(4, patient.getAddress());
            pstmt.setString(5, patient.getPassword());
            pstmt.setString(6, patient.getType());
            pstmt.setString(7, patient.getSpecialist());

            pstmt.executeUpdate();
            f = true;

        } catch (Exception ex) {
            ex.printStackTrace();

        }
        return f;
    }

    
}
