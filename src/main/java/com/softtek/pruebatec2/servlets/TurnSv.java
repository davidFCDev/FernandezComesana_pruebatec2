package com.softtek.pruebatec2.servlets;

import com.softtek.pruebatec2.exceptions.CitizenNotFoundException;
import com.softtek.pruebatec2.logic.Controller;
import com.softtek.pruebatec2.logic.Turn;
import java.io.IOException;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.softtek.pruebatec2.logic.Citizen;
import java.time.format.DateTimeParseException;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet(name = "TurnSv", urlPatterns = {"/TurnSv"})
public class TurnSv extends HttpServlet {

    private final Controller control = new Controller();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String dateParam = request.getParameter("turnDate");
        String showAllParam = request.getParameter("showAll");
        String showFalseParam = request.getParameter("showFalse");
        String showTrueParam = request.getParameter("showTrue");

        /* Primero filtramos por la fecha seleccionada */
        if (dateParam != null && !dateParam.isEmpty()) {
            try {
                LocalDate date = LocalDate.parse(dateParam);
                List<Turn> turns = control.getTurnsByDate(date);

                /* Pasamos los filtros y se lo asignamos a una lista diferente
                Utilizamos streams para filtrar por el estado y los metemos en colecciones
                 */
                if (showAllParam != null) {
                    request.setAttribute("turns", turns);
                } else if (showFalseParam != null) {
                    List<Turn> falseTurns = turns.stream()
                            .filter(turn -> !turn.isTurnState())
                            .collect(Collectors.toList());
                    request.setAttribute("turns", falseTurns);
                } else if (showTrueParam != null) {
                    List<Turn> trueTurns;
                    trueTurns = turns.stream()
                            .filter(Turn::isTurnState)
                            .collect(Collectors.toList());
                    request.setAttribute("turns", trueTurns);
                } else {
                    request.setAttribute("turns", turns);
                }

            } catch (DateTimeParseException e) {
                System.err.println("Error: " + e.getMessage());
                response.sendRedirect("error-page.jsp");
            }
        }

        request.getRequestDispatcher("turn-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String dni = request.getParameter("citizen");
            LocalDate date = LocalDate.parse(request.getParameter("date"));
            String description = request.getParameter("description");

            /* Obtención del ciudadano por DNI y lo asignamos */
            Citizen citizen = control.getCitizenByDNI(dni);

            if (citizen == null) {
                throw new CitizenNotFoundException("Ciudadano no encontrado con DNI: " + dni);
            }

            Turn turn = new Turn();
            turn.setTurnDate(date);
            turn.setCitizen(citizen);
            turn.setDescription(description);

            control.createTurn(turn);

            response.sendRedirect("new-turn.jsp");

        } catch (CitizenNotFoundException e) {
            System.err.println("Error: " + e.getMessage());
            response.sendRedirect("error-page.jsp");

        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
            response.sendRedirect("error-page.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
