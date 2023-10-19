/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.ChapterDAO;
import dal.LessonDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Chapter;
import model.Course;
import model.Lesson;

/**
 *
 * @author asus
 */
@WebServlet(name="ListChapterServlet", urlPatterns={"/ListChapter"})
public class ListChapterServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ListChapterServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListChapterServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int pagenum = request.getParameter("pagenum") != null ? Integer.parseInt(request.getParameter("pagenum")) : 0;
        String cid = request.getParameter("cid");
        String id = ((Course)request.getSession().getAttribute("course")).getcId();
        ChapterDAO chapterDAO = new ChapterDAO();
        ArrayList<Chapter> list = chapterDAO.getAllChapterByCourse(id);
        LessonDAO lessonDAO = new LessonDAO();
        ArrayList<Lesson> listLesson = lessonDAO.getAllLessonByChapter(cid);      
        if(listLesson != null && !listLesson.isEmpty()){
            request.setAttribute("totalPage", listLesson.size());
            Lesson lesson = listLesson.get(pagenum);
            request.setAttribute("lesson", lesson);
        }    
        request.setAttribute("pagenum", pagenum);
        request.setAttribute("cid", cid);
        request.setAttribute("list", list);       
        request.setAttribute("cid", cid);
        request.getRequestDispatcher("ListChapter.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
