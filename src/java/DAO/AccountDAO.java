//Creadted by Campus
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

public class AccountDAO extends DBConnection {
    
    Connection connection = null;
    ResultSet result = null;
    PreparedStatement preS = null;
    
    public Account checkLogin(String username, String password) {
        Account myAccount = null;
        
        String query = "SELECT * FROM [Wish].[dbo].[Account] WHERE [user] = ? AND [pass] = ? ;";
        
        try {
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            preS.setString(1, username);
            preS.setString(2, password);           
            result = preS.executeQuery();
            if(result.next()){       
                myAccount = new Account(
                        result.getInt(1),
                        result.getString(2), 
                        result.getString(3), 
                        result.getInt(4)
                ); 
            }
        } catch (Exception e) {
            e.printStackTrace();
        }        
        return myAccount;
    }
    
    public boolean checkAccountExist(String username) {
        
        String query = "SELECT * FROM [Wish].[dbo].[Account] WHERE [user] = ?";
        
        try {
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            preS.setString(1, username);          
            result = preS.executeQuery();
            if(result.next()){       
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }        
        return false;
    }
    
    public boolean registerAccount(String username, String password) {

        String query = "INSERT INTO [Wish].[dbo].[Account] values(?, ?, 0);";
        
        try {
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            preS.setString(1, username);
            preS.setString(2, password);           
            preS.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }       
    }
    
}
