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
        <h3>Dashboard
            <small>Aqui estão as principais informações do seu estabelecimento</small>
        </h3>
        <div class="row">

            <div class="col-lg-3 col-sm-6">
                <!-- START widget-->
                <div class="panel widget bg-primary">
                    <div class="row row-table">
                        <div class="col-xs-4 text-center bg-primary-dark pv-lg">
                            <em class="icon-cloud-upload fa-3x"></em>
                        </div>
                        <div class="col-xs-8 pv-lg">
                            <div class="h2 mt0">120</div>
                            <div class="text-uppercase">Consultas(Ago/15)</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <!-- START widget-->
                <div class="panel widget bg-purple">
                    <div class="row row-table">
                        <div class="col-xs-4 text-center bg-purple-dark pv-lg">
                            <em class="icon-globe fa-3x"></em>
                        </div>
                        <div class="col-xs-8 pv-lg">
                            <div class="h2 mt0">130

                            </div>
                            <div class="text-uppercase">Marcações(Ago/15)</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <!-- START widget-->
                <div class="panel widget bg-green">
                    <div class="row row-table">
                        <div class="col-xs-4 text-center bg-green-dark pv-lg">
                            <em class="icon-bubbles fa-3x"></em>
                        </div>
                        <div class="col-xs-8 pv-lg">
                            <div class="h2 mt0">70</div>
                            <div class="text-uppercase">Usuários</div>
                        </div>
                    </div>
                </div>
            </div>

                <!-- END date widget    -->
            <div class="col-lg-3 col-sm-6">
                <!-- START widget-->
                <div class="panel widget bg-primary">
                    <div class="row row-table">
                        <div class="col-xs-4 text-center bg-primary-dark pv-lg">
                            <em class="icon-cloud-upload fa-3x"></em>
                        </div>
                        <div class="col-xs-8 pv-lg">
                            <div class="h2 mt0">1700</div>
                            <div class="text-uppercase">Uploads</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    <div class="row">
        <div class="col-lg-9">
            <!-- START chart-->
            <div class="row">
                <div class="col-lg-12">
                    <!-- START widget-->
                    <div id="panelChart9" class="panel panel-default panel-demo">
                        <div class="panel-heading">
                            <a href="#" data-tool="panel-refresh" data-toggle="tooltip" title="Refresh Panel" class="pull-right">
                                <em class="fa fa-refresh"></em>
                            </a>
                            <a href="#" data-tool="panel-collapse" data-toggle="tooltip" title="Collapse Panel" class="pull-right">
                                <em class="fa fa-minus"></em>
                            </a>
                            <div class="panel-title">Inbound visitor statistics</div>
                        </div>
                        <div class="panel-body">
                            <div class="chart-spline flot-chart"></div>
                        </div>
                    </div>
                    <!-- END widget-->
                </div>
            </div>
        </div>            <!-- END chart-->



    <aside class="col-lg-3">
        <!-- START loader widget-->
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="panel-title">Atividades Recentes</div>
            </div>
            <!-- START list group-->
            <div class="list-group">
                <!-- START list group item-->
                <div class="list-group-item">
                    <div class="media-box">
                        <div class="pull-left">
                            <span class="fa-stack">
                                <em class="fa fa-circle fa-stack-2x text-purple"></em>
                                <em class="fa fa-cloud-upload fa-stack-1x fa-inverse text-white"></em>
                            </span>
                        </div>
                        <div class="media-box-body clearfix">
                            <small class="text-muted pull-right ml">15m</small>
                            <div class="media-box-heading"><a href="#" class="text-purple m0">NEW FILE</a>
                            </div>
                            <p class="m0">
                                <small><a href="#">Bootstrap.xls</a>
                                </small>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- END list group item-->

                <!-- END list group item-->
                <!-- START list group item-->
                <div class="list-group-item">
                    <div class="media-box">
                        <div class="pull-left">
                            <span class="fa-stack">
                                <em class="fa fa-circle fa-stack-2x text-danger"></em>
                                <em class="fa fa-exclamation fa-stack-1x fa-inverse text-white"></em>
                            </span>
                        </div>
                        <div class="media-box-body clearfix">
                            <small class="text-muted pull-right ml">5h</small>
                            <div class="media-box-heading"><a href="#" class="text-danger m0">BROADCAST</a>
                            </div>
                            <p class="m0"><a href="#">Read</a>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- END list group item-->
                <!-- START list group item-->
                <div class="list-group-item">
                    <div class="media-box">
                        <div class="pull-left">
                            <span class="fa-stack">
                                <em class="fa fa-circle fa-stack-2x text-success"></em>
                                <em class="fa fa-clock-o fa-stack-1x fa-inverse text-white"></em>
                            </span>
                        </div>
                        <div class="media-box-body clearfix">
                            <small class="text-muted pull-right ml">15h</small>
                            <div class="media-box-heading"><a href="#" class="text-success m0">NEW MEETING</a>
                            </div>
                            <p class="m0">
                                <small>On
                                    <em>10/12/2015 09:00 am</em>
                                </small>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- END list group item-->
                <!-- START list group item-->
                <div class="list-group-item">
                    <div class="media-box">
                        <div class="pull-left">
                            <span class="fa-stack">
                                <em class="fa fa-circle fa-stack-2x text-warning"></em>
                                <em class="fa fa-tasks fa-stack-1x fa-inverse text-white"></em>
                            </span>
                        </div>
                        <div class="media-box-body clearfix">
                            <small class="text-muted pull-right ml">1w</small>
                            <div class="media-box-heading"><a href="#" class="text-warning m0">TASKS COMPLETION</a>
                            </div>
                            <div class="progress progress-xs m0">
                                <div role="progressbar" aria-valuenow="22" aria-valuemin="0" aria-valuemax="100" style="width: 22%" class="progress-bar progress-bar-warning progress-bar-striped">
                                    <span class="sr-only">22% Complete</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END list group item-->
            </div>
            <!-- END list group-->
            <!-- START panel footer-->
            <div class="panel-footer clearfix">
                <a href="#" class="pull-left">
                    <small>Load more</small>
                </a>
            </div>
            <!-- END panel-footer-->
        </div>
    </aside>



    </div>
</div>
<!-- end content wrapper -->



</section>



<!-- Page footer-->

<!-- =============== VENDOR SCRIPTS ===============-->
<!-- MODERNIZR-->
<!--<script src="../vendor/modernizr/modernizr.js"></script> -->




</body>

</html>