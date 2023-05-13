package model;

import java.io.Serializable;

public class Account implements Serializable {
    private int uID;
    private String username, password, role;
    
    public Account() {
    }

    public Account(int uID, String username, String password, String role) {
        this.uID = uID;
        this.username = username;
        this.password = password;
        this.role = role;
    }
    
    public Account(int uID, String username, String password, int role) {
        this.uID = uID;
        this.username = username;
        this.password = password;
        if(role == 1) {
            this.role = "admin";
        }
        else {
            this.role = "user";
        }
    }
    
    public int getuID() {
        return uID;
    }

    public void setuID(int uID) {
        this.uID = uID;
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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" + "uID=" + uID + ", username=" + username + ", password=" + password + ", role=" + role + '}';
    }
 
}
