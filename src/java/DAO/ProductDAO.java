//Created by Campus
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Product;
import DAO.DBConnection;
import java.sql.Array;
import java.sql.Blob;
import java.sql.CallableStatement;
import java.sql.Clob;
import java.sql.DatabaseMetaData;
import java.sql.NClob;
import java.sql.SQLClientInfoException;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.sql.SQLXML;
import java.sql.Savepoint;
import java.sql.Statement;
import java.sql.Struct;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProductDAO {
    private Connection connection = null;
    private PreparedStatement preS = null;
    ResultSet result = null;
    
    public ProductDAO() {
        
    }
    
    public ArrayList<Product> getAllProducts(){
                
        ArrayList<Product> listProduct = new ArrayList<>();
        
        String query = "SELECT * FROM tblProducts";
        
        try {
            CategoryDAO categoryDAO = new CategoryDAO();
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            result = preS.executeQuery();
            while(result.next()){
                //add list items into ArrayList             
                listProduct.add(new Product(
                        result.getInt(1), 
                        result.getString(2), 
                        result.getString(3), 
                        result.getString(4), 
                        result.getString(5), 
                        result.getString(6), 
                        result.getFloat(7), 
                        result.getString(8), 
                        categoryDAO.getCategoryByID(result.getInt(9)),
                        result.getInt(10)
                ));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        System.out.println(listProduct);
        
        return listProduct;
    } 
    
    public ArrayList<Product> getAllProductsByCateID(int cateID){
        ArrayList<Product> listProduct = new ArrayList<>();
        
        String query = "SELECT * FROM tblProducts WHERE cateID = " + cateID;
            
        try {
            CategoryDAO categoryDAO = new CategoryDAO();
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            result = preS.executeQuery();
            while(result.next()) {
                //add list items into ArrayList             
                listProduct.add(new Product(
                    result.getInt(1), 
                    result.getString(2), 
                    result.getString(3), 
                    result.getString(4), 
                    result.getString(5), 
                    result.getString(6), 
                    result.getFloat(7), 
                    result.getString(8), 
                    categoryDAO.getCategoryByID(result.getInt(9)),
                    result.getInt(10)
                ));
            }
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return listProduct;
    }
    
    public Product getProductByID(int productID) {
        Product product = null;
        String query = "SELECT * FROM tblProducts WHERE id = ?";
        
        try {
            CategoryDAO categoryDAO = new CategoryDAO();
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            preS.setInt(1, productID);
            result = preS.executeQuery();
            if(result.next()){
                product = new Product(
                        result.getInt(1), 
                        result.getString(2), 
                        result.getString(3), 
                        result.getString(4), 
                        result.getString(5), 
                        result.getString(6), 
                        result.getFloat(7), 
                        result.getString(8), 
                        categoryDAO.getCategoryByID(result.getInt(9)),
                        result.getInt(10)                   
                    );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return product;
    }
    
    public ArrayList<Product> searchProduct(String productName) {
        ArrayList<Product> listProduct = new ArrayList<>();
        String query = "SELECT * FROM tblProducts WHERE name LIKE ? ";
        
        try {
            CategoryDAO categoryDAO = new CategoryDAO();
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            preS.setString(1, "%" + productName + "%");
            result = preS.executeQuery();
            while(result.next()) {
                listProduct.add(new Product(
                    result.getInt(1), 
                    result.getString(2), 
                    result.getString(3), 
                    result.getString(4), 
                    result.getString(5), 
                    result.getString(6), 
                    result.getFloat(7), 
                    result.getString(8), 
                    categoryDAO.getCategoryByID(result.getInt(9)),
                    result.getInt(10)
                ));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return listProduct;
    }
 
    public ArrayList<Product> getPropose2Product(int productID, int categoryID) {
        ArrayList<Product> listProduct = new ArrayList<>();
        String query = "SELECT  TOP 2 * FROM dbo.tblProducts WHERE dbo.tblProducts.cateID = ? AND dbo.tblProducts.id != ?;";
        
        try {
            CategoryDAO categoryDAO = new CategoryDAO();
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            preS.setInt(1, categoryID);
            preS.setInt(2, productID);
            result = preS.executeQuery();
            while(result.next()) {
                listProduct.add(new Product(
                    result.getInt(1), 
                    result.getString(2), 
                    result.getString(3), 
                    result.getString(4), 
                    result.getString(5), 
                    result.getString(6), 
                    result.getFloat(7), 
                    result.getString(8), 
                    categoryDAO.getCategoryByID(result.getInt(9)),
                    result.getInt(10)
                ));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return listProduct;
    }
    
    public ArrayList<Product> sortProductByASC() {
        ArrayList<Product> listProduct = new ArrayList<>();
        String query = "SELECT * FROM dbo.tblProducts ORDER BY price ASC;";
        
        try {
            CategoryDAO categoryDAO = new CategoryDAO();
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            result = preS.executeQuery();
            while(result.next()) {
                listProduct.add(new Product(
                    result.getInt(1), 
                    result.getString(2), 
                    result.getString(3), 
                    result.getString(4), 
                    result.getString(5), 
                    result.getString(6), 
                    result.getFloat(7), 
                    result.getString(8), 
                    categoryDAO.getCategoryByID(result.getInt(9)),
                    result.getInt(10)
                ));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return listProduct;
    }
    public ArrayList<Product> sortProductByDESC() {
        ArrayList<Product> listProduct = new ArrayList<>();
        String query = "SELECT * FROM dbo.tblProducts ORDER BY price DESC;";
        
        try {
            CategoryDAO categoryDAO = new CategoryDAO();
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            result = preS.executeQuery();
            while(result.next()) {
                listProduct.add(new Product(
                    result.getInt(1), 
                    result.getString(2), 
                    result.getString(3), 
                    result.getString(4), 
                    result.getString(5), 
                    result.getString(6), 
                    result.getFloat(7), 
                    result.getString(8), 
                    categoryDAO.getCategoryByID(result.getInt(9)),
                    result.getInt(10)
                ));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return listProduct;
    }  
    
    public ArrayList<Product> searchProductSortByASC(String productName) {
        ArrayList<Product> listProduct = new ArrayList<>();
//        String query = "SELECT * FROM tblProducts WHERE name LIKE ? ORDER BY price ASC";
        String query = "SELECT * FROM tblProducts WHERE name LIKE ? ORDER BY price ASC;";
        
        try {
            CategoryDAO categoryDAO = new CategoryDAO();
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            preS.setString(1, "%" + productName + "%");
            result = preS.executeQuery();
            while(result.next()) {
                listProduct.add(new Product(
                    result.getInt(1), 
                    result.getString(2), 
                    result.getString(3), 
                    result.getString(4), 
                    result.getString(5), 
                    result.getString(6), 
                    result.getFloat(7), 
                    result.getString(8), 
                    categoryDAO.getCategoryByID(result.getInt(9)),
                    result.getInt(10)
                ));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return listProduct;
    }

    public ArrayList<Product> searchProductSortByDESC(String productName) {
    ArrayList<Product> listProduct = new ArrayList<>();
//        String query = "SELECT * FROM tblProducts WHERE name LIKE ? ORDER BY price ASC";
    String query = "SELECT * FROM tblProducts WHERE name LIKE ? ORDER BY price DESC;";
        
    try {
        CategoryDAO categoryDAO = new CategoryDAO();
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            preS.setString(1, "%" + productName + "%");
            result = preS.executeQuery();
            while(result.next()) {
                listProduct.add(new Product(
                    result.getInt(1), 
                    result.getString(2), 
                    result.getString(3), 
                    result.getString(4), 
                    result.getString(5), 
                    result.getString(6), 
                    result.getFloat(7), 
                    result.getString(8), 
                    categoryDAO.getCategoryByID(result.getInt(9)),
                    result.getInt(10)
                ));
                
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return listProduct;
    }
    
}
