package com.dao;
import com.entities.Doctor;
import java.sql.*;
public class Doctordao {

    private  Connection con;

    public Doctordao(Connection con) {
        this.con = con;
    }

     public boolean saveDoctor(Doctor doctor) {
        boolean f = false;
        try {

            String q = "insert into alldoctor(name,number,email,address,password,type,specialist,hname,admin) values(?,?,?,?,?,?,?,?,?)";

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

            pstmt.executeUpdate();
            f = true;

        } catch (Exception ex) {
            ex.printStackTrace();

        }
        return f;
    }
     
     public Doctor getUserByEP(String email, String password , String type)
     {
         Doctor doctor = null;

         try{
         
            String q = "Select * from alldoctor where email=? and password=? and type=?";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            pstmt.setString(3, type);
            
            ResultSet rs = pstmt.executeQuery();
            
            if(rs.next())
            {
                doctor = new Doctor();
                
               
                doctor.setEmail(rs.getString("email"));
                doctor.setPassword(rs.getString("password"));
                doctor.setType(rs.getString("type"));
                
                
            }
            
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
         
     return doctor;
     }

    
}
