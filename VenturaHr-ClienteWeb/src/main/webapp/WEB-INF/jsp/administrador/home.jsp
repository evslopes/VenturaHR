<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Administrador Ventura Hr</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<c:import url="/WEB-INF/jsp/app/menu.jsp"/>

<div class="container">
    <div class="container-md">
        <div class="page-header">
            <div style="background-color:LightGray">
                <h1 class="text-center" style="color:darkblue">Sistema de Recursos Humanos 2.0</h1>
                <p class="text-center">Seja bem administrador ${usuario.nome}</p>
            </div>
        </div>


        <div class="container">
            <h2>Lista de Usuários</h2>

            <c:if test="${not empty listaUsuarios}">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Cargo</th>
                        <th>Cidade</th>
                        <th>Tipo de Contrato</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="usuario" items="${listaUsuarios}" varStatus="id">
                        <tr>
                            <td>${usuario.id}</td>
                            <td>${usuario.nome}</td>
                            <td>${usuario.email}</td>
                            <td>${usuario.tipo}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>

            <c:if test="${empty usuarios}">
                <h3>Não há usuários pendências administrativas!</h3>
            </c:if>
        </div>

    </div>
</div>

</body>

<footer class="footer navbar-fixed-bottom">
    <c:import url="/WEB-INF/jsp/app/footer.jsp"/>
</footer>
</html>
