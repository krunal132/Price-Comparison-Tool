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
import java.util.List;

@WebServlet("/search")
public class searchServlet extends HttpServlet {

    protected void doGet(HttpServletRequest reqs, HttpServletResponse resp) throws IOException, ServletException {
        try {
            String product_name = reqs.getParameter("name");
            search_product sp = new search_product();
            List<Product> results = sp.search(product_name);
            reqs.setAttribute("productList", results);
            reqs.getRequestDispatcher("results.jsp").forward(reqs, resp);

        } catch (Exception e) {
            throw new ServletException(e);
        }

    }

    protected void doPost(HttpServletRequest reqs, HttpServletResponse resp) throws IOException, ServletException {
        doGet(reqs, resp);
    }
}
