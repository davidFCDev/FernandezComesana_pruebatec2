
package com.softtek.pruebatec2.servlets;

import com.softtek.pruebatec2.logic.Controller;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DeleteTurnSv", urlPatterns = {"/DeleteTurnSv"})
public class DeleteTurnSv extends HttpServlet {
    
    Controller control = new Controller();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Long id = Long.valueOf(request.getParameter("id"));
        
         try {
            control.deleteTurn(id);
        } catch (Exception ex) {
            Logger.getLogger(CitizenSv.class.getName()).log(Level.SEVERE, null, ex);
            System.err.println("Error: " + ex.getMessage());
            response.sendRedirect("error-page.jsp");
        }
        
        response.sendRedirect("turn-deleted.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
