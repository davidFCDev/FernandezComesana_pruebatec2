<%@page import="com.softtek.pruebatec2.logic.Citizen"%>
<%@page import="java.util.List"%>
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
                        <h2 class="mt-4">Ciudadanos</h2>
                        <br>
                        <div class=" mb-4 ">
                            Lista de usuarios registrados previamente en la base de datos.
                        </div>
                        <form action ="CitizenSv" method="get">
                            <button type="submit" class="btn btn-dark mb-4">Mostrar Tabla</button>            
                        </form>
                        <% if (request.getAttribute("citizens") != null) {%>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                Registro
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple" >
                                    <thead>
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Apellidos</th>
                                            <th>DNI</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Apellidos</th>
                                            <th>DNI</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <% for (Citizen citizen : (List<Citizen>) request.getAttribute("citizens")) {%>
                                        <tr>
                                            <td><%=citizen.getName()%></td>
                                            <td><%=citizen.getSurname()%></td>
                                            <td><%=citizen.getDni()%></td>
                                            <td>
                                                <form action="EditCitizenSv" method="get">
                                                    <input type="hidden" name="dni" value="<%=citizen.getDni()%>">
                                                    <button class="btn btn-outline-secondary px-4" type="submit" style="font-size: 10px; font-weight: 600">
                                                        Editar
                                                    </button>
                                                </form>
                                            </td>
                                            <td>
                                                <form action="DeleteCitizenSv" method="post">
                                                    <input type="hidden" name="dni" value="<%=citizen.getDni()%>">
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
                        <% }%>
                    </div>
                </main>
            </div>
        </div>
        <%@include file="scripts.jsp" %>
    </body>
</html>
