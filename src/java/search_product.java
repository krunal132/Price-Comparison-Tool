/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Krunal
 */
import java.sql.*;
import java.util.*;

public class search_product {

    public List<Product> search(String name) {
        List<Product> result = new ArrayList<>();
        try {
            Connection con = JDBC_connection.getConnection();
            if (name == null) {
                name = "";
            }
            String sql = "SELECT * FROM STORE1 WHERE LOWER(NAME) LIKE(?) UNION ALL SELECT * FROM STORE2 WHERE LOWER(NAME) LIKE(?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + name + "%");
            ps.setString(2, "%" + name + "%");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product p = new Product();
                p.set_id(rs.getInt("ID"));
                p.set_name(rs.getString("NAME"));
                p.set_image(rs.getString("image"));
                p.set_price(rs.getDouble("PRICE"));
                p.set_source(rs.getString("source"));
                result.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public List<Product> search_by_source(String name) {
        List<Product> ans = new ArrayList<>();
        try {
            Connection con = JDBC_connection.getConnection();
            String sql;
            if (name.equals("amazon")) {
                sql = "SELECT * FROM STORE1 ";
            } else {
                sql = "SELECT * FROM STORE2 ";
            }
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product p = new Product();
                p.set_id(rs.getInt("ID"));
                p.set_name(rs.getString("NAME"));
                p.set_image(rs.getString("IMAGE"));
                p.set_price(rs.getDouble("PRICE"));
                p.set_source(rs.getString("SOURCE"));
                ans.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ans;
    }

    public List<Product> search_pro(String source, String pro) {
        List<Product> result = new ArrayList<>();
        try {
            Connection con = JDBC_connection.getConnection();
            String sql;
            if (source.equals("amazon")) {
                sql  = "SELECT * FROM STORE1 WHERE LOWER(NAME) LIKE(?)";
            } else {
                sql  = "SELECT * FROM STORE2 WHERE LOWER(NAME) LIKE(?)";
            }
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + pro + "%");
            
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product p = new Product();
                p.set_id(rs.getInt("ID"));
                p.set_name(rs.getString("NAME"));
                p.set_image(rs.getString("image"));
                p.set_price(rs.getDouble("PRICE"));
                p.set_source(rs.getString("source"));
                result.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
