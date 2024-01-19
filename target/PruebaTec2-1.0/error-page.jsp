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
                <div class="container mt-4">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="text-center mt-4">
                                <img class="mb-4 img-error" src="assets/img/error-404-monochrome.svg" />
                                <p class="lead">Ha ocurrido un error.</p>
                                <a href="index.jsp">
                                    <i class="fas fa-arrow-left me-1"></i>
                                    Volver al inicio
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
            <script src="js/scripts.js"></script>
            <%@include file="includes/scripts.jsp" %>
    </body>
</html>

