<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Ventura HR</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <c:if test="${empty usuario}">
                <li><a href="/usuario"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="/acesso"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </c:if>


            <c:if test="${not empty usuario}">
                <li><a href="/logout"><span class="glyphicon glyphicon-log-out"></span>Logout, ${usuario.email}</a></li>
            </c:if>

        </ul>
    </div>
</nav>
