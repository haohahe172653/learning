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
import model.Account;

/**
 *
 * @author may tinh cua hieu
 */
public class ManagerDAO extends DBContext {

    public List<Account> getLearners() {
        String sql = "select * from Account where role = 4";
        List<Account> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt("id"));
                a.setCreateDate(rs.getString("create_date"));
                a.setEmail(rs.getString("email"));
                a.setUsername(rs.getString("username"));
                a.setPassword(rs.getString("password"));
                a.setFirstName(rs.getString("first_name"));
                a.setLastName(rs.getString("last_name"));
                a.setPhoneNumber(rs.getString("phone_number"));
                a.setRole(rs.getInt("role"));
                a.setGender(rs.getBoolean("gender"));
                list.add(a);
            }
            connection.close();
        } catch (SQLException e) {

        }
        return list;
    }

    public static void main(String[] args) {
        ManagerDAO d = new ManagerDAO();
        List<Account> u = d.getLearners();
        for (Account account : u) {
            account.toString();
        }
    }
}
