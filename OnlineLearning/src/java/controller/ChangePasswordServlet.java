//package controller;
//
//
//import com.oracle.wls.shaded.org.apache.xpath.operations.String;
//import java.io.IOException;
//import java.io.PrintWriter;
//import dal.UserDao1;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import model.User;
//
//public class ChangePasswordServlet extends HttpServlet {
//   
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        UserDAO1 user = new UserDAO1();
//        String username = request.getParameter("username");
//        String currentPassword = request.getParameter("currentPassword");
//        String newPassword = request.getParameter("newPassword");
//        boolean passwordCorrect = user.checkCurrentPassword(username, currentPassword);
//
//        response.setContentType("text/html");
//        PrintWriter out = response.getWriter();
//
//        if (passwordCorrect) {
//
//            boolean passwordUpdated = user.updatePassword(username, newPassword);
//
//            if (passwordUpdated) {
//                out.println("<h2>Password updated successfully</h2>");
//            } else {
//                out.println("<h2>Failed to update password</h2>");
//            }
//        } else {
//            out.println("<h2>Incorrect current password</h2>");
//        }
//
//        out.close();
//    }
//}