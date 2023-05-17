//Created by Campus
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.BoughtProduct;
import java.sql.Statement;
import model.Client;
import model.Order;
import model.Product;

/**
 *
 * @author PC
 */
public class OrderDAO {
    
    Connection connection = null;
    ResultSet result = null;
    PreparedStatement preS = null;
    
    public boolean addOrder(Order order) {
        boolean check = false;
        
        String setOrderQuery = "INSERT INTO [Thuc_Tap_Co_So].[dbo].[tblOrders] VALUES (?, GETDATE(), ?, ?);";
        String setBoughtProductQuery = "INSERT INTO [Thuc_Tap_Co_So].[dbo].[tblBoughtProducts] VALUES (?, ?, ?, ?);";
        String setQuantity = "UPDATE [Thuc_Tap_Co_So].[dbo].[tblProducts] SET quantity=? WHERE id=?;";
        String getQuantity = "SELECT quantity FROM [Thuc_Tap_Co_So].[dbo].[tblProducts] WHERE id=?;";
        
        try {
            connection = new DBConnection().getConnection();
            //Setup Transaction
            connection.setAutoCommit(false);
            
            preS = connection.prepareStatement(setOrderQuery, Statement.RETURN_GENERATED_KEYS);
            preS.setInt(1, order.getClient().getId());
            preS.setInt(2, order.getQuantity());
            preS.setFloat(3, order.getTotalCost());
            preS.executeUpdate();
            
            result = preS.getGeneratedKeys();
            result.next();
            int orderID = result.getInt(1);
            
            System.out.println(orderID);
            ArrayList<BoughtProduct> listCart = order.getListBoughtProduct();
            for(int i = 0;i < listCart.size();i++) {
                preS = connection.prepareStatement(setBoughtProductQuery);
                preS.setInt(1, listCart.get(i).getProduct().getID());
                preS.setInt(2, orderID);
                preS.setInt(3, listCart.get(i).getQuantity());
                preS.setFloat(4, listCart.get(i).getProduct().getPrice());
                preS.executeUpdate();
            }
            
            for(int i = 0;i < listCart.size();i++) {
                preS = connection.prepareStatement(getQuantity);
                preS.setInt(1, listCart.get(i).getProduct().getID());
                result = preS.executeQuery();
                result.next();
                int quantity = result.getInt(1);     
                System.out.println(quantity);
                if(quantity < listCart.get(i).getQuantity()) {
                    connection.rollback();
                    connection.setAutoCommit(true);
                    return false;
                }        
                preS = connection.prepareStatement(setQuantity);
                preS.setInt(1, quantity - listCart.get(i).getQuantity());
                preS.setInt(2, listCart.get(i).getProduct().getID());
                preS.executeUpdate();
            }
            
            connection.commit();
            check = true;
            connection.setAutoCommit(true);
        } catch (Exception e) {
            e.printStackTrace();
            try {
                if(connection != null) {
                    connection.rollback();
                    connection.setAutoCommit(true);
                }
                connection.setAutoCommit(true);
            } catch (SQLException rollbackException) {
                System.out.println("Rollback transaction error!!");
            }
            
        } finally {
            try {
                
                if(preS != null) {
                    preS.close();
                }
                if(connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                System.out.println("Close connection error: " + e.getMessage());
            }
        }
        return check;
    }
    
    public ArrayList<Order> getOrderByClientID(int clientID) {
        ArrayList<Order> listOrder = null;
        
        String query = "SELECT * FROM [Thuc_Tap_Co_So].[dbo].[tblOrders] WHERE idClient = ?";
        
        try {
            CategoryDAO categoryDAO = new CategoryDAO();
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            preS.setInt(1, clientID);
            result = preS.executeQuery();
            listOrder = new ArrayList<>();
            while(result.next()){
                //add list items into ArrayList 
                Order order = new Order();
                order.setId(result.getInt(1));
                order.setCreatedDate(result.getDate(3));
                order.setQuantity(result.getInt(4));
                order.setTotalCost(result.getFloat(5));
                listOrder.add(order);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }  
        return listOrder;
    }
}
