//Created by Campus
package model;

import java.io.Serializable;

public class Client implements Serializable {
    private int id;
    private String fullName, username, password, linkImg, address, phoneNumber;

    public Client() {
    }

    public Client(int id, String fullName, String username, String password, String linkImg, String address, String phoneNumber) {
        this.id = id;
        this.fullName = fullName;
        this.username = username;
        this.password = password;
        this.linkImg = linkImg;
        this.address = address;
        this.phoneNumber = phoneNumber;
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLinkImg() {
        return linkImg;
    }

    public void setLinkImg(String linkImg) {
        this.linkImg = linkImg;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Override
    public String toString() {
        return "Client{" + "id=" + id + ", fullName=" + fullName + ", username=" + username + ", password=" + password + ", linkImg=" + linkImg + ", address=" + address + ", phoneNumber=" + phoneNumber + '}';
    }
    
}
