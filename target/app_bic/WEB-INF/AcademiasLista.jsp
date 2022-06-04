<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
        <meta charset="UTF-8"/>
        <title>
            Academias
        </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
                crossorigin="anonymous"></script>
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        img {
            width: 100%;
            height: 300px;
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

        p#descricaoAcademia {
            max-width: 400ch;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

    </style>
</head>
<body>
<main>

    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">Encontre a academia perfeita para você</h1>
                <p class="lead text-muted">Escolha entre as academias cadastradas em nosso sistema a melhor pra você, cadastre se ou entre pra acompanhar seu treino</p>
            </div>
        </div>
    </section>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

        <c:forEach var="academia" items="${academiasLista}">

            <form action="academia" method="POST">
                <div class="album py-5 bg-light">
                    <div class="container">
                        <div class="col">
                            <div class="card shadow-sm">
                                <img id="imagemAcademia" src="${academia.fotoAcademia}" alt="Foto da academia">
                                <input type="hidden" name="cnpjAcademia" value="${academia.cnpjAcademia}"/>
                                <div class="card-body">
                                    <p maxlength="10" id="descricaoAcademia" class="card-text">${academia.descricaoAcademia}...</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="btn-group">
                                            <button type="submit" name="botaoEntrar" value="Academia1"
                                                    class="btn btn-sm btn-outline-secondary">Entrar
                                            </button>
                                            <button type="submit"
                                                    class="btn btn-sm btn-outline-secondary">Veja mais
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </c:forEach>
    </div>
</main>
</body>
</html>
