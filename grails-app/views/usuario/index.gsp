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
                    <small>Aqui estão listados os Usuários do seu estabelecimento</small>
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
                                        <g:sortableColumn property="username" title="${message(code: 'usuario.username.label', default: 'Username')}" />
                                        <g:sortableColumn property="email" title="${message(code: 'usuario.email.label', default: 'Email')}" />
                                        <g:sortableColumn property="cpf" title="${message(code: 'usuario.cpf.label', default: 'Cpf')}" />
                                        <g:sortableColumn property="accountExpired" title="${message(code: 'usuario.accountExpired.label', default: 'Account Expired')}" />
                                    </tr>
                                </thead>
                                <tbody>

                                <g:each in="${usuarioInstanceList}" status="i" var="usuarioInstance">
                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                        <td><g:link action="show" id="${usuarioInstance.id}">${fieldValue(bean: usuarioInstance, field: "username")}</g:link></td>

                                        <td>${fieldValue(bean: usuarioInstance, field: "email")}</td>

                                        <td>${fieldValue(bean: usuarioInstance, field: "cpf")}</td>

                                        <td><g:formatBoolean boolean="${usuarioInstance.accountExpired}" /></td>

                                    </tr>
                                </g:each>

                                </tbody>
                            </table>
                            <div class="pagination">
                                <g:paginate total="${usuarioInstanceCount ?: 0}" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
