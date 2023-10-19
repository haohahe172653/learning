/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import model.Account;

/**
 *
 * @author DHGiang
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
//        String term_condition = request.getParameter("term_and_condition");
        Account a = new Account();
        a.setUsername(username);
        a.setPassword(password);
        a.setRole(4);
        UserDAO udao = new UserDAO();
        if (udao.checkUsername(a) != null) {
            request.setAttribute("register_fail", "username already used");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            if(username.contains(" ") || username.length()<4 || username.length()>32){
                request.setAttribute("register_fail", "username invalid");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else{
                if (udao.checkEmail(a) != null) {
                request.setAttribute("register_fail", "email already used");
                request.getRequestDispatcher("register.jsp").forward(request, response);
                } else {
                    if (password.length() < 4 || password.length() > 32) {
                        request.setAttribute("register_fail", "password from 4 to 32 character");
                        request.getRequestDispatcher("register.jsp").forward(request, response);
                    } else {
                        if (Password_Validation(password) == false) {
                            request.setAttribute("register_fail", "password has one special character");
                            request.getRequestDispatcher("register.jsp").forward(request, response);
                        } else {
                            int s = udao.RegisterAccount(a);
                            System.out.print("register complete");
                            response.sendRedirect("login.jsp");

                        }
                    }
                }
            }            
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public static boolean Password_Validation(String password) {
        if (password.length() >= 4) {
            Pattern letter = Pattern.compile("[A-Z]");
            Pattern digit = Pattern.compile("[0-9]");
            Pattern special = Pattern.compile("[!@#$%&*()_+=|<>?{}\\[\\]~-]");
            //Pattern eight = Pattern.compile (".{8}");
            Matcher hasLetter = letter.matcher(password);
            Matcher hasDigit = digit.matcher(password);
            Matcher hasSpecial = special.matcher(password);
            return hasLetter.find() || hasDigit.find() || hasSpecial.find();
        } else {
            return false;
        }
    }

}
