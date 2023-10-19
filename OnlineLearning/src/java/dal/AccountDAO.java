//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import model.AccountDetail;
//
//public class AccountDAO {
//    private DBContext dbContext;
//    
//    public AccountDAO() {
//        dbContext = new DBContext();
//    }
//    
//    public AccountDetail getAccountDetailByAid(int aid) {
//        AccountDetail accountDetail = null;
//        Connection connection = null;
//        PreparedStatement statement = null;
//        ResultSet resultSet = null;
//        
//        try {
//
//            connection = dbContext.getConnection();
//
//            String query = "SELECT * FROM AccountDetail WHERE aid = ?";
//            statement = connection.prepareStatement(query);
//            statement.setInt(1, aid);
//            resultSet = statement.executeQuery();
//
//            if (resultSet.next()) {
//                accountDetail = new AccountDetail();
//                accountDetail.setAdid(resultSet.getInt("adid"));
//                accountDetail.setName(resultSet.getString("name"));
//                accountDetail.setDob(resultSet.getDate("dob"));
//                accountDetail.setEmail(resultSet.getString("email"));
//                accountDetail.setPhone(resultSet.getString("phone"));
//                accountDetail.setAddress(resultSet.getString("address"));
//                accountDetail.setAid(aid);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        } finally {
//
//            dbContext.close(resultSet, statement, connection);
//        }
//        
//        return accountDetail;
//    }
//    
//    public void updateAccountDetail(AccountDetail accountDetail) {
//        Connection connection = null;
//        PreparedStatement statement = null;
//        
//        try {
//
//            connection = dbContext.getConnection();
//            
//
//            String query = "UPDATE AccountDetail SET name = ?, dob = ?, email = ?, phone = ?, address = ? WHERE aid = ?";
//            statement = connection.prepareStatement(query);
//            statement.setString(1, accountDetail.getName());
//            statement.setDate(2, new java.sql.Date(accountDetail.getDob().getTime()));
//            statement.setString(3, accountDetail.getEmail());
//            statement.setString(4, accountDetail.getPhone());
//            statement.setString(5, accountDetail.getAddress());
//            statement.setInt(6, accountDetail.getAid());
//            statement.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        } finally {
//            dbContext.close(null, statement, connection);
//        }
//    }
//}