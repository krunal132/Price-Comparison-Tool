/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Krunal
 */
import java.sql.*;

public class user {

    public boolean exist(String name, String pass) {
        boolean ans = false;
        try {
            Connection con = JDBC_connection.getConnection();
            String sql = "SELECT * FROM USERS WHERE USERNAME = ? AND PASSWORD = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            ans = rs.next();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ans;
    }

    public boolean rejister(String name, String email, String pass) {
        try {
            Connection con = JDBC_connection.getConnection();
            String sql = "INSERT INTO USERS (USERNAME, PASSWORD, EMAIL) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, pass);
            ps.setString(3, email);

            int row = ps.executeUpdate();
            if (row > 0) {
                return true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
