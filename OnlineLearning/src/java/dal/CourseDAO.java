/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import model.Course;

/**
 *
 * @author asus
 */
public class CourseDAO extends DBContext {

    public ArrayList<Course> getAllCourse() {
        ArrayList<Course> list = new ArrayList<>();
        String sql = "select * from Course ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Course(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getBoolean(7)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public Course getCourseById(String cid) {
        String sql = "select * from Course\n"
                + "where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Course(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getBoolean(7));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void CourseRegister(int accountId, String courseId) {
        String sql = "  INSERT INTO [JoinCourse] ([account_id],[course_id],[joined_date],[is_complete])\n"
                + "  VALUES (?,?,?,?)";
        Date today = new Date();
        SimpleDateFormat fd = new SimpleDateFormat("MM-dd-yyyy");
        String courseRegisterDate = fd.format(today);
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, accountId);
            st.setString(2, courseId);
            st.setString(3, courseRegisterDate);
            st.setInt(4, 0);
            ResultSet rs = st.executeQuery();
        } catch(SQLException e){
            
        }
    }
    
    public String AccountJoinCourseAll(int accountId){
        String sql = "SELECT course_id FROM JoinCourse WHERE account_id = ?";
        String accountJoinCourse = "";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, accountId);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                accountJoinCourse = accountJoinCourse + rs.getString(1) + "..";
            }
            return accountJoinCourse;
        } catch (Exception e) {
        }
        return accountJoinCourse;
    }

    public static void main(String[] args) {
        CourseDAO d = new CourseDAO();
        //Course c = d.getCourseById("C");
        //System.out.println(c);
//        System.out.println(d.AccountJoinCourseAll(2));
//        String str[] = d.AccountJoinCourseAll(2).split("\\.\\.");
//        for (int i = 0; i < str.length; i++) {
//            System.out.println(str[i]);
//            if(str[i].equals("C#-1")){
//                System.out.println("Found them");
//            }
//        }
        Course c = d.getCourseById("C#-1");
        System.out.println(c.toString());
        
    }
}
