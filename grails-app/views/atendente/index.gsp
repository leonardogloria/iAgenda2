
<%@ page import="br.com.iagenda.Atendente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'atendente.label', default: 'Atendente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-atendente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-atendente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'atendente.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'atendente.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'atendente.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'atendente.cpf.label', default: 'Cpf')}" />
					
						<th><g:message code="atendente.endereco.label" default="Endereco" /></th>
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'atendente.accountExpired.label', default: 'Account Expired')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${atendenteInstanceList}" status="i" var="atendenteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${atendenteInstance.id}">${fieldValue(bean: atendenteInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: atendenteInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: atendenteInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: atendenteInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: atendenteInstance, field: "endereco")}</td>
					
						<td><g:formatBoolean boolean="${atendenteInstance.accountExpired}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${atendenteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
