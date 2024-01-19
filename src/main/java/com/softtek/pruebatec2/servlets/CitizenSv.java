package com.softtek.pruebatec2.servlets;

import com.softtek.pruebatec2.logic.Citizen;
import com.softtek.pruebatec2.logic.Controller;
import com.softtek.pruebatec2.persistence.exceptions.PreexistingEntityException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CitizenSv", urlPatterns = {"/CitizenSv"})
public class CitizenSv extends HttpServlet {

    private final Controller control = new Controller();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Citizen> citizens = control.getCitizens();
        request.setAttribute("citizens", citizens);

        request.getRequestDispatcher("citizen-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String dni = request.getParameter("dni");

        Citizen citizen = new Citizen();
        citizen.setName(name);
        citizen.setSurname(surname);
        citizen.setDni(dni);

        /* Validacion de Ciudadano y redirecciones pertinentes */
        try {
            control.createCitizen(citizen);
            response.sendRedirect("new-citizen.jsp"); 
        } catch (PreexistingEntityException e) {
            request.setAttribute("errorMensaje", "El DNI ya existe. Por favor, elija otro.");
            request.getRequestDispatcher("citizen-duplicated.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(CitizenSv.class.getName()).log(Level.SEVERE, null, ex);
            response.sendRedirect("error-page.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
