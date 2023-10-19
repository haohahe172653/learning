/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit5TestClass.java to edit this template
 */
package dal;

import java.util.List;
import model.Blog;
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
public class BlogDAOTest {
    
    BlogDAO d;
    
    public BlogDAOTest() {
        d = new BlogDAO();
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
     * Test of getBlog method, of class BlogDAO.
     */
    @Test
    public void testGetBlog() {
        System.out.println("getBlog");
        BlogDAO instance = new BlogDAO();
        List<Blog> expResult = d.getBlog();
        List<Blog> result = instance.getBlog();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getBlogById method, of class BlogDAO.
     */
    @Test
    public void testGetBlogById() {
        System.out.println("getBlogById");
        int id = 0;
        BlogDAO instance = new BlogDAO();
        Blog expResult = null;
        Blog result = instance.getBlogById(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getBlogByText method, of class BlogDAO.
     */
    @Test
    public void testGetBlogByText() {
        System.out.println("getBlogByText");
        String text = "";
        BlogDAO instance = new BlogDAO();
        List<Blog> expResult = null;
        List<Blog> result = instance.getBlogByText(text);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getNumberPage method, of class BlogDAO.
     */
    @Test
    public void testGetNumberPage() {
        System.out.println("getNumberPage");
        BlogDAO instance = new BlogDAO();
        int expResult = 0;
        int result = instance.getNumberPage();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPaging method, of class BlogDAO.
     */
    @Test
    public void testGetPaging() {
        System.out.println("getPaging");
        int index = 0;
        BlogDAO instance = new BlogDAO();
        List<Blog> expResult = null;
        List<Blog> result = instance.getPaging(index);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of main method, of class BlogDAO.
     */
    @Test
    public void testMain() {
        System.out.println("main");
        String[] args = null;
        BlogDAO.main(args);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
