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
            <h1 style="color:darkblue">Sistema de Recursos Humanos 2.0</h1>
        </div>
    </div>
    <div class="card">
        <div class="card-header">
            Featured
        </div>
        <div class="card-body">
            <h5 class="card-title">Projeto de Bloco Desenvolvimento Java</h5>
            <p class="card-text">Projeto desenvolvido em Java com uso de microserviços</p>
            <a href="https://github.com/evslopes/VenturaHR" class="btn btn-primary">Github</a>
        </div>
    </div>
</div>

</body>

<footer class="footer navbar-fixed-bottom">
    <c:import url="/WEB-INF/jsp/app/footer.jsp"/>
</footer>
</html>