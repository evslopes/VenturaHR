<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <div class="container-md">
        <div class="page-header">
            <div style="background-color:LightGray">
                <h1 class="text-center" style="color:darkblue">Sistema de Recursos Humanos 2.0</h1>
            </div>
        </div>

<div class="container mx-center" style="width: 400px">
    <div class="container-md">
        <div class="page-header">
            <div style="background-color:LightGray">
                <h2 style="color:darkblue">Cadastro</h2>
            </div>
        </div>

        <form action="/usuario/cadastro" method="post">
            <div class="form-group">
                <label>Tipo:</label>
                <label class="radio-inline">
                    <input type="radio" value="A" name="tipo">Administrador
                </label>
                <label class="radio-inline">
                    <input type="radio" value="C" name="tipo">Candidato
                </label>
                <label class="radio-inline">
                    <input type="radio" value="E" name="tipo">Empresa
                </label>
            </div>
            <div class="form-group">
                <label>Email:</label>
                <input type="email" class="form-control" placeholder="Entre com o seu email..." name="email">
            </div>
            <div class="form-group">
                <label>Senha:</label>
                <input type="password" class="form-control" placeholder="Entre com uma senha..." name="senha">
            </div>
            <div class="form-group">
                <label>Nome:</label>
                <input type="text" class="form-control" placeholder="Entre com o seu nome completo..." name="nome">
            </div>
            <div class="form-group">
                <label>Telefone:</label>
                <input type="text" class="form-control" placeholder="Entre com o seu telefone de contato..." name="telefone">
            </div>
            <div class="form-group">
                <label>CPF:</label>
                <input type="text" class="form-control" placeholder="Entre com o seu CPF..." name="cpf">
            </div>
            <div class="form-group">
                <label>Razao Social:</label>
                <input type="text" class="form-control" placeholder="Entre com a razão social..." name="razaoSocial">
            </div>
            <div class="form-group">
                <label>CNPJ:</label>
                <input type="text" class="form-control" placeholder="Entre com o seu CNPJ..." name="cnpj">
            </div>
            <button type="submit" class="btn btn-default">Salvar</button>
        </form>
    </div>
</div>
</body>
</html>
