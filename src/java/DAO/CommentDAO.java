//Created by Campus
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Comment;
import model.Product;

/**
 *
 * @author PC
 */
public class CommentDAO {
    private Connection connection = null;
    private PreparedStatement preS = null;
    ResultSet result = null;

    public CommentDAO() {
    }
    
    public ArrayList<Comment> getCommentbyProductID(int productID){
                
        ArrayList<Comment> listComment = new ArrayList<>();
        
        String query = "SELECT tblComments.id, tblClients.fullName, tblComments.title FROM tblComments "
                        + "INNER JOIN tblClients "
                        + "ON tblComments.idProduct = ? "
                        + "AND tblClients.id = tblComments.idClient "
                        + "ORDER BY tblComments.createdDate ASC;";
        
        try {
            connection = new DBConnection().getConnection();
            preS = connection.prepareStatement(query);
            preS.setInt(1, productID);
            result = preS.executeQuery();
            while(result.next()){
                listComment.add(new Comment(
                        result.getInt(1), 
                        result.getString(2), 
                        result.getString(3)
                ));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }        
        return listComment;
    } 
}
