<%@ page import="br.com.iagenda.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="cliente.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${clienteInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="cliente.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${clienteInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="cliente.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${clienteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="cliente.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${clienteInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="cliente.endereco.label" default="Endereco" />
		
	</label>
	<g:select id="endereco" name="endereco.id" from="${br.com.iagenda.Endereco.list()}" optionKey="id" value="${clienteInstance?.endereco?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="cliente.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${clienteInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="cliente.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${clienteInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="cliente.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${clienteInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nomeCompleto', 'error')} required">
	<label for="nomeCompleto">
		<g:message code="cliente.nomeCompleto.label" default="Nome Completo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeCompleto" required="" value="${clienteInstance?.nomeCompleto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="cliente.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${clienteInstance?.passwordExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="cliente.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${br.com.iagenda.enums.Sexo?.values()}" keys="${br.com.iagenda.enums.Sexo.values()*.name()}" required="" value="${clienteInstance?.sexo?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'telefones', 'error')} ">
	<label for="telefones">
		<g:message code="cliente.telefones.label" default="Telefones" />
		
	</label>
	<g:select name="telefones" from="${br.com.iagenda.Telefone.list()}" multiple="multiple" optionKey="id" size="5" value="${clienteInstance?.telefones*.id}" class="many-to-many"/>

</div>

