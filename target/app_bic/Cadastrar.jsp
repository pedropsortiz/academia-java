<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>
        Cadastre-se
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <meta name="theme-color" content="#712cf9">
    <style>

        html,
        body {
            height: 100%;
        }

        button {
            margin-top: 20px;
        }

        body {
            display: flex;
            align-items: center;
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            max-width: 330px;
            padding: 15px;
        }

        .form-signin .form-floating:focus-within {
            z-index: 2;
        }

        .form-signin input[type="email"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }
    </style>
</head>
<body class="text-center">
<c:if test="${not empty academiaObj}">
<main class="form-signin w-100 m-auto">
    <form action="cadastrar" method="POST">
        <img class="mb-4" src="${academiaObj.logoAcademia}" alt="" width="72" height="57">
        <h3>Formulário de cadastro da ${academiaObj.nomeFantasiaAcademia}</h3>
            <div class="form-floating">
                <label for="nomeCadastro">Nome completo:</label>
                <input type="text" class="form-control" id="nomeCadastro" name="nomeCadastro" placeholder="Nome completo" required>
            </div>
            <div class="form-floating">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="emailCadastro" name="emailCadastro" placeholder="Email" required>
            </div>
            <div class="form-floating">
                <label for="senhaCadastro">Senha:</label>
                <input type="password" class="form-control" id="senhaCadastro" name="senhaCadastro" placeholder="Senha" required>
            </div>
            <div class="form-floating">
                <label for="senhaConfirmar">Confirme sua senha:</label>
                <input type="password" class="form-control" id="senhaConfirmar" name="senhaConfirmar" placeholder="Confirme sua senha" required>
            </div>
            <div class="form-floating">
                <label for="cpfCadastro">CPF:</label>
                <input type="text" class="form-control" id="cpfCadastro" name="CpfCadastro" placeholder="CPF" required>
            </div>
                <div class="form-floating">
                    <input type="date" class="form-control" id="dataNascCadastro" name="dataNascCadastro" required>
                </div>
                <div class="form-floating">
                    <select name="sexoCadastro" id="sexoCadastro" class="form-control" required>
                        <option selected>Sexo</option>
                        <option value="M" name="M">Masculino</option>
                        <option value="F" name="F">Feminino</option>
                    </select>
                </div>
        <button type="submit" class="btn btn-primary">Cadastrar</button>
    </form>
</main>
</c:if>
</body>
</html>
