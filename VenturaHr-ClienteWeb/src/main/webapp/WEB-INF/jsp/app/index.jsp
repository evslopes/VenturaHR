<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Home VenturaHr</title>
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
                <p class="text-center">Acesse as últimas vagas ou faça login para mais recursos.</p>
            </div>
        </div>

    <%--TODO: Ajustar tabela--%>

    <table class="table table-sm table-borderless">
        <thead>
        <tr>
            <th scope="col">10 Últimas Vagas Publicadas</th>
        </tr>
        </thead>
        <tbody>
        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">Cargo</th>
                <th scope="col">Descrição</th>
                <th scope="col">Cidade</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">Analista JEE</th>
                <td>Lorem ipsum dolor sit amet, consectetuer
                    adipiscing elit.</td>
                <td>Rio de Janeiro</td>
                <td><button type="button" class="btn btn-link">Link</button></td>
            </tr>
            <tr>
                <th scope="row">Analista JEE</th>
                <td>Lorem ipsum dolor sit amet, consectetuer
                    adipiscing elit.</td>
                <td>Rio de Janeiro</td>
                <td><button type="button" class="btn btn-link">Link</button></td>
            </tr>
            <tr>
                <th scope="row">Analista JEE</th>
                <td>Lorem ipsum dolor sit amet, consectetuer
                    adipiscing elit.</td>
                <td>Rio de Janeiro</td>
                <td><button type="button" class="btn btn-link">Link</button></td>
            </tr>
            <tr>
                <th scope="row">Analista JEE</th>
                <td>Lorem ipsum dolor sit amet, consectetuer
                    adipiscing elit.</td>
                <td>Rio de Janeiro</td>
                <td><button type="button" class="btn btn-link">Link</button></td>
            </tr>
            <tr>
                <th scope="row">Analista JEE</th>
                <td>Lorem ipsum dolor sit amet, consectetuer
                    adipiscing elit.</td>
                <td>Rio de Janeiro</td>
                <td><button type="button" class="btn btn-link">Link</button></td>
            </tr>
            <tr>
                <th scope="row">Analista JEE</th>
                <td>Lorem ipsum dolor sit amet, consectetuer
                    adipiscing elit.</td>
                <td>Rio de Janeiro</td>
                <td><button type="button" class="btn btn-link">Link</button></td>
            </tr>
            <tr>
                <th scope="row">Analista JEE</th>
                <td>Lorem ipsum dolor sit amet, consectetuer
                    adipiscing elit.</td>
                <td>Rio de Janeiro</td>
                <td><button type="button" class="btn btn-link">Link</button></td>
            </tr>
            <tr>
                <th scope="row">Analista JEE</th>
                <td>Lorem ipsum dolor sit amet, consectetuer
                    adipiscing elit.</td>
                <td>Rio de Janeiro</td>
                <td><button type="button" class="btn btn-link">Link</button></td>
            </tr>
            <tr>
                <th scope="row">Analista JEE</th>
                <td>Lorem ipsum dolor sit amet, consectetuer
                    adipiscing elit.</td>
                <td>Rio de Janeiro</td>
                <td><button type="button" class="btn btn-link">Link</button></td>
            </tr>
            <tr>
                <th scope="row">Analista JEE</th>
                <td>Lorem ipsum dolor sit amet, consectetuer
                    adipiscing elit.</td>
                <td>Rio de Janeiro</td>
                <td><button type="button" class="btn btn-link">Link</button></td>
            </tr>
            </tbody>
        </table>
        </tbody>
    </table>
</body>

<%--<div class="card">--%>
<%--    <div class="card-header">--%>
<%--        Sistema VenturaHr--%>
<%--    </div>--%>
<%--    <div class="card-body">--%>
<%--        <h5 class="card-title">Projeto de Bloco Desenvolvimento Java</h5>--%>
<%--        <p class="card-text">Projeto desenvolvido em Java com uso de microserviços</p>--%>
<%--        <a href="https://github.com/evslopes/VenturaHR" class="btn btn-primary">Github</a>--%>
<%--    </div>--%>
<%--</div>--%>


<footer class="footer navbar-fixed-bottom">
    <c:import url="/WEB-INF/jsp/app/footer.jsp"/>
</footer>
</html>