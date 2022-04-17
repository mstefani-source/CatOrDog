package club.gsgw;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class ApiServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;
@Override  
  public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
      
      response.setContentType("text/html");

      PrintWriter out = response.getWriter();
      out.println("./api works. Try <a href='./api/getMessage'>./api/getMessage</a>");
   }

}