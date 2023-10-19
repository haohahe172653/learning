/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Lesson;

/**
 *
 * @author kienb
 */
public class LessonDAO extends DBContext {

    public ArrayList<Lesson> getAllLessonByChapter(String chapterID) {
        ArrayList<Lesson> list = new ArrayList<>();
        String sql = "Select * from lesson where chapter_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, chapterID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Lesson lesson = new Lesson();
                lesson.setlName(rs.getString(2));
                lesson.setContent(rs.getString(4));
                list.add(lesson);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

}
