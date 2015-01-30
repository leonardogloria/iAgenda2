
<%@ page import="br.com.iagenda.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <section>
        <!-- Page content-->
        <div class="content-wrapper">
            <h3>Usuarios
                <small></small>
            </h3>

            <g:if test="${flash.message}">
                <div role="alert" class="alert alert-success">
                    ${flash.message}</div>
            </g:if>

            <div class="col-sm-6">
                <!-- START panel-->
                <div class="panel panel-default">
                    <div class="panel-heading">Usuario</div>
                    <div class="panel-body">
                        <g:if test="${usuarioInstance?.username}">
                            <h3>
                                <span id="username-label" class="property-label"><g:message code="usuario.username.label" default="Username" /></span>
                                <small>
                                    <span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${usuarioInstance}" field="username"/></span>
                                </small>
                            </h3>
                        </g:if>

                        <g:if test="${usuarioInstance?.email}">
                            <h3>
                                <span id="email-label" class="property-label"><g:message code="usuario.email.label" default="Email" /></span>
                                <small>
                                <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usuarioInstance}" field="email"/></span>
                                </small>
                            </h3>
                        </g:if>

                        <g:if test="${usuarioInstance?.cpf}">
                            <h3>
                                <span id="cpf-label" class="property-label"><g:message code="usuario.cpf.label" default="Cpf" /></span>
                                <small>
                                <span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${usuarioInstance}" field="cpf"/></span>
                                </small>
                            </h3>
                        </g:if>

                        <g:if test="${usuarioInstance?.endereco}">
                            <h3>
                                <span id="endereco-label" class="property-label"><g:message code="usuario.endereco.label" default="Endereco" /></span>
                                <small>
                                <span class="property-value" aria-labelledby="endereco-label"><g:link controller="endereco" action="show" id="${usuarioInstance?.endereco?.id}">${usuarioInstance?.endereco?.encodeAsHTML()}</g:link></span>
                                </small>
                            </h3>
                        </g:if>

                        <g:if test="${usuarioInstance?.accountExpired}">
                            <h3>
                                <span id="accountExpired-label" class="property-label"><g:message code="usuario.accountExpired.label" default="Account Expired" /></span>
                                <small>
                                <span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${usuarioInstance?.accountExpired}" /></span>
                                </small>
                            </h3>
                        </g:if>

                        <g:if test="${usuarioInstance?.accountLocked}">
                            <h3>
                                <span id="accountLocked-label" class="property-label"><g:message code="usuario.accountLocked.label" default="Account Locked" /></span>
                                <small>
                                <span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${usuarioInstance?.accountLocked}" /></span>
                                </small>
                            </h3>
                        </g:if>

                        <g:if test="${usuarioInstance?.enabled}">
                            <h3>
                                <span id="enabled-label" class="property-label"><g:message code="usuario.enabled.label" default="Enabled" /></span>
                                <small>
                                <span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${usuarioInstance?.enabled}" /></span>
                                </small>
                            </h3>
                        </g:if>

                        <g:if test="${usuarioInstance?.nomeCompleto}">
                            <h3>
                                <span id="nomeCompleto-label" class="property-label"><g:message code="usuario.nomeCompleto.label" default="Nome Completo" /></span>
                                <small>
                                <span class="property-value" aria-labelledby="nomeCompleto-label"><g:fieldValue bean="${usuarioInstance}" field="nomeCompleto"/></span>
                                </small>
                            </h3>
                        </g:if>

                        <g:if test="${usuarioInstance?.passwordExpired}">
                            <h3>
                                <span id="passwordExpired-label" class="property-label"><g:message code="usuario.passwordExpired.label" default="Password Expired" /></span>
                                <small>
                                <span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${usuarioInstance?.passwordExpired}" /></span>
                                </small>
                            </h3>
                        </g:if>

                        <g:if test="${usuarioInstance?.sexo}">
                            <h3>
                                <span id="sexo-label" class="property-label"><g:message code="usuario.sexo.label" default="Sexo" /></span>
                                <small>
                                <span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${usuarioInstance}" field="sexo"/></span>
                                </small>
                            </h3>
                        </g:if>

                        <g:if test="${usuarioInstance?.telefones}">
                            <h3>
                                <span id="telefones-label" class="property-label"><g:message code="usuario.telefones.label" default="Telefones" /></span>
                                <small>
                                <g:each in="${usuarioInstance.telefones}" var="t">
                                    <span class="property-value" aria-labelledby="telefones-label"><g:link controller="telefone" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
                                </g:each>
                                </small>
                            </h3>
                        </g:if>

                    </div>
                </div>
            </div>
        </div>
    </section>
    </body>
</html>



