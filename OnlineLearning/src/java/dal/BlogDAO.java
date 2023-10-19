/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Blog;

/**
 *
 * @author may tinh cua hieu
 */
public class BlogDAO extends DBContext {

    public List<Blog> getBlog() {
        List<Blog> blogs = new ArrayList<>();
        String sql = "select b.id, b.title, b.content, b.img, b.create_date, a.first_name, a.last_name from Blog b join Account a on b.author_id = a.id\n"
                + "where b.is_available = 1";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                blogs.add(new Blog(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), (rs.getString(6) + " " + rs.getString(7))));
            }
            connection.close();
        } catch (SQLException e) {

        }
        return blogs;
    }

    public Blog getBlogById(int id) {
        String sql = "select b.id, b.title, b.content, b.img, b.create_date, a.first_name, a.last_name from Blog b join Account a on b.author_id = a.id\n"
                + "where b.is_available = 1 and b.id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Blog b = new Blog(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), (rs.getString(6) + " " + rs.getString(7)));
                connection.close();
                return b;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public List<Blog> getBlogByText(String text) {
        List<Blog> blogs = new ArrayList<>();
        String sql = "select * from blog where blogName title '%" + text + "%' and is_available = 1";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                blogs.add(new Blog(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), (rs.getString(6) + " " + rs.getString(7))));
            }
            connection.close();
        } catch (SQLException e) {

        }
        return blogs;
    }

    public int getNumberPage() {
        String sql = "select count(*) from blog where is_available = 1";
        int countPage = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                countPage = total / 3;
                if (total % 2 == 1) {
                    countPage++;
                }
                connection.close();
                return countPage;
            }
        } catch (SQLException e) {
        }
        return 0;
    }

    public List<Blog> getPaging(int index) {
        String sql = "SELECT *\n"
                + "FROM (\n"
                + "SELECT b.id, b.title, b.content, b.img, b.create_date, a.first_name, a.last_name\n"
                + "FROM Blog b join Account a on b.author_id = a.id where b.is_available = 1\n"
                + "ORDER BY create_date desc\n"
                + "OFFSET ? ROWS\n"
                + "FETCH FIRST 5 ROWS ONLY) as subquery";
        List<Blog> blogs = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, (index - 1) * 5);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                blogs.add(new Blog(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), (rs.getString(6) + " " + rs.getString(7))));
            }
            connection.close();
        } catch (SQLException e) {

        }
        return blogs;
    }

    public static void main(String[] args) {
        BlogDAO d = new BlogDAO();
//        List<Blog> list = d.getPaging(1);
//        for (Blog blog : list) {
//            System.out.println(blog.toString());
//        }

//        Blog b = d.getBlogById(5);
//        System.out.println(d.getNumberPage());

        Blog b = d.getBlogById(5);
        System.out.println(b.toString());

//        List<Blog> list = d.getPaging(1);
//        for (Blog blog : list) {
//            System.out.println(blog.toString());
//        }

    }
}
