package club.gsgw;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class ApiGetMessageServlet extends HttpServlet {
  
  private static final long serialVersionUID = 1L;
@Override  
  public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
      
      response.setContentType("application/json");

      PrintWriter out = response.getWriter();
      out.println("{ \"message\": \"The board is green!\" }");
   }

}