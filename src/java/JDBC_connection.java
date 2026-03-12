/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Krunal
 */
import java.sql.*;
public class JDBC_connection {

    private static Connection con = null;
    private static final String driver_class = "org.apache.derby.client.ClientAutoloadedDriver";
    private static final String URL = "jdbc:derby://localhost:1527/SmartPriceDB";
    private static final String user_name = "krunal";
    private static final String password = "123";

    public static Connection getConnection() {
        try {
            if (con == null || con.isClosed()) {
                Class.forName(driver_class);
                con = DriverManager.getConnection(URL, user_name, password);
                Statement stmt = con.createStatement();
                stmt.execute("SET SCHEMA APP");
            }
        } catch (ClassNotFoundException e) {
            System.err.println("DRIVER NOT FOUND: Make sure derby.jar is in WEB-INF/lib");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("SQL ERROR: Is the database already open in another tool?");
            e.printStackTrace();
        }
        return con;
    }
}


//done