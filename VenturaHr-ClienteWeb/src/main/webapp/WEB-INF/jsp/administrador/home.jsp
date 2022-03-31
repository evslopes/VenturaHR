<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<c:import url="/WEB-INF/jsp/app/menu.jsp"/>

<div class="container">
    <div class="page-header">
        <div style="background-color:rgba(0, 0, 0, 0.05)">
            <h1 style="color:darkblue">Ventura HR</h1>
            <p>Bem-vindo administrador ${usuario.nomeCompleto}</p>
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
            <h4>Não há nenhum usuário cadastrado no sistema!</h4>
        </c:if>
    </div>

</div>

</body>

<footer class="footer navbar-fixed-bottom">
    <c:import url="/WEB-INF/jsp/app/footer.jsp"/>
</footer>
</html>
