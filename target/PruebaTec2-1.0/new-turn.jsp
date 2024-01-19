<%@page import="java.util.ArrayList"%>
<%@page import="com.softtek.pruebatec2.logic.Citizen"%>
<%@page import="java.util.List"%>
<%@page import="com.softtek.pruebatec2.logic.Controller"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="includes/header.jsp" %>
    <body class="sb-nav-fixed">
        <%@include file="includes/topbar.jsp" %>
        <div id="layoutSidenav">
            <%@include file="includes/sidebar.jsp" %>
            <div id="layoutSidenav_content">
                <main class="d-flex align-items-center">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-4">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Nuevo Turno</h3></div>
                                    <div class="card-body">
                                        <form action="TurnSv" method="post">
                                            <div class="mb-3">
                                                <div class="mb-3" class="form-label">
                                                    <label for="date" class="form-label">Fecha</label>
                                                    <input class="form-control" id="date" name="date" type="date" required />
                                                </div>
                                                <div class="mb-3">
                                                    <label for="surname" class="form-label">Elige ciudadano:</label>
                                                    <select class="form-select" id="citizen" name="citizen" required>
                                                        <option value="">Selecciona ciudadano</option>
                                                        <%
                                                            Controller co = new Controller();
                                                            List<Citizen> citizenList = new ArrayList<>(co.getCitizens());
                                                            for (Citizen cit : citizenList) {
                                                        %>
                                                        <option value="<%=cit.getDni()%>"><%=cit.getName()%> <%=cit.getSurname()%></option>
                                                        <% }%>
                                                    </select>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="description" class="form-label">Descripción de la gestión:</label>
                                                    <textarea class="form-control" id="description" name="description" rows="4" required></textarea>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <button type="submit" class="btn btn-dark w-100">Enviar</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <%@include file="includes/scripts.jsp" %>
    </body>
</html>
