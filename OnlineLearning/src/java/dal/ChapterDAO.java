/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Chapter;

/**
 *
 * @author kienb
 */
public class ChapterDAO extends DBContext {

    public ArrayList<Chapter> getAllChapterByCourse(String courseID) {
        ArrayList<Chapter> list = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[course_id]\n"
                + "  FROM [dbo].[Chapter] where course_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, courseID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Chapter chapter = new Chapter();
                chapter.setId(rs.getString(1));
                chapter.setName(rs.getString(2));
                list.add(chapter);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
