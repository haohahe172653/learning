/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Course;

/**
 *
 * @author asus
 */
public class SearchDao extends DBContext{
    public ArrayList<Course> searchByName(String search_raw){
        ArrayList<Course> list = new ArrayList<>();
        String sql = "select * from Course c \n"
                + "where c.name like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + search_raw + "%");
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                list.add(new Course(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getBoolean(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    //paging all san pham
    public ArrayList<Course> getListByPage(ArrayList<Course> list,
            int start, int end) {
        ArrayList<Course> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }
    
    public static void main(String[] args) {
        SearchDao d = new SearchDao();
        
        ArrayList<Course> list = d.searchByName("java");
        System.out.println(list);
    }
}
