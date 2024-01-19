<%@page import="java.util.List"%>
<%@page import="com.softtek.pruebatec2.logic.Turn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="includes/header.jsp" %>
    <body class="sb-nav-fixed">
        <%@include file="includes/topbar.jsp" %>
        <div id="layoutSidenav">
            <%@include file="includes/sidebar.jsp" %>
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
                                <input type="date" class="form-control" aria-describedby="button-addon2" id="turnDate" name="turnDate">
                            </div>
                            <div class="mb-3 d-flex justify-content-between">
                                <button class="btn btn-secondary px-4" type="submit" name="showAll" id="button-addon2">Todos</button>
                                <button class="btn btn-danger px-3" type="submit" name="showFalse" id="button-addon2">En Espera</button>
                                <button class="btn btn-success px-3" type="submit" name="showTrue" id="button-addon2">Atendidos</button>
                            </div>
                        </form>

                        <div>
                            <p>¡El turno se ha eliminado correctamente!</p>
                        </div>
                        
                    </div>
                </main>
            </div>
        </div>
        <%@include file="includes/scripts.jsp" %>
    </body>
</html>



