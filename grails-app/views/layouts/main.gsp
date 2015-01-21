<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- =============== VENDOR STYLES ===============-->
    <!-- FONT AWESOME-->
    <!-- <link rel="stylesheet" href="../vendor/fontawesome/css/font-awesome.min.css"> -->
    <link rel="stylesheet" href="${resource(dir: 'css/vendor/fontawesome/css', file: 'font-awesome.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/vendor/fullcalendar/dist', file: 'fullcalendar.css')}" type="text/css">

    <!-- SIMPLE LINE ICONS-->
    <!--<link rel="stylesheet" href="vendor/simplelineicons/simple-line-icons.css"> -->
    <link rel="stylesheet" href="${resource(dir: 'css/template/simplelineicons', file: 'simple-line-icons.css')}" type="text/css">

    <!-- ANIMATE.CSS-->
    <!--<link rel="stylesheet" href="../vendor/animate.css/animate.min.css"> -->
    <link rel="stylesheet" href="${resource(dir: 'css/vendor/animate.css', file: 'animate.min.css')}" type="text/css">

    <!-- WHIRL (spinners)-->
    <!-- <link rel="stylesheet" href="../vendor/whirl/dist/whirl.css">-->
    <link rel="stylesheet" href="${resource(dir: 'css/vendor/whirl/dist', file: 'whirl.css')}" type="text/css">

    <!-- =============== PAGE VENDOR STYLES ===============-->
    <!-- =============== APP STYLES ===============-->
    <link rel="stylesheet" href="${resource(dir: 'css/app/', file: 'app.css')}" type="text/css">

    <g:layoutHead/>
		<g:javascript library="application"/>

    <g:javascript  library="modernizr" />
    <g:javascript library="jquery"/>
    <g:javascript library="bootstrap"/>
    <g:javascript library="storage"/>
    <g:javascript library="easing"/>
    <g:javascript library="animo"/>
    <g:javascript library="localize"/>
    <g:javascript library="sparkline"/>
    <g:javascript library="moment"/>
    <g:javascript library="skycons"/>
    <g:javascript library="demo"/>

    <g:javascript library="app"/>

    <r:layoutResources />
	</head>
	<body>

    <div class="wrapper">

        <!-- top navbar-->
        <header class="topnavbar-wrapper">
            <!-- START Top Navbar-->
            <nav role="navigation" class="navbar topnavbar">
                <!-- START navbar header-->
                <div class="navbar-header">
                    <a href="#/" class="navbar-brand">
                        <div class="brand-logo">
                            <img src="img/logo.png" alt="App Logo" class="img-responsive">
                        </div>
                        <div class="brand-logo-collapsed">
                            <img src="img/logo-single.png" alt="App Logo" class="img-responsive">
                        </div>
                    </a>
                </div>
                <!-- END navbar header-->
                <!-- START Nav wrapper-->
                <div class="nav-wrapper">
                    <!-- START Left navbar-->
                    <ul class="nav navbar-nav">
                        <li>
                            <!-- Button used to collapse the left sidebar. Only visible on tablet and desktops-->
                            <a href="#" data-toggle-state="aside-collapsed" class="hidden-xs">
                                <em class="fa fa-navicon"></em>
                            </a>
                            <!-- Button to show/hide the sidebar on mobile. Visible on mobile only.-->
                            <a href="#" data-toggle-state="aside-toggled" data-no-persist="true" class="visible-xs sidebar-toggle">
                                <em class="fa fa-navicon"></em>
                            </a>
                        </li>
                    </ul>
                    <!-- END Left navbar-->
                    <!-- START Right Navbar-->
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Search icon-->
                        <li>
                            <a href="#" data-search-open="">
                                <em class="icon-magnifier"></em>
                            </a>
                        </li>
                        <!-- START Offsidebar button-->
                        <li>
                            <a href="#" data-toggle-state="offsidebar-open" data-no-persist="true">
                                <em class="icon-notebook"></em>
                            </a>
                        </li>
                        <!-- END Offsidebar menu-->
                    </ul>
                    <!-- END Right Navbar-->
                </div>
                <!-- END Nav wrapper-->
                <!-- START Search form-->
                <form role="search" action="search.html" class="navbar-form">
                    <div class="form-group has-feedback">
                        <input type="text" placeholder="Type and hit enter ..." class="form-control">
                        <div data-search-dismiss="" class="fa fa-times form-control-feedback"></div>
                    </div>
                    <button type="submit" class="hidden btn btn-default">Submit</button>
                </form>
                <!-- END Search form-->
            </nav>
            <!-- END Top Navbar-->
        </header>


        <!-- sidebar-->
        <aside class="aside">
            <!-- START Sidebar (left)-->
            <div class="aside-inner">
                <nav class="sidebar">
                    <!-- START sidebar nav-->
                    <ul class="nav">
                        <!-- Iterates over all sidebar items-->
                        <li class="nav-heading ">
                            <span data-localize="sidebar.heading.HEADER">Menu </span>
                        </li>


                        <li class="active">
                            <g:link controller="dashboard" action="index" title="Dashboard">

                                <em class="icon-speedometer"></em>
                                <span data-localize="sidebar.nav.DASHBOARD">Dashboard</span>
                            </g:link>
                        </li>

                    <li class=" ">
                        <a href="#forms" title="Forms" data-toggle="collapse">
                            <em class="icon-note"></em>
                            <span data-localize="sidebar.nav.form.FORM">Forms</span>
                        </a>
                        <ul id="forms" class="nav sidebar-subnav collapse">
                            <li class="sidebar-subnav-header">Forms</li>
                            <li class=" ">
                                <a href="form-standard.html" title="Standard">
                                    <em></em>
                                    <span data-localize="sidebar.nav.form.STANDARD">Todos</span>
                                </a>
                            </li>
                            <li class=" ">
                                <a href="form-extended.html" title="Extended">
                                    <em></em>
                                    <span data-localize="sidebar.nav.form.EXTENDED">Novo</span>
                                </a>
                            </li>

                        </ul>
                    </li>





                    </ul>
                    <!-- END sidebar nav-->
                </nav>
            </div>
            <!-- END Sidebar (left)-->
        </aside>
        <!-- offsidebar-->
        <aside class="offsidebar">
            <!-- START Off Sidebar (right)-->
            <nav>
                <div role="tabpanel">
                    <!-- Nav tabs-->
                    <ul role="tablist" class="nav nav-tabs nav-justified">
                        <li role="presentation" class="active">
                            <a href="#app-settings" aria-controls="app-settings" role="tab" data-toggle="tab">
                                <em class="icon-equalizer fa-lg"></em>
                            </a>
                        </li>
                        <li role="presentation">
                            <a href="#app-chat" aria-controls="app-chat" role="tab" data-toggle="tab">
                                <em class="icon-users fa-lg"></em>
                            </a>
                        </li>
                    </ul>
                    <!-- Tab panes-->
                    <div class="tab-content">
                        <div id="app-settings" role="tabpanel" class="tab-pane fade in active">
                            <h3 class="text-center text-thin">Tab 1</h3>
                        </div>
                        <div id="app-chat" role="tabpanel" class="tab-pane fade">
                            <h3 class="text-center text-thin">Tab 2</h3>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- END Off Sidebar (right)-->
        </aside>


        <g:layoutBody/>
        <footer>
            <span>&copy; 2015 - Angle</span>
        </footer>

    </div>


    <r:layoutResources />
	</body>
</html>
