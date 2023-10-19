/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author asus
 */
public class Course {
    private String cId;
    private String cName;
    private String img;
    private String description;
    private String created_by;
    private int numberStudent;
    private boolean is_available;

    public Course() {
    }

    public Course(String cId, String cName, String img, String description, String created_by, int numberStudent, boolean is_available) {
        this.cId = cId;
        this.cName = cName;
        this.img = img;
        this.description = description;
        this.created_by = created_by;
        this.numberStudent = numberStudent;
        this.is_available = is_available;
    }

    public String getcId() {
        return cId;
    }

    public void setcId(String cId) {
        this.cId = cId;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCreated_by() {
        return created_by;
    }

    public void setCreated_by(String created_by) {
        this.created_by = created_by;
    }

    public int getNumberStudent() {
        return numberStudent;
    }

    public void setNumberStudent(int numberStudent) {
        this.numberStudent = numberStudent;
    }

    public boolean isIs_available() {
        return is_available;
    }

    public void setIs_available(boolean is_available) {
        this.is_available = is_available;
    }

    @Override
    public String toString() {
        return "Course{" + "cId=" + cId + ", cName=" + cName + ", img=" + img + ", description=" + description + ", created_by=" + created_by + ", numberStudent=" + numberStudent + ", is_available=" + is_available + '}';
    }

    
    
}
