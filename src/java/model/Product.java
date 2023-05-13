//Created by Campus
package model;

import java.io.Serializable;
import jdk.internal.org.objectweb.asm.commons.StaticInitMerger;

public class Product implements Serializable {
    private int ID, intPrice, quantity;
    private float price;
    private String name, imgLink1, imgLink2, title, description, address;
    private Category category;

    public Product() {
    }

    public Product(int ID, String name, String imgLink1, String imgLink2, String title, String description, float price, String address, Category category, int quantity) {
        this.ID = ID;
        this.name = name;
        this.imgLink1 = imgLink1;
        this.imgLink2 = imgLink2;
        this.title = title;
        this.description = description;
        this.price = price;
        this.intPrice = (int) price;
        this.address = address;
        this.category = category;
        this.quantity = quantity;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getIntPrice() {
        return intPrice;
    }

    public void setIntPrice(int intPrice) {
        this.intPrice = intPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImgLink1() {
        return imgLink1;
    }

    public void setImgLink1(String imgLink1) {
        this.imgLink1 = imgLink1;
    }

    public String getImgLink2() {
        return imgLink2;
    }

    public void setImgLink2(String imgLink2) {
        this.imgLink2 = imgLink2;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Product{" + "ID=" + ID + ", intPrice=" + intPrice + ", quantity=" + quantity + ", price=" + price + ", name=" + name + ", imgLink1=" + imgLink1 + ", imgLink2=" + imgLink2 + ", title=" + title + ", description=" + description + ", address=" + address + ", category=" + category + '}';
    }
     
}
