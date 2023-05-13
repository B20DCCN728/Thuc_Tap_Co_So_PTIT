//Created by Campus
package model;

/**
 *
 * @author PC
 */
public class Comment {
    private int id;
    private String fullName, title;

    public Comment() {
    }

    public Comment(int id, String fullName, String title) {
        this.id = id;
        this.fullName = fullName;
        this.title = title;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "Comment{" + "id=" + id + ", fullName=" + fullName + ", title=" + title + '}';
    }   
    
}
