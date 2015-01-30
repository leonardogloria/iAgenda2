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
            <small>Cadastre um novo Usuario para o seu estabelecimento!</small>
        </h3>

        <div class="col-sm-6">
            <!-- START panel-->
            <div class="panel panel-default">
                <div class="panel-heading">Stacked form</div>
            <div class="panel-body">

                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${usuarioInstance}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${usuarioInstance}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>

                <g:form  role="form" url="[resource:usuarioInstance, action:'save']" >
                    <g:render template="form"/>

                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </form>
                </div>
                </g:form>
            </div>
        </div>
    </div>
</section>

</body>

</html>