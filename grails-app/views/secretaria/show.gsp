
<%@ page import="br.com.iagenda.Secretaria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'secretaria.label', default: 'Secretaria')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-secretaria" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-secretaria" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list secretaria">
			
				<g:if test="${secretariaInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="secretaria.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${secretariaInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${secretariaInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="secretaria.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${secretariaInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${secretariaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="secretaria.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${secretariaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${secretariaInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="secretaria.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${secretariaInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${secretariaInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="secretaria.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:link controller="endereco" action="show" id="${secretariaInstance?.endereco?.id}">${secretariaInstance?.endereco?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${secretariaInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="secretaria.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${secretariaInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${secretariaInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="secretaria.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${secretariaInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${secretariaInstance?.ctps}">
				<li class="fieldcontain">
					<span id="ctps-label" class="property-label"><g:message code="secretaria.ctps.label" default="Ctps" /></span>
					
						<span class="property-value" aria-labelledby="ctps-label"><g:fieldValue bean="${secretariaInstance}" field="ctps"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${secretariaInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="secretaria.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${secretariaInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${secretariaInstance?.nomeCompleto}">
				<li class="fieldcontain">
					<span id="nomeCompleto-label" class="property-label"><g:message code="secretaria.nomeCompleto.label" default="Nome Completo" /></span>
					
						<span class="property-value" aria-labelledby="nomeCompleto-label"><g:fieldValue bean="${secretariaInstance}" field="nomeCompleto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${secretariaInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="secretaria.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${secretariaInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${secretariaInstance?.servGerenciados}">
				<li class="fieldcontain">
					<span id="servGerenciados-label" class="property-label"><g:message code="secretaria.servGerenciados.label" default="Serv Gerenciados" /></span>
					
						<g:each in="${secretariaInstance.servGerenciados}" var="s">
						<span class="property-value" aria-labelledby="servGerenciados-label"><g:link controller="servico" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${secretariaInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="secretaria.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${secretariaInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${secretariaInstance?.telefones}">
				<li class="fieldcontain">
					<span id="telefones-label" class="property-label"><g:message code="secretaria.telefones.label" default="Telefones" /></span>
					
						<g:each in="${secretariaInstance.telefones}" var="t">
						<span class="property-value" aria-labelledby="telefones-label"><g:link controller="telefone" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:secretariaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${secretariaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
