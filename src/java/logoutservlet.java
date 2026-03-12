
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Krunal
 */
@WebServlet("/logout")
public class logoutservlet extends HttpServlet{
    public void doGet (HttpServletRequest reqs,HttpServletResponse resp) throws ServletException,IOException
    {
        HttpSession session = reqs.getSession(false);
        session.invalidate();
        resp.sendRedirect("index.jsp");
    }
}
