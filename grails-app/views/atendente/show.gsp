
<%@ page import="br.com.iagenda.Atendente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'atendente.label', default: 'Atendente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-atendente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-atendente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list atendente">
			
				<g:if test="${atendenteInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="atendente.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${atendenteInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${atendenteInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="atendente.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${atendenteInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${atendenteInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="atendente.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${atendenteInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${atendenteInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="atendente.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${atendenteInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${atendenteInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="atendente.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:link controller="endereco" action="show" id="${atendenteInstance?.endereco?.id}">${atendenteInstance?.endereco?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${atendenteInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="atendente.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${atendenteInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${atendenteInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="atendente.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${atendenteInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${atendenteInstance?.ctps}">
				<li class="fieldcontain">
					<span id="ctps-label" class="property-label"><g:message code="atendente.ctps.label" default="Ctps" /></span>
					
						<span class="property-value" aria-labelledby="ctps-label"><g:fieldValue bean="${atendenteInstance}" field="ctps"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${atendenteInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="atendente.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${atendenteInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${atendenteInstance?.nomeCompleto}">
				<li class="fieldcontain">
					<span id="nomeCompleto-label" class="property-label"><g:message code="atendente.nomeCompleto.label" default="Nome Completo" /></span>
					
						<span class="property-value" aria-labelledby="nomeCompleto-label"><g:fieldValue bean="${atendenteInstance}" field="nomeCompleto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${atendenteInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="atendente.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${atendenteInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${atendenteInstance?.servGerenciados}">
				<li class="fieldcontain">
					<span id="servGerenciados-label" class="property-label"><g:message code="atendente.servGerenciados.label" default="Serv Gerenciados" /></span>
					
						<g:each in="${atendenteInstance.servGerenciados}" var="s">
						<span class="property-value" aria-labelledby="servGerenciados-label"><g:link controller="servico" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${atendenteInstance?.servicos}">
				<li class="fieldcontain">
					<span id="servicos-label" class="property-label"><g:message code="atendente.servicos.label" default="Servicos" /></span>
					
						<g:each in="${atendenteInstance.servicos}" var="s">
						<span class="property-value" aria-labelledby="servicos-label"><g:link controller="servico" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${atendenteInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="atendente.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${atendenteInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${atendenteInstance?.telefones}">
				<li class="fieldcontain">
					<span id="telefones-label" class="property-label"><g:message code="atendente.telefones.label" default="Telefones" /></span>
					
						<g:each in="${atendenteInstance.telefones}" var="t">
						<span class="property-value" aria-labelledby="telefones-label"><g:link controller="telefone" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:atendenteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${atendenteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
