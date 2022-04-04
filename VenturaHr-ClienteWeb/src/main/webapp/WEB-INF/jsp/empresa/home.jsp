<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>HrVentura</title>
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
                <p class="text-center">Seja bem vindo ${usuario.razaoSocial}</p>
            </div>
        </div>


        <div class="form-group d-grid gap-1">
            <form action="/postarVaga" method="get">
                <button type="submit" class="btn btn-lg btn-outline-primary">Criar Vaga</button>
            </form>
        </div>
    </div>

    <c:if test="${not empty vagas}">
    <table class="table table-sm table-borderless">
        <thead>
        <tr>
            <th scope="col">Lista de Vagas</th>
        </tr>
        </thead>
        <tbody>
        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Cargo</th>
                <th scope="col">Cidade</th>
                <th scope="col">Tipo de Contrato</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="vaga" items="${vagas}" varStatus="id">
            <tr>
                <th scope="row"></th>
                <td>${vaga.id}</td>
                <td>${vaga.cargo}</td>
                <td>${vaga.cidade}</td>
                <td>${vaga.tipoDeContrato}</td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
        </tbody>
    </table>
    </c:if>

    <div class="container">
        <h2>Lista de Vagas</h2>

        <c:if test="${not empty vagas}">
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
                <c:forEach var="vaga" items="${vagas}" varStatus="id">
                    <tr>
                        <td>${vaga.id}</td>
                        <td>${vaga.cargo}</td>
                        <td>${vaga.cidade}</td>
                        <td>${vaga.tipoDeContrato}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:if>

        <c:if test="${empty vagas}">
            <h4>Não há nenhuma vaga publicada no sistema!</h4>
        </c:if>
    </div>
</div>
</body>

<footer class="footer navbar-fixed-bottom">
    <c:import url="/WEB-INF/jsp/app/footer.jsp"/>
</footer>

</html>
