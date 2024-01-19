
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="includes/header.jsp" %>
    <body class="sb-nav-fixed">
        <%@include file="includes/topbar.jsp" %>
        <div id="layoutSidenav">
            <%@include file="includes/sidebar.jsp" %>
            <div id="layoutSidenav_content">

                <main class="container-fluid px-4 d-flex flex-column align-items-center gap-5">
                    <div class="text-center">
                        <h1 class="mt-4 mb-2"><span class="text-danger fw-bold">T</span>urn <span class="text-danger fw-bold">T</span>racker</h1>
                        <h5 class="breadcrumb-item active text-secondary">Bienvenido a tu aplicación para la gestión de turnos</h5>
                    </div>
                    <img src="https://omniawfm.com/images/5-Maneras-de-Facilitar-la-Gestion-de-Turnos-de-Trabajo.png" alt="imagen hero" class="mx-auto d-block" />
                </main>

            </div>
        </div>
        <%@include file="includes/scripts.jsp" %>
    </body>
</html>
