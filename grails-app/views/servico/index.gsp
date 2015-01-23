<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="layout" content="main"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="Bootstrap Admin App + jQuery">
    <meta name="keywords" content="app, responsive, jquery, bootstrap, dashboard, admin">
    <title>Angle - Bootstrap Admin Template</title>

</head>

<body>

<section>
    <!-- Page content-->
    <div class="content-wrapper">
        <h3>Todos os Serviços
            <small>Aqui estão listados os serviços do seu estabelecimento</small>
        </h3>
        <div class="row">
            <!-- START panel-->

            <div class="panel panel-default">

                <div class="panel-heading">Demo Table #4</div>
                <!-- START table-responsive-->
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nome</th>
                            <th>Tempo(Minutos)</th>
                            <th>Preço</th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${servicoInstanceList}" status="i" var="servicoInstance">

                            <tr>
                                <td><g:link action="show" id="${servicoInstance.id}">${servicoInstance.id}</g:link> </td>
                                <td>${servicoInstance.nome}</td>
                                <td>${servicoInstance.tempoMedio}</td>
                                <td>${servicoInstance.preco}</td>
                            </tr>

                        </g:each>

                        </tbody>
                    </table>
                </div>



        </div>


        </div>
    </div>
</section>






</body>

</html>