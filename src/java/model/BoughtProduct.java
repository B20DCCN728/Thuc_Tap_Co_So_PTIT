//Created by Campus
package model;

import java.io.Serializable;

public class BoughtProduct implements Serializable {
    private int id, orderID, quantity;
    private Product product;
    private float total;

    public BoughtProduct() {
    }

    public BoughtProduct(int id, int orderID, int quantity, Product product, float price) {
        this.id = id;
        this.orderID = orderID;
        this.quantity = quantity;
        this.product = product;
    }

    public float getTotal() {
        total = quantity * product.getPrice();
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Override
    public String toString() {
        return "BoughtProduct{" + "id=" + id + ", orderID=" + orderID + ", quantity=" + quantity + ", product=" + product.getName() + '}';
    }
     
}
