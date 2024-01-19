<%@page import="com.softtek.pruebatec2.logic.Citizen"%>
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
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Editar Ciudadano</h3></div>
                                    <% Citizen citizen = (Citizen) request.getSession().getAttribute("editCitizen"); %>
                                    <div class="card-body">
                                        <form action="EditCitizenSv" method="post">
                                            <div class="mb-3">
                                                <div class=" mb-3">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input value="<%= citizen.getName() %>" class="form-control" id="name" name="name" type="text" required required pattern="[A-Za-zñÑáéíóúÁÉÍÓÚ\s]+" />
                                                        <label for="name">Nombre</label>
                                                    </div>
                                                </div>
                                                <div class=" mb-3">
                                                    <div class="form-floating">
                                                        <input value="<%= citizen.getSurname()%>" class="form-control" id="surname" name="surname" type="text" required pattern="[A-Za-zñÑáéíóúÁÉÍÓÚ\s]+" />
                                                        <label for="surname">Apellidos</label>
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <div class="form-floating">
                                                        <input value="<%= citizen.getDni()%>" class="form-control" id="dni" name="dni" type="text" required pattern="[0-9]{8}[A-Za-z]" />
                                                        <label for="dni">DNI</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <button type="submit" class="btn btn-dark w-100">Actualizar</button>
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

