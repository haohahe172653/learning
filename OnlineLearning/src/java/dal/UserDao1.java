/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

/**
 *
 * @author DHGiang
 */
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

public class UserDao1 extends DBContext{
    public User LoginUser2(String username, String password){
        String sql = "SELECT * FROM [User] where username = ? and password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                User u = new User();
                u.setUsername(rs.getString(1));
                u.setPassword(rs.getString(2));
                u.setEmail(rs.getString(3));
                u.setPhoneNumber(rs.getString(4));
                u.setRole(rs.getInt(5));
                return u;
            }
        } catch (SQLException e) {
        }
        return null;

    }
    
    public User LoginUser(String email, String password){
        String sql = "SELECT * FROM [User] where email = ? and password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                User u = new User();
                u.setUsername(rs.getString(1));
                u.setPassword(rs.getString(2));
                u.setEmail(rs.getString(3));
                u.setPhoneNumber(rs.getString(4));
                u.setRole(rs.getInt(5));
                return u;
            }
        } catch (SQLException e) {
        }
        return null;

    }
    
    public User RegisterUser(User u){
        String sql = "INSERT INTO [dbo].[User]([username],[password],[email],[sdt],[role])\n"
                + "     VALUES(?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u.getUsername());
            st.setString(2, u.getPassword());
            st.setString(3, u.getEmail());
            st.setString(4, u.getPhoneNumber());
            st.setInt(5, u.getRole());
            ResultSet rs = st.executeQuery();
            return u;
        } catch (SQLException e) {
        }
        return null;
    }
    
    public User checkUsername(User u){
        String sql = "SELECT * FROM [User] where username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u.getUsername());
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                return u;
            }
        } catch (SQLException e) {
        }
        return null;
    }
    
    public User checkEmail(User u){
        String sql = "SELECT * FROM [User] where email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u.getEmail());
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                return u;
            }
        } catch (SQLException e) {
        }
        return null;
    }
}
