package webLayer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import DataLayer.*;

@WebServlet(name = "addStudent")
public class addStudent extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            accountDetails a2 = new accountDetails();

            String name = request.getParameter("name");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String dep = request.getParameter("department");
            int year = Integer.parseInt(request.getParameter("year"));

            if(a2.addUser(name,username,password,dep,year)){
                request.getRequestDispatcher("/admin.jsp").forward(request, response);
            }
            else {
                request.setAttribute("errorMessage", "Account with this usename already exists");
                request.getRequestDispatcher("/addStudent.jsp").forward(request, response);
            }

    }


}
