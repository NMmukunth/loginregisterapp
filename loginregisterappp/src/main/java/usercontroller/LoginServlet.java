package usercontroller;

import usermodel.User;
import usermodel.UserDAO;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UserDAO dao = new UserDAO();
        User user = dao.loginUser(email, password);

        if (user != null) {
            req.setAttribute("username", user.getName());
            RequestDispatcher rd = req.getRequestDispatcher("success.jsp");
            rd.forward(req, res);
        } else {
            res.getWriter().println("Invalid Email or Password!");
        }
    }
}
