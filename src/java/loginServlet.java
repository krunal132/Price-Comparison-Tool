/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Krunal
 */
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/login")
public class loginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest reqs, HttpServletResponse resp) throws IOException, ServletException {
        String username = reqs.getParameter("username");
        String password = reqs.getParameter("password");
        
        user su = new user();
        if(su.exist(username,password))
        {
            HttpSession session = reqs.getSession();
            session.setAttribute("user","username: " + username);
            resp.sendRedirect("index.jsp");
        }
        else
        {
            reqs.setAttribute("error", "Invalid Credentials");
            reqs.getRequestDispatcher("login.jsp").forward(reqs, resp);
        }

    }
    protected void doPost(HttpServletRequest reqs, HttpServletResponse resp) throws IOException, ServletException {
        doGet(reqs, resp);
    }
}
