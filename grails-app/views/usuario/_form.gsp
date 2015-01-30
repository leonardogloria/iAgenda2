<%@ page import="br.com.iagenda.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="usuario.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${usuarioInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${usuarioInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${usuarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="usuario.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${usuarioInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="usuario.endereco.label" default="Endereco" />
		
	</label>
	<g:select id="endereco" name="endereco.id" from="${br.com.iagenda.Endereco.list()}" optionKey="id" value="${usuarioInstance?.endereco?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="usuario.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${usuarioInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="usuario.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${usuarioInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="usuario.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${usuarioInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nomeCompleto', 'error')} required">
	<label for="nomeCompleto">
		<g:message code="usuario.nomeCompleto.label" default="Nome Completo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeCompleto" required="" value="${usuarioInstance?.nomeCompleto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="usuario.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${usuarioInstance?.passwordExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="usuario.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${br.com.iagenda.enums.Sexo?.values()}" keys="${br.com.iagenda.enums.Sexo.values()*.name()}" required="" value="${usuarioInstance?.sexo?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'telefones', 'error')} ">
	<label for="telefones">
		<g:message code="usuario.telefones.label" default="Telefones" />
		
	</label>
	<g:select name="telefones" from="${br.com.iagenda.Telefone.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.telefones*.id}" class="many-to-many"/>

</div>

