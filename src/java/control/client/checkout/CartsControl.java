package control.client.checkout;

import DAO.OrderDAO;
import DAO.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.BoughtProduct;
import model.Client;
import model.Order;
import model.Product;

//@WebServlet("/carts")
public class CartsControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession mySession = request.getSession();
        try {
            ArrayList<BoughtProduct> listCart = (ArrayList<BoughtProduct>) mySession.getAttribute("listCart");
            System.out.println("Done");
            float totalCost = 0;

            for(int i = 0;i < listCart.size();i++) {
                Product product = listCart.get(i).getProduct();
                listCart.get(i).setProduct(new ProductDAO().getProductByID(product.getID()));
                totalCost += listCart.get(i).getTotal();
            }
            System.out.println(listCart);
            mySession.setAttribute("listCart", listCart);
            mySession.setAttribute("totalCost", totalCost); 
        } catch (Exception e) {
            e.printStackTrace();
        }      
        request.getRequestDispatcher("/carts.jsp").forward(request, response);
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        System.out.println("Open Post cart");
        HttpSession mySession = request.getSession();
        ArrayList<BoughtProduct> listCart = (ArrayList<BoughtProduct>) mySession.getAttribute("listCart");
        Client myAccount = (Client) mySession.getAttribute("myAccount");
        System.out.println(myAccount);
        
        Float cost = (Float) mySession.getAttribute("totalCost");
        float totalCost = 0;
        if(cost != null) {
            totalCost = cost.floatValue();
            System.out.println(totalCost);
            int quantity = 0;
            for(int i = 0;i < listCart.size();i++) {
                quantity += listCart.get(i).getQuantity();
            }

            System.out.println(quantity);
            Order order = new Order();
            order.setClient(myAccount);
            order.setListBoughtProduct(listCart);
            order.setTotalCost(totalCost);
            order.setQuantity(quantity);

            OrderDAO orderDAO = new OrderDAO();
            if(orderDAO.addOrder(order)) {
                response.getWriter().write("success");
                mySession.removeAttribute("listCart");
                mySession.removeAttribute("totalCost");
            }  
            else {
                response.getWriter().write("error");
            }
        } 
        else {
            response.getWriter().write("error");
        }
   }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
}
