
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav mt-5">
                <div class="sb-sidenav-menu-heading">ACCESO</div>
                <a class="nav-link" href="index.jsp">
                    <div class="sb-nav-link-icon"><i class="fa-solid fa-house"></i></div>
                    Home
                </a>
                <div class="sb-sidenav-menu-heading">GESTIÓN</div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayoutA" aria-expanded="false" aria-controls="collapseLayoutA">
                    <div class="sb-nav-link-icon"><i class="fa-solid fa-user"></i></div>
                    Ciudadanos
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseLayoutA" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="new-citizen.jsp">Nuevo Ciudadano</a>
                        <a class="nav-link" href="citizen-list.jsp">Lista de Ciudadanos</a>
                    </nav>
                </div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayoutB" aria-expanded="false" aria-controls="collapseLayoutB">
                    <div class="sb-nav-link-icon"><i class="fa-solid fa-clock"></i></div>
                    Turnos
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseLayoutB" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="new-turn.jsp">Nuevo Turno</a>
                        <a class="nav-link" href="turn-list.jsp">Turnos Registrados</a>
                    </nav>
                </div>
                </nav>
            </div>
