<%--
  Created by IntelliJ IDEA.
  User: Aluno
  Date: 25/05/2022
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>
        Entrar
    </title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.jsp">
            <img src="./images/logoAcademia.png" width="30" height="30" class="d-inline-block align-top" alt="">
            Academia Atlas
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">HOME</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Academia.jsp">A ACADEMIA</a>
                </li>
                <a class="nav-link" href="Aula.jsp">HORÁRIO DAS AULAS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Plano.jsp">PLANOS</a>
                </li>
                <a class="nav-link" href="#">ENTRAR</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Cadastrar.jsp">CADASTRE-SE</a>
                </li>
            </ul>
        </div>
    </nav>
    <form action="login" method="post">
        <div class="form-group">
            <label for="email">Email</label>
            <input  type="email" class="form-control" name="emailLogin" id="emailLogin" aria-describedby="emailHelp" required placeholder="Insira seu email aqui:">
        </div>
        <div class="form-group">
            <label for="password">Senha</label>
            <input type="password" class="form-control" name="senhaLogin" id="senhaLogin" required placeholder="Insira sua senha aqui:">
        </div>
        <input type="submit" value="Login" name="Logins">
    </form>
</body>
</html>
