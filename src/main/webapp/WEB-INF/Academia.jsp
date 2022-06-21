<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>
        ${academiaObj.nomeFantasiaAcademia} - Informações gerais
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
            crossorigin="anonymous"></script>



    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
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


    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container">
    <main>
        <div class="py-5 text-center">
            <img class="d-block mx-auto mb-4" src="${academiaObj.logoAcademia}" alt="" width="72" height="57">
            <h2>${academiaObj.nomeFantasiaAcademia}</h2>
            <p class="lead">${academiaObj.descricaoAcademia}</p>
        </div>

        <div class="row g-5">
            <div class="col-md-5 col-lg-4 order-md-last">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-primary">Planos da academia</span>
                </h4>
                <ul class="list-group mb-3">
                    <c:forEach var="plano" items="${planosLista}">
                    <li class="list-group-item d-flex justify-content-between lh-sm">
                        <div>
                            <h6 class="my-0">${plano.nomePlano}</h6>
                            <small class="text-muted">${plano.descricaoPlano}</small>
                        </div>
                        <span class="text-muted">R$ ${plano.valorPlano}</span>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="col-md-7 col-lg-8">
                <h4 class="mb-3">Formulário de inscrição</h4>
                <form class="needs-validation" method="POST" action="cadastro">
                    <div class="row g-3">
                        <div class="col-sm-12">
                            <label for="firstName" class="form-label">Nome Completo</label>
                            <input type="text" class="form-control" name="nomeCadastro" placeholder="Fulano Ciclano da Silva" value="" required>
                        </div>

                        <div class="col-12">
                            <label for="email" class="form-label">Email </label>
                            <input type="email" class="form-control" name="emailCadastro" placeholder="seuemail@exemplo.com">
                        </div>
                        <input type="hidden" value="${academiaObj.idAcademia}" name="idAcademia">
                        <div class="col-12">
                            <label for="username" class="form-label">Senha</label>
                            <div class="input-group has-validation">
                                <input type="password" class="form-control" name="senhaCadastro" placeholder="Sua senha" required>
                            </div>
                        </div>

                        <div class="col-6">
                            <label for="address" class="form-label">Telefone</label>
                            <input type="text" class="form-control" name="telefoneCadastro" placeholder="(00) 0000-0000" required>
                        </div>

                        <div class="col-6">
                            <label for="address" class="form-label">Data de nascimento</label>
                            <input type="date" class="form-control" name="dataCadastro" required>
                        </div>

                        <div class="col-md-5">
                            <label for="country" class="form-label">Plano</label>
                            <select class="form-select" name="planoCadastro" required>
                                <c:forEach var="plano" items="${planosLista}">
                                <option value="${plano.idPlano}">${plano.nomePlano}</option>
                                </c:forEach>
                            </select>
                        </div>

                        <div class="col-md-4">
                            <label for="state" class="form-label">Sexo</label>
                            <select name="sexoCadastro" class="form-select" id="state" required>
                                <option value="M">M</option>
                                <option value="F">F</option>
                            </select>
                        </div>

                        <div class="col-md-3">
                            <label for="zip" class="form-label">Cpf</label>
                            <input type="text" class="form-control" name="cpfCadastro" placeholder="___.___.___-__" required>
                        </div>
                    </div>

                    <hr class="my-4">

                    <button class="w-100 btn btn-primary btn-lg" type="submit">Realizar inscrição</button>
                </form>
            </div>
        </div>
    </main>
</div>>
</body>
</html>
