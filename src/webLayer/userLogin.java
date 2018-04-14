package webLayer;

import DataLayer.accountDetails;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;

@WebServlet( name = "userLogin")
public class userLogin extends HttpServlet {
public  String un;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        accountDetails a3 = new accountDetails();
        un = request.getParameter("username");
        if (a3.isPasswordCorrect(request.getParameter("username"),request.getParameter("password"))) {

            Calendar cal = GregorianCalendar.getInstance();
            int hr = cal.get(Calendar.HOUR_OF_DAY);
            //System.out.println(cal.get(Calendar.HOUR_OF_DAY));
            accountDetails a4 =new accountDetails();
            if(hr!= 8 && hr!=14 && hr!=22){
                request.setAttribute("message","you are late");
            }
            else
            {
                if((hr==8 && (a4.isBf(un) == 0))) {
                    request.setAttribute("message","collect your token... enjoy your breakfast");
                }
                else if(a4.isBf(un) == 1){
                    request.setAttribute("message","you have already collected the token");
                }


                if((hr==14 && (a4.isLu(un) == 0))) {
                    request.setAttribute("message","collect your token... enjoy your Lunch");
                }
                else if(a4.isLu(un) == 1){
                    request.setAttribute("message","you have already collected the token");
                }


                if((hr==22 && (a4.isDi(un) == 0))) {
                    request.setAttribute("message","collect your token... enjoy your Dinner");
                }
                else if(a4.isDi(un) == 1){
                    request.setAttribute("message","you have already collected the token");
                }
            }

            request.getRequestDispatcher("/userLogin.jsp").forward(request, response);

           // request.getRequestDispatcher("/generateToken.jsp").forward(request, response);

        } else {
            request.setAttribute("errorMessage", "Invalid Login");
           // request.setAttribute("un",un);
            request.getRequestDispatcher("/userLogin.jsp").forward(request, response);
        }
    }

    public String getUn()
    {
        return un;
    }
}
