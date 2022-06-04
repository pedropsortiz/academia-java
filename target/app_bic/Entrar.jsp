<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>
        Entrar
    </title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <meta name="theme-color" content="#712cf9">
    <style>

        html,
        body {
            height: 100%;
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
<c:if test="${not empty erro}">
    ${erro}
</c:if>
<c:if test="${not empty academiaObj}">
    <main class="form-signin w-100 m-auto">
        <form action="login" method="post">
            <img class="mb-4" src="${academiaObj.logoAcademia}" alt="" width="72" height="57">
            <h1 class="h3 mb-3 fw-normal">Entrar na ${academiaObj.nomeFantasiaAcademia}</h1>
            <input type="hidden" name="cnpjAcademia" value="${academiaObj.cnpjAcademia}">
            <div class="form-floating">
                <input type="email" class="form-control" name="emailLogin" id="emailLogin" aria-describedby="emailHelp" required placeholder="Insira seu email aqui:">
                <label for="email">Endereço de email</label>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" name="senhaLogin" id="senhaLogin" required placeholder="Insira sua senha aqui:">
                <label for="password">Senha</label>
            </div>

            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Me mantenha conectado
                </label>
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit" value="Login" name="Logins">Entrar</button>
            <p class="mt-5 mb-3 text-muted">&copy; 2022</p>
        </form>
    </main>
</c:if>
</body>
</html>
