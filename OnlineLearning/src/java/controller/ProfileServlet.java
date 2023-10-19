///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
// */
//
//package controller;
//
//import java.io.IOException;
//import java.io.InputStream;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.Part;
//
///**
// *
// * @author pc
// */
//@WebServlet(name="ProfileServlet", urlPatterns={"/profile"})
//
//public class ProfileServlet extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//    private AccountDAO accountDAO;
//    
//    public UserProfileServlet() {
//        super();
//        accountDAO = new AccountDAO();
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        User user = getUserFromSession(request);
//        User user = getUserFromSession(request);
//        
//        if (user != null) {
//            AccountDetail accountDetail = accountDAO.getAccountDetailByAid(user.getAid());
//            
//            request.setAttribute("accountDetail", accountDetail);
//            request.setAttribute("user", user);
//            
//            request.getRequestDispatcher("/profile.jsp").forward(request, response);
//        } else {
//            response.sendRedirect("login.jsp");
//        }
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        User user = getUserFromSession(request);
//        
//        if (user != null) {
//            String name = request.getParameter("name");
//            String dobString = request.getParameter("dob");
//            String email = request.getParameter("email");
//            String phone = request.getParameter("phone");
//            String address = request.getParameter("address");
//            
//            Date dob = null;
//            try {
//                dob = new SimpleDateFormat("yyyy-MM-dd").parse(dobString);
//            } catch (ParseException e) {
//                e.printStackTrace();
//            }
//            
//            AccountDetail accountDetail = new AccountDetail();
//            accountDetail.setAdid(user.getAdid());
//            accountDetail.setName(name);
//            accountDetail.setDob(dob);
//            accountDetail.setEmail(email);
//            accountDetail.setPhone(phone);
//            accountDetail.setAddress(address);
//            accountDetail.setAid(user.getAid());
//            accountDAO.updateAccountDetail(accountDetail);
//            
//            response.sendRedirect("profile.jsp");
//        } else {
//            response.sendRedirect("login.jsp");
//        }
//    }
//    
//    private User getUserFromSession(HttpServletRequest request) {
//
//        return (User) request.getSession().getAttribute("user");
//    }
//}