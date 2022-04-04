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

<div class="container">
    <div class="container-md">
        <div class="page-header">
            <div style="background-color:LightGray">
                <h1 class="text-center" style="color:darkblue">Sistema de Recursos Humanos 2.0</h1>
                <p class="text-center">Publicando nova vaga</p>
            </div>
        </div>
        <div>
            <form action="/empresa/vaga" method="post">
                <div class="form-group">
                    <input type="hidden" class="form-control" name="usuarioId" value=${usuario.id}>
                </div>
                <div class="form-group">
                    <label>Cargo:</label>
                    <input type="text" class="form-control" name="cargo" value=${vaga.cargo}>
                </div>
                <div class="form-group">
                    <label>Cidade:</label>
                    <input type="text" class="form-control" name="cidade" value=${vaga.cidade}>
                </div>
                <div class="form-group">
                    <label>Tipo de Contrato:</label>
                    <input type="text" class="form-control" name="tipoDeContrato" value=${vaga.tipoDeContrato}>
                </div>
                <button type="submit" class="btn btn-default">Avançar</button>
            </form>

            <c:if test="${not empty vaga}">
                <h4 class="text-center fs-5">Favor informar os detalhes da vaga</h4>
                <form action="/empresa/criterios" method="post">
                    <div class="form-group">
                        <label>Descrição:</label>
                        <input type="text" class="form-control" name="descricao" value=${criterio.descricao}>
                    </div>
                    <div class="form-group">
                        <label>Perfil:</label>
                        <input type="number" min="1" max="5" class="form-control" name="perfil" value=${criterio.perfil}>
                    </div>
                    <div class="form-group">
                        <label>Peso:</label>
                        <input type="number" min="1" max="5" class="form-control" name="peso" value=${criterio.peso}>
                    </div>
                    <button type="submit" class="btn btn-default">Adicionar Critério</button>
                </form>
                <hr>
                <form action="/empresa/anunciarVaga" method="post">
                    <button type="submit" class="btn btn-default">Anunciar</button>
                </form>
            </c:if>
        </div>
    </div>
</div>
</body>

<footer class="footer navbar-fixed-bottom">
    <c:import url="/WEB-INF/jsp/app/footer.jsp"/>
</footer>

</html>
