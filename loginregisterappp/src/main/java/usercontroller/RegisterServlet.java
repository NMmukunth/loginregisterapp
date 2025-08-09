package usercontroller;

import usermodel.User;
import usermodel.UserDAO;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = new User(name, email, password);
        UserDAO dao = new UserDAO();

        if (dao.registerUser(user)) {
            req.setAttribute("username", name);
            RequestDispatcher rd = req.getRequestDispatcher("success.jsp");
            rd.forward(req, res);
        } else {
            res.getWriter().println("Registration Failed!");
        }
    }
}
