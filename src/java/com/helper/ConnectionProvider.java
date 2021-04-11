/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.helper;

import java.sql.*;

public class ConnectionProvider {

    private static Connection con;

    public static Connection createConnection() {
        if (con == null) {
            try {

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/doctor", "root", "Root");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }

        return con;
    }

}
