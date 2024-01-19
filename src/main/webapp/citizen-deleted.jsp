
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
                        <h2 class="mt-4">Ciudadanos</h2>
                        <br>
                        <div class=" mb-4 ">
                            Lista de usuarios registrados previamente en la base de datos.
                        </div>
                        <form action ="CitizenSv" method="get">
                            <button type="submit" class="btn btn-dark mb-4">Mostrar Tabla</button>            
                        </form>

                        <div>
                            <p>¡El ciudadano se ha eliminado correctamente!</p>
                        </div>

                    </div>
                </main>
            </div>
        </div>
        <%@include file="includes/scripts.jsp" %>
    </body>
</html>

