//Created by Campus
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    /*Insert your other code right after this comment*/
    /*Change/update information of your database connection, DO NOT change name of instance variables in this class*/
    
    private Connection connection = null;
    
    public DBConnection(){
        
    }  
   
    public Connection getConnection() throws Exception {
        String urlDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"; // url Driver MySql
        String url = "jdbc:sqlserver://" + "CAMPUS" + ":" + "1433" + ";databaseName=Thuc_Tap_Co_So;username=sa;password=123456;trustServerCertificate=true";
        String userName = "sa";
        String passWord = "123456";        
        if(connection == null){ 
            try {
                Class.forName(urlDriver);
                connection = DriverManager.getConnection(url);                 
            } catch (Exception e) {
                e.printStackTrace(); 
            }
        }
        return connection;
    }   
    
}
