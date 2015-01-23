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

        <h3>Novo Serviço
            <small>Cadastre um novo serviço para o seu estabelecimento!</small>
        </h3>

            <div class="col-sm-6">
                <!-- START panel-->
                <div class="panel panel-default">
                    <div class="panel-heading">Stacked form</div>
                        <div class="panel-body">
                            <g:form  role="form" url="[resource:servicoInstance, action:'save']" >

                                    <g:render template="form"/>

                                    <button type="submit" class="btn btn-sm btn-default">Criar</button>
                            </form>
                        </div>
                    </g:form>
                </div>
            </div>
    </div>
</section>

</body>

</html>