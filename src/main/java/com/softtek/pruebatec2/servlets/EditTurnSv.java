package com.softtek.pruebatec2.servlets;

import com.softtek.pruebatec2.exceptions.CitizenNotFoundException;
import com.softtek.pruebatec2.logic.Citizen;
import com.softtek.pruebatec2.logic.Controller;
import com.softtek.pruebatec2.logic.Turn;
import java.io.IOException;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "EditTurnSv", urlPatterns = {"/EditTurnSv"})
public class EditTurnSv extends HttpServlet {

    Controller control = new Controller();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Long id = Long.valueOf(request.getParameter("id"));
        Turn turn = control.getTurnById(id);

        HttpSession mysession = request.getSession();
        mysession.setAttribute("editTurn", turn);

        response.sendRedirect("turn-edit.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String dni = request.getParameter("citizen");
            LocalDate date = LocalDate.parse(request.getParameter("date"));
            String description = request.getParameter("description");
            boolean turnState = Boolean.parseBoolean(request.getParameter("turnState"));

            Citizen citizen = control.getCitizenByDNI(dni);

            if (citizen == null) {
                throw new CitizenNotFoundException("Ciudadano no encontrado con DNI: " + dni);
            }

            Turn turn = (Turn) request.getSession().getAttribute("editTurn");
            turn.setTurnDate(date);

            /* Obtención del ciudadano por DNI y asignación */
            turn.setCitizen(citizen);
            turn.setDescription(description);
            turn.setTurnState(turnState);

            control.updateTurn(turn);

            response.sendRedirect("turn-list.jsp");

        } catch (CitizenNotFoundException | IOException e) {
            System.err.println("Error: " + e.getMessage());
            response.sendRedirect("error-page.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
