/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.ChapterDAO;
import dal.CourseDAO;
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
@WebServlet(name="ListLessonServlet", urlPatterns={"/ListLesson"})
public class ListLessonServlet extends HttpServlet {
   
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
            out.println("<title>Servlet ListLessonServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListLessonServlet at " + request.getContextPath () + "</h1>");
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
        String id = request.getParameter("id");
        CourseDAO courseDAO = new CourseDAO();
        Course course = courseDAO.getCourseById(id);
        ChapterDAO chapterDAO = new ChapterDAO();
        ArrayList<Chapter> list = chapterDAO.getAllChapterByCourse(id);
        LessonDAO lessonDAO = new LessonDAO();
        ArrayList<Lesson> listLesson = lessonDAO.getAllLessonByChapter(list.get(0).getId());      
        if(listLesson != null && !listLesson.isEmpty()){
            request.setAttribute("totalPage", listLesson.size());
            Lesson lesson = listLesson.get(pagenum);
            request.setAttribute("lesson", lesson);
        }    
        request.setAttribute("pagenum", pagenum);
        request.setAttribute("cid", list.get(0).getId());
        request.setAttribute("listLesson", listLesson);
        request.setAttribute("list", list);       
        request.getSession().setAttribute("course", course);
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
