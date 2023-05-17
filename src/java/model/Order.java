//Created by Campus
package model;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

public class Order implements Serializable {
    private int id, quantity;
    private Client client;
    private Date createdDate;
    private ArrayList<BoughtProduct> listBoughtProduct;
    private float totalCost;

    public Order() {
    }

    public Order(int id, Client client, Date createdDate, ArrayList<BoughtProduct> listBoughtProduct, int quantity, float totalCost) {
        this.id = id;
        this.quantity = quantity;
        this.client = client;
        this.createdDate = createdDate;
        this.listBoughtProduct = listBoughtProduct;
        this.totalCost = totalCost;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public ArrayList<BoughtProduct> getListBoughtProduct() {
        return listBoughtProduct;
    }

    public void setListBoughtProduct(ArrayList<BoughtProduct> listBoughtProduct) {
        this.listBoughtProduct = listBoughtProduct;
    }

    public float getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(float totalCost) {
        this.totalCost = totalCost;
    }
    
    public void setClient(Client client) {
        this.client = client;
    }
    
    public Client getClient() {
        return client;
    }
    
    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", quantity=" + quantity + ", createdDate=" + createdDate + ", listBoughtProduct=" + listBoughtProduct + ", totalCost=" + totalCost + '}';
    }

}
