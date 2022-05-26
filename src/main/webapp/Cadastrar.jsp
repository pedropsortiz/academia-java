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
        Cadastre-se
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
                    <a class="nav-link" href="#">A ACADEMIA</a>
                </li>
                <a class="nav-link" href="#">HORÁRIO DAS AULAS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">PLANOS</a>
                </li>
                <a class="nav-link" href="Entrar.jsp">ENTRAR</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">CADASTRE-SE</a>
                </li>
            </ul>
        </div>
    </nav>
    <form action="cadastrar" method="POST">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="nomeCadastro">Nome completo:</label>
                <input type="text" class="form-control" id="nomeCadastro" name="nomeCadastro" placeholder="Nome completo" required>
            </div>
            <div class="form-group col-md-6">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="emailCadastro" name="emailCadastro" placeholder="Email" required>
            </div>
            <div class="form-group col-md-6">
                <label for="senhaCadastro">Senha:</label>
                <input type="password" class="form-control" id="senhaCadastro" name="senha" placeholder="Senha" required>
            </div>
            <div class="form-group col-md-6">
                <label for="senhaConfirmar">Confirme sua senha:</label>
                <input type="password" class="form-control" id="senhaConfirmar" name="senhaConfirmar" placeholder="Confirme sua senha" required>
            </div>
            <div class="form-group col-md-6">
                <label for="cpfCadastro">CPF:</label>
                <input type="text" class="form-control" id="cpfCadastro" name="cpfCadastro" placeholder="CPF" required>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="dataNascimentoCadastro">Data de nascimento::</label>
                    <input type="date" class="form-control" id="dataNascimentoCadastro" name="dataNascimentoCadastro" required>
                </div>
                <div class="form-group col-md-6">
                    <label for="sexoCadastro">Sexo:</label>
                    <select id="sexoCadastro" class="form-control" required>
                        <option name="M">Masculino</option>
                        <option name="F">Feminino</option>
                    </select>
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Cadastrar</button>
    </form>
</body>
</html>
