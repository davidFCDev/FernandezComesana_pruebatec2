<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<body class="sb-nav-fixed">
    <%@include file="topbar.jsp" %>
    <div id="layoutSidenav">
        <%@include file="sidebar.jsp" %>
        <div id="layoutSidenav_content">
            <main class="d-flex align-items-center">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-4">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header"><h3 class="text-center font-weight-light my-4">Nuevo Ciudadano</h3></div>
                                <div class="card-body">
                                    <form action="CitizenSv" method="post">
                                        <div class="mb-3">
                                            <div class=" mb-3">
                                                <div class="form-floating mb-3 mb-md-0">
                                                    <input class="form-control" id="name" name="name" type="text" required required pattern="[A-Za-zñÑáéíóúÁÉÍÓÚ\s]+" />
                                                    <label for="name">Nombre</label>
                                                </div>
                                            </div>
                                            <div class=" mb-3">
                                                <div class="form-floating">
                                                    <input class="form-control" id="surname" name="surname" type="text" required pattern="[A-Za-zñÑáéíóúÁÉÍÓÚ\s]+" />
                                                    <label for="surname">Apellidos</label>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <div class="form-floating">
                                                    <input class="form-control" id="dni" name="dni" type="text" required pattern="[0-9]{8}[A-Za-z]" />
                                                    <label for="dni">DNI</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mt-4 mb-0">
                                            <button type="submit" class="btn btn-dark w-100">Enviar</button>
                                        </div>
                                    </form>
                                    <div class="alert alert-danger mt-3" role="alert">
                                        <strong>Error:</strong> El DNI ya está registrado en el sistema. Por favor, elija otro.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
    <%@include file="scripts.jsp" %>
</body>
</html>

