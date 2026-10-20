@author Krunal
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/register")
public class registerServlet extends HttpServlet {

    protected void doGet(HttpServletRequest reqs, HttpServletResponse resp) throws IOException, ServletException {
        String name = reqs.getParameter("username");
        String email = reqs.getParameter("email");
        String pass = reqs.getParameter("password");

        user ru = new user();
        if (ru.rejister(name, email, pass)) {
            reqs.setAttribute("message", "username: " + name);
            reqs.getRequestDispatcher("login.jsp").forward(reqs, resp);
        } else {
            reqs.setAttribute("message", "Registration Failed. Try again.");
            reqs.getRequestDispatcher("register.jsp").forward(reqs, resp);
        }
    }

    protected void doPost(HttpServletRequest reqs, HttpServletResponse resp) throws IOException, ServletException {
        doGet(reqs, resp);
    }
}