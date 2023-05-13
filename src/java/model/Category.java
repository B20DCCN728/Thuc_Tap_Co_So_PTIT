//Created by Campus
package model;

import java.io.Serializable;


public class Category implements Serializable {
    private int id;
    private String name, title, description;

    public Category() {
    }
    
    public Category(int id, String name, String title, String desciption) {
        this.id = id;
        this.name = name;
        this.title = title;
        this.description = desciption;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Category{" + "id=" + id + ", name=" + name + '}';
    }

}
