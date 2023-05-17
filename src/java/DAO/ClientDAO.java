//Created by Campus
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Client;

public class ClientDAO {
    
    Connection connection = null;
    ResultSet result = null;
    PreparedStatement preS = null;
    
    public Client checkLogin(String username, String password) {
        Client myAccount = null;
        
        String query = "SELECT * FROM [Thuc_Tap_Co_So].[dbo].[tblClients] WHERE [username] = ? AND [password] = ? ;";
        
        try {
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            preS.setString(1, username);
            preS.setString(2, password);           
            result = preS.executeQuery();
            if(result.next()){       
                myAccount = new Client ();
                myAccount.setId(result.getInt(1));
                myAccount.setFullName(result.getString(2));
                myAccount.setUsername(result.getString(3));
                myAccount.setPassword(result.getString(4));
                myAccount.setAddress(result.getString(7));
                myAccount.setPhoneNumber(result.getString(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }        
        return myAccount;
    }
    
    public boolean checkAccountExist(String username) {
        
        String query = "SELECT * FROM [Thuc_Tap_Co_So].[dbo].[tblClients] WHERE [username] = ?";
        
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
    
    public boolean registerAccount(Client client) {

        String query = "INSERT INTO [Thuc_Tap_Co_So].[dbo].[tblClients] values(?, ?, ?, null, ?, ?);";
        
        System.out.println(client);
        
        try {
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            preS.setString(1, client.getFullName());
            preS.setString(2, client.getUsername());
            preS.setString(3, client.getPassword());    
            preS.setString(4, client.getAddress()); 
            preS.setString(5, client.getPhoneNumber()); 
            preS.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }       
    }
}
