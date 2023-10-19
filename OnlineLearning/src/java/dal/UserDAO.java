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
import java.util.regex.*;
import model.Account;
import model.User;

/**
 *
 *
 */
public class UserDAO extends DBContext {

    public boolean checkExist(String email) {

        String sql = "select * from Account u where u.email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }
//    public static void main(String[] args) {
//        System.out.println(new UserDAO().checkExist("haoanhhoang2110@gmail.com"));
//    }
//

    public void updatePass(String parameter, String pass_one) {
        String sql = "update Account set password = ? where email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pass_one);
            st.setString(2, parameter);
            st.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public boolean checkAccountExist(String username) {
        boolean status = false;
        String sql = "select * from Account where username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                status = true;
            }
            connection.close();
        } catch (SQLException e) {

        }
        return status;
    }

    public boolean checkAccount(String username, String password) {
        String sql = "select * from Account where username = ? and password = ?";
        boolean status = false;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                status = true;
            }
        } catch (SQLException e) {

        }
        return status;
    }

    public Account getAccount(String username, String password) {
        String sql = "select * from Account where username = ? and password = ?";
        Account a = new Account();

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
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
                a.setDob(rs.getString("dob"));
            }
            connection.close();

        } catch (SQLException e) {

        }
        return a;
    }

    public Account LoginUser2(String username, String password) {
        String sql = "SELECT * FROM [User] where username = ? and password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account u = new Account();
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

    public Account LoginUser(String email, String password) {
        String sql = "SELECT * FROM [User] where email = ? and password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account u = new Account();
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

    public int getTotalNumAccount() {
        String sql = "SELECT * FROM [dbo].[Account]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            int i = 0;
            while (rs.next()) {
                i = i + 1;
            }
            return i;
        } catch (SQLException e) {

        }
        return 0;
    }

    public int RegisterAccount(Account a) {
        String sql = "INSERT INTO [dbo].[Account]([id],[username],[password],[email],[role])\n"
                + "VALUES(?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, getTotalNumAccount() + 1);
            st.setString(2, a.getUsername());
            st.setString(3, a.getPassword());
            st.setString(4, a.getEmail());
            st.setInt(5, 4);
            ResultSet rs = st.executeQuery();
            return 1;
        } catch (SQLException e) {
        }
        return 0;
    }

    public Account checkUsername(Account a) {
        String sql = "SELECT * FROM [Account] where username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getUsername());
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return a;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public Account checkEmail(Account a) {
        String sql = "SELECT * FROM [User] where email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getEmail());
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return a;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public boolean checkUsername(String username) {
        return !(username.contains(" ") || username.length() < 8 || username.length() > 16);
    }

    public boolean checkPassword(String password) {
        return !(password.contains(" ") || password.length() < 8 || password.length() > 16);
    }

    public void UpdateProfile(int id, String firstName, String lastName, String dob, String phoneNumber) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET         \n"
                + "      [first_name] = ?\n"
                + "      ,[last_name] = ?\n"
                + "      ,[phone_number] = ? \n"
                + "	  ,[dob] = ?'\n"
                + " WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, firstName);
            st.setString(2, lastName);
            st.setString(3, phoneNumber);
            st.setString(4, dob);
            st.setInt(5, id);
            st.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public boolean PhoneNumberValidator(String phoneNumber) {
        Pattern pattern = Pattern.compile("^(09|08|07)\\d{8}$");
        Matcher matcher = pattern.matcher(phoneNumber);
        return matcher.matches();
    }

    public boolean NameValidator(String input) {
        Pattern pattern = Pattern.compile("^[a-zA-Z\\s]+$");
        Matcher matcher = pattern.matcher(input);
        return matcher.matches();
    }

    public List<Account> getAllUser() {
        String sql = "select * from Account";
        List<Account> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt(1));
                a.setUsername(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setEmail(rs.getString(4));
                a.setFirstName(rs.getString(5));
                a.setLastName(rs.getString(6));
                a.setGender(rs.getBoolean(7));
                a.setPhoneNumber(rs.getString(8));
                a.setCreateDate(rs.getString(10));
                a.setRole(rs.getInt(11));
                a.setDob(rs.getString(12));
                a.setIsAvailable(rs.getBoolean(9));
                list.add(a);
            }
            connection.close();

        } catch (SQLException e) {

        }

        return list;
    }

    public List<Account> getLearners() {
        String sql = "select * from Account where role = 4";
        List<Account> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt(1));
                a.setUsername(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setEmail(rs.getString(4));
                a.setFirstName(rs.getString(5));
                a.setLastName(rs.getString(6));
                a.setGender(rs.getBoolean(7));
                a.setPhoneNumber(rs.getString(8));
                a.setCreateDate(rs.getString(10));
                a.setRole(rs.getInt(11));
                a.setDob(rs.getString(12));
                a.setIsAvailable(rs.getBoolean(9));
                list.add(a);
            }
            connection.close();

        } catch (SQLException e) {

        }
        return list;
    }

    public List<Account> getCourseManager() {
        String sql = "select * from Account where role = 3";
        List<Account> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt(1));
                a.setUsername(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setEmail(rs.getString(4));
                a.setFirstName(rs.getString(5));
                a.setLastName(rs.getString(6));
                a.setGender(rs.getBoolean(7));
                a.setPhoneNumber(rs.getString(8));
                a.setCreateDate(rs.getString(10));
                a.setRole(rs.getInt(11));
                a.setDob(rs.getString(12));
                a.setIsAvailable(rs.getBoolean(9));
                list.add(a);
            }
            return list;

        } catch (SQLException e) {

        }
        return list;
    }

    public void UnbanUser(int userId) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET is_available = 1\n"
                + " WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, userId);
            st.executeUpdate();
            connection.close();
        } catch (SQLException e) {

        }
    }

    public void BanUser(int userId) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET is_available = 0\n"
                + " WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, userId);
            st.executeUpdate();
            connection.close();
        } catch (SQLException e) {

        }
    }
    
    public List<Account> sortAccountById(List<Account> list) {
        
        return list;
    }

    public static void main(String[] args) {
        UserDAO d = new UserDAO();
        List<Account> list = d.getLearners();
        for (Account account : list) {
            System.out.println(account.toString());
        }
    }
}
