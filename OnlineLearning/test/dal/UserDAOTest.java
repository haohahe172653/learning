/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit5TestClass.java to edit this template
 */
package dal;

import model.Account;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author may tinh cua hieu
 */
public class UserDAOTest {
    
    UserDAO d;
    
    public UserDAOTest() {
        d = new UserDAO();
    }
    
    @BeforeAll
    public static void setUpClass() {
    }
    
    @AfterAll
    public static void tearDownClass() {
    }
    
    @BeforeEach
    public void setUp() {
    }
    
    @AfterEach
    public void tearDown() {
    }

    /**
     * Test of checkExist method, of class UserDAO.
     */
    @Test
//    public void testCheckExist() {
//        System.out.println("checkExist");
//        String email = "";
//        UserDAO instance = new UserDAO();
//        boolean expResult = false;
//        boolean result = instance.checkExist(email);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of updatePass method, of class UserDAO.
//     */
//    @Test
//    public void testUpdatePass() {
//        System.out.println("updatePass");
//        String parameter = "";
//        String pass_one = "";
//        UserDAO instance = new UserDAO();
//        instance.updatePass(parameter, pass_one);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of checkAccountExist method, of class UserDAO.
//     */
//    @Test
//    public void testCheckAccountExist() {
//        System.out.println("checkAccountExist");
//        String username = "";
//        UserDAO instance = new UserDAO();
//        boolean expResult = false;
//        boolean result = instance.checkAccountExist(username);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of checkAccount method, of class UserDAO.
//     */
//    @Test
    public void testCheckAccount() {
        System.out.println("checkAccount");
        String username = "tranhieu299200";
        String password = "anhyeuem123";
        UserDAO instance = new UserDAO();
        boolean expResult = true;
        boolean result = instance.checkAccount(username, password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
//
//    /**
//     * Test of getAccount method, of class UserDAO.
//     */
//    @Test
//    public void testGetAccount() {
//        System.out.println("getAccount");
//        String username = "";
//        String password = "";
//        UserDAO instance = new UserDAO();
//        Account expResult = null;
//        Account result = instance.getAccount(username, password);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of checkUsername method, of class UserDAO.
//     */
//    @Test
//    public void testCheckUsername() {
//        System.out.println("checkUsername");
//        String username = "";
//        UserDAO instance = new UserDAO();
//        boolean expResult = false;
//        boolean result = instance.checkUsername(username);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of checkPassword method, of class UserDAO.
//     */
//    @Test
//    public void testCheckPassword() {
//        System.out.println("checkPassword");
//        String password = "";
//        UserDAO instance = new UserDAO();
//        boolean expResult = false;
//        boolean result = instance.checkPassword(password);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//
//    /**
//     * Test of main method, of class UserDAO.
//     */
//    @Test
//    public void testMain() {
//        System.out.println("main");
//        String[] args = null;
//        UserDAO.main(args);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
//    
}
