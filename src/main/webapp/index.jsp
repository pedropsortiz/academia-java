<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <style>

        img {
            width: 90%;
            height: 100%;
        }

        .site-header a {
            color: #8e8e8e;
            transition: color .15s ease-in-out;
        }

        .site-header a:hover {
            color: #fff;
            text-decoration: none;
        }

        .product-device {
            position: absolute;
            right: 10%;
            bottom: -30%;
            width: 300px;
            height: 540px;
            background-color: #333;
            border-radius: 21px;
            transform: rotate(30deg);
        }

        .product-device::before {
            position: absolute;
            top: 10%;
            right: 10px;
            bottom: 10%;
            left: 10px;
            content: "";
            background-color: rgba(255, 255, 255, .1);
            border-radius: 5px;
        }

        .product-device-2 {
            top: -25%;
            right: auto;
            bottom: 0;
            left: 5%;
            background-color: #e5e5e5;
        }


        .flex-equal > * {
            flex: 1;
        }

        @media (min-width: 768px) {
            .flex-md-equal > * {
                flex: 1;
            }
        }

        button#academiaForm{
            margin-bottom: 20px;
        }
        button#alunoForm{
            margin-bottom: 20px;
        }
        button#instrutorForm{
            margin-bottom: 20px;
        }

    </style>
    <meta charset="UTF-8"/>
    <title>
        Página inicial
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
            crossorigin="anonymous"></script>
</head>
<body>
<main>
    <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
        <div class="col-md-5 p-lg-5 mx-auto my-5">
            <h1 class="display-4 fw-normal">VirtualWeight</h1>
            <p class="lead fw-normal">Um sistema em Java Language criado para auxiliar todos os apaixonados pelo estilo de vida fitness.</p>
            <form action="verAcademia" method="GET">
                <button type="submit" class="btn btn-info">Ver academias</button>
            </form>
        </div>
        <div class="product-device shadow-sm d-none d-md-block"></div>
        <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
    </div>

    <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
        <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
            <div class="my-3 py-3">
                <h2 class="display-5">Quer um sistema para sua academia?</h2>
                <p class="lead">Descubra todas funcionalidades do nosso sistema especializado em academias.</p>
            </div>
            <button type="submit" id="academiaForm" class="btn btn-info">Saiba mais.</button>
        </div>
        <div class="bg-light">
            <img src="https://muitainformacao.com.br/upload/academias.jpg" alt="">
                    </div>
    </div>

    <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
        <div class="bg-light">
            <img src="https://boaforma.abril.com.br/wp-content/uploads/sites/2/2016/10/treino_de_braco_5.jpg" alt="">
        </div>
        <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
            <div class="my-3 py-3">
                <h2 class="display-5">Quer encontrar a academia ideal?</h2>
                <p class="lead">Busque as academias cadastradas no sistema e encontre a melhor para você.</p>
            </div>

            <button type="submit" id="alunoForm" class="btn btn-info">Saiba mais.</button>
        </div>
    </div>

    <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
        <div class="bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
            <div class="my-3 py-3">
                <h2 class="display-5">Quer ser um instrutor de academia?</h2>
                <p class="lead">Faça parte da equipe de uma academia cadastrada no sistema que esteja contratando.</p>
            </div>
            <button type="submit" id="instrutorForm" class="btn btn-info">Saiba mais.</button>
        </div>
        <div class="bg-light">
            <img src="https://listenx.com.br/blog/wp-content/uploads/2016/07/professor-de-academia-scaled.jpg" alt="">
        </div>
    </div>

</main>
</body>
</html>
