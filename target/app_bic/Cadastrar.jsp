<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>
        Cadastre-se
    </title>
    <script>
        function checarSenha() {
            var inputPasswd = document.querySelector("#senhaCadastro");
            var inputPasswdConfirmar = document.querySelector("#senhaConfirmar");
            var passwd = inputPasswd.value;
            var passwdConfirmar = inputPasswdConfirmar.value;
            if (passwd == passwdConfirmar){
                document.getElementById("formularioCadastro").submit();
            }
            else{
                alert("As senhas não coincidem!");
            }
        }
    </script>
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
            padding: 7px;
        }

        .form-signin .form-floating:focus-within {
            z-index: 2;
        }

        .form-signin input[type="email"] {
            margin-top: 5px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input[type="text"] {
            margin-top: 5px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        .form-signin input[type="password"] {
            margin-top: 5px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }

        .form-signin input[type="button"] {
            margin-top: 10px;
        }

        .form-signin input[type="date"] {
            margin-top: 5px;
            margin-bottom: 5px;
        }


    </style>
</head>
<body class="text-center">
<c:if test="${not empty academiaObj}">
<main class="form-signin w-100 m-auto">
    <form action="cadastrar" method="POST" id="formularioCadastro">
        <img class="mb-4" src="${academiaObj.logoAcademia}" alt="" width="72" height="57">
        <h3>Formulário de cadastro da ${academiaObj.nomeFantasiaAcademia}</h3>
            <div class="form-floating">
                <input type="text" class="form-control" id="nomeCadastro" name="nomeCadastro" placeholder="Nome completo" required>
            </div>
            <div class="form-floating">
                <input type="email" class="form-control" id="emailCadastro" name="emailCadastro" placeholder="Email" required>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" id="senhaCadastro" name="senhaCadastro" placeholder="Senha" required>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" id="senhaConfirmar" name="senhaConfirmar" placeholder="Confirme sua senha" required>
            </div>
            <div class="form-floating">
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
        <input type="button" class="btn btn-primary" onclick="checarSenha()" value="Cadastrar" name="cadastro"><br/><br/>
    </form>
</main>
</c:if>
</body>
</html>
