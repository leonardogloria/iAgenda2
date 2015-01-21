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
        <h3>Cadastro de Serviços
            <small>Aqui estão listados os serviços do seu estabelecimento</small>
        </h3>
        <div class="row">
            <!-- START panel-->
<g:each in="${servicoInstanceList}" status="i" var="servicoInstance">
    ${servicoInstance}
</g:each>
            <div class="panel panel-default">

                <div class="panel-heading">Demo Table #4</div>
                <!-- START table-responsive-->
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>Project</th>
                            <th>Activity</th>
                            <th>Completion</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Bootstrap 5.x</td>
                            <td>
                                <div data-sparkline="" data-bar-color="#5d9cec" data-height="20" data-bar-width="5" data-bar-spacing="2" data-values="1,4,4,7,5,9,10" data-resize="true"></div>
                            </td>
                            <td>
                                <div class="label label-danger">Canceled</div>
                            </td>
                        </tr>
                        <tr>
                            <td>Web Engine</td>
                            <td>
                                <div data-sparkline="" data-bar-color="#7266ba" data-height="20" data-bar-width="5" data-bar-spacing="2" data-values="1,4,4,10,5,9,2" data-resize="true"></div>
                            </td>
                            <td>
                                <div class="label label-success">Complete</div>
                            </td>
                        </tr>
                        <tr>
                            <td>Nullam sit amet</td>
                            <td>
                                <div data-sparkline="" data-bar-color="#23b7e5" data-height="20" data-bar-width="5" data-bar-spacing="2" data-values="1,4,4,7,5,9,4" data-resize="true"></div>
                            </td>
                            <td>
                                <div class="label label-warning">Delayed</div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>



        </div>


        </div>
    </div>
</section>






</body>

</html>