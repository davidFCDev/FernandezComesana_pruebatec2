<%@page import="java.util.List"%>
<%@page import="com.softtek.pruebatec2.logic.Turn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="header.jsp" %>
    <body class="sb-nav-fixed">
        <%@include file="topbar.jsp" %>
        <div id="layoutSidenav">
            <%@include file="sidebar.jsp" %>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h2 class="mt-4">Turnos</h2>
                        <br>
                        <div class=" mb-4 ">
                            Turnos registrados en la base de datos. Selecciona una fecha y un estado.
                        </div>
                        <form action="TurnSv" method="get" class="col-md-3">
                            <div class="input-group mb-3">
                                <input type="date" class="form-control" aria-describedby="button-addon2" id="turnDate" name="turnDate" required />
                            </div>
                            <div class="mb-3 d-flex justify-content-between">
                                <button class="btn btn-secondary px-4" type="submit" name="showAll" id="button-addon2">Todos</button>
                                <button class="btn btn-outline-danger px-3" type="submit" name="showFalse" id="button-addon2">En Espera</button>
                                <button class="btn btn-outline-success px-3" type="submit" name="showTrue" id="button-addon2">Atendidos</button>
                            </div>
                        </form>


                        <%
                            List<Turn> turns = (List<Turn>) request.getAttribute("turns");

                            if (turns != null) {
                                if (turns.isEmpty()) {
                        %>
                        <div class="alert alert-danger mt-4 col-md-3" role="alert">
                            No se han encontrado turnos.
                        </div>
                        <%
                        } else {
                        %>
                        <div class="card mb-4">
                            <div class="card-header d-flex justify-content-between align-items-center">
                                <div>
                                    <i class="fas fa-table me-1"></i>
                                    Registro
                                </div>
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Número</th>
                                            <th>Fecha</th>
                                            <th>Descripción</th>
                                            <th>Ciudadano</th>
                                            <th>Estado</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Número</th>
                                            <th>Fecha</th>
                                            <th>Descripción</th>
                                            <th>Ciudadano</th>
                                            <th>Estado</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <% for (Turn turn : turns) {%>
                                        <tr>
                                            <td><%= turn.getId()%></td>
                                            <td><%= turn.getTurnDate()%></td>
                                            <td><%= turn.getDescription()%></td>
                                            <td>
                                                <% if (turn.getCitizen() == null) {%>
                                                <%= "Usuario Eliminado"%>
                                                <% } else {%>
                                                <%= turn.getCitizen().getName()%><%= " "%><%= turn.getCitizen().getSurname()%>
                                                <% } %>
                                            </td>

                                            <td>
                                                <div style="display: flex; justify-content: space-between; align-items: center">
                                                    <% if (turn.isTurnState() == false) { %>
                                                    <div class="text-danger fw-semibold">En espera</div>
                                                    <% } else { %>
                                                    <div class="text-success fw-semibold">Atendido</div>
                                                    <% }%>
                                                </div>
                                            </td>
                                            <td>
                                                <form action="EditTurnSv" method="get">
                                                    <input type="hidden" name="id" value="<%=turn.getId()%>">
                                                    <button class="btn btn-outline-secondary px-4" type="submit" style="font-size: 10px; font-weight: 600">
                                                        Editar
                                                    </button>
                                                </form>
                                            </td>
                                            <td>
                                                <form action="DeleteTurnSv" method="post">
                                                    <input type="hidden" name="id" value="<%=turn.getId()%>">
                                                    <button class="btn btn-outline-danger px-4" type="submit" style="font-size: 10px; font-weight: 600">
                                                        Eliminar
                                                    </button>
                                                </form>
                                            </td>
                                        </tr>
                                        <% }%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <%
                                }
                            }
                        %>
                    </div>
                </main>
            </div>
        </div>
        <%@include file="scripts.jsp" %>
    </body>
</html>
