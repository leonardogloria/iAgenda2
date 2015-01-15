
<%@ page import="br.com.iagenda.Estabelecimento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estabelecimento.label', default: 'Estabelecimento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-estabelecimento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-estabelecimento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cnpj" title="${message(code: 'estabelecimento.cnpj.label', default: 'Cnpj')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'estabelecimento.email.label', default: 'Email')}" />
					
						<th><g:message code="estabelecimento.endereco.label" default="Endereco" /></th>
					
						<g:sortableColumn property="homePage" title="${message(code: 'estabelecimento.homePage.label', default: 'Home Page')}" />
					
						<g:sortableColumn property="nomePessoaContato" title="${message(code: 'estabelecimento.nomePessoaContato.label', default: 'Nome Pessoa Contato')}" />
					
						<g:sortableColumn property="razaoSocial" title="${message(code: 'estabelecimento.razaoSocial.label', default: 'Razao Social')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${estabelecimentoInstanceList}" status="i" var="estabelecimentoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${estabelecimentoInstance.id}">${fieldValue(bean: estabelecimentoInstance, field: "cnpj")}</g:link></td>
					
						<td>${fieldValue(bean: estabelecimentoInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: estabelecimentoInstance, field: "endereco")}</td>
					
						<td>${fieldValue(bean: estabelecimentoInstance, field: "homePage")}</td>
					
						<td>${fieldValue(bean: estabelecimentoInstance, field: "nomePessoaContato")}</td>
					
						<td>${fieldValue(bean: estabelecimentoInstance, field: "razaoSocial")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${estabelecimentoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
