/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author may tinh cua hieu
 */
public class Blog {
    private int id;
    private String title, content, img, createDate, author;

    public Blog() {
    }

    public Blog(int id, String title, String content, String img, String createDate, String author) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.img = img;
        this.createDate = createDate;
        this.author = author;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

 
    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }     

    @Override
    public String toString() {
        return "Blog{" + "id=" + id + ", title=" + title + ", content=" + content + ", img=" + img + ", createDate=" + createDate + ", author=" + author + '}';
    }
    
    
}