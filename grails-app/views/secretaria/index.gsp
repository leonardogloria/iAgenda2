
<%@ page import="br.com.iagenda.Secretaria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'secretaria.label', default: 'Secretaria')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-secretaria" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-secretaria" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'secretaria.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'secretaria.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'secretaria.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'secretaria.cpf.label', default: 'Cpf')}" />
					
						<th><g:message code="secretaria.endereco.label" default="Endereco" /></th>
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'secretaria.accountExpired.label', default: 'Account Expired')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${secretariaInstanceList}" status="i" var="secretariaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${secretariaInstance.id}">${fieldValue(bean: secretariaInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: secretariaInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: secretariaInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: secretariaInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: secretariaInstance, field: "endereco")}</td>
					
						<td><g:formatBoolean boolean="${secretariaInstance.accountExpired}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${secretariaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
