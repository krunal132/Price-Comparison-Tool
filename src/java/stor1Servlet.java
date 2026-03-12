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

@WebServlet("/stor1_page")
public class stor1Servlet extends HttpServlet {

    protected void doGet(HttpServletRequest reqs, HttpServletResponse resp) throws IOException, ServletException {
        String source = reqs.getParameter("type");
        String query = reqs.getParameter("query");

        if (source == null) {
            source = "stor1";
        }
        search_product sp = new search_product();
        List<Product> res;
        
        if(query != null)
        {
            res=sp.search_pro(source,query);
        }
        else
        {
            res= sp.search_by_source(source);
        }

        reqs.setAttribute("productList", res);
        reqs.setAttribute("platformName", source.toUpperCase());
        reqs.getRequestDispatcher("stor1.jsp").forward(reqs, resp);
    }

}


