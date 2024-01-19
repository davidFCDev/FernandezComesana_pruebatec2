package com.softtek.pruebatec2.servlets;

import com.softtek.pruebatec2.logic.Controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.softtek.pruebatec2.logic.Citizen;
import javax.servlet.http.HttpSession;

@WebServlet(name = "EditCitizenSv", urlPatterns = {"/EditCitizenSv"})
public class EditCitizenSv extends HttpServlet {

    Controller control = new Controller();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String dni = request.getParameter("dni");
        Citizen citizen = control.getCitizenByDNI(dni);

        HttpSession mysession = request.getSession();
        mysession.setAttribute("editCitizen", citizen);

        response.sendRedirect("citizen-edit.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            String dni = request.getParameter("dni");

            Citizen citizen = (Citizen) request.getSession().getAttribute("editCitizen");
            citizen.setName(name);
            citizen.setSurname(surname);
            citizen.setDni(dni);

            control.updateCitizen(citizen);

            response.sendRedirect("citizen-list.jsp");
        } catch (IOException e) {
            System.err.println("Error: " + e.getMessage());
            response.sendRedirect("error-page.jsp");
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
