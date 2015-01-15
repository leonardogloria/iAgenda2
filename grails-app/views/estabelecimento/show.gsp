
<%@ page import="br.com.iagenda.Estabelecimento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estabelecimento.label', default: 'Estabelecimento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-estabelecimento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-estabelecimento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list estabelecimento">
			
				<g:if test="${estabelecimentoInstance?.cnpj}">
				<li class="fieldcontain">
					<span id="cnpj-label" class="property-label"><g:message code="estabelecimento.cnpj.label" default="Cnpj" /></span>
					
						<span class="property-value" aria-labelledby="cnpj-label"><g:fieldValue bean="${estabelecimentoInstance}" field="cnpj"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estabelecimentoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="estabelecimento.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${estabelecimentoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estabelecimentoInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="estabelecimento.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:link controller="endereco" action="show" id="${estabelecimentoInstance?.endereco?.id}">${estabelecimentoInstance?.endereco?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${estabelecimentoInstance?.homePage}">
				<li class="fieldcontain">
					<span id="homePage-label" class="property-label"><g:message code="estabelecimento.homePage.label" default="Home Page" /></span>
					
						<span class="property-value" aria-labelledby="homePage-label"><g:fieldValue bean="${estabelecimentoInstance}" field="homePage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estabelecimentoInstance?.nomePessoaContato}">
				<li class="fieldcontain">
					<span id="nomePessoaContato-label" class="property-label"><g:message code="estabelecimento.nomePessoaContato.label" default="Nome Pessoa Contato" /></span>
					
						<span class="property-value" aria-labelledby="nomePessoaContato-label"><g:fieldValue bean="${estabelecimentoInstance}" field="nomePessoaContato"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estabelecimentoInstance?.razaoSocial}">
				<li class="fieldcontain">
					<span id="razaoSocial-label" class="property-label"><g:message code="estabelecimento.razaoSocial.label" default="Razao Social" /></span>
					
						<span class="property-value" aria-labelledby="razaoSocial-label"><g:fieldValue bean="${estabelecimentoInstance}" field="razaoSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estabelecimentoInstance?.servicos}">
				<li class="fieldcontain">
					<span id="servicos-label" class="property-label"><g:message code="estabelecimento.servicos.label" default="Servicos" /></span>
					
						<g:each in="${estabelecimentoInstance.servicos}" var="s">
						<span class="property-value" aria-labelledby="servicos-label"><g:link controller="servico" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${estabelecimentoInstance?.telefones}">
				<li class="fieldcontain">
					<span id="telefones-label" class="property-label"><g:message code="estabelecimento.telefones.label" default="Telefones" /></span>
					
						<g:each in="${estabelecimentoInstance.telefones}" var="t">
						<span class="property-value" aria-labelledby="telefones-label"><g:link controller="telefone" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${estabelecimentoInstance?.tipoEstabelecimento}">
				<li class="fieldcontain">
					<span id="tipoEstabelecimento-label" class="property-label"><g:message code="estabelecimento.tipoEstabelecimento.label" default="Tipo Estabelecimento" /></span>
					
						<span class="property-value" aria-labelledby="tipoEstabelecimento-label"><g:link controller="tipoEstabelecimento" action="show" id="${estabelecimentoInstance?.tipoEstabelecimento?.id}">${estabelecimentoInstance?.tipoEstabelecimento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:estabelecimentoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${estabelecimentoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
