<%@ page import="br.com.iagenda.Secretaria" %>



<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="secretaria.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${secretariaInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="secretaria.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${secretariaInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="secretaria.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${secretariaInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="secretaria.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${secretariaInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="secretaria.endereco.label" default="Endereco" />
		
	</label>
	<g:select id="endereco" name="endereco.id" from="${br.com.iagenda.Endereco.list()}" optionKey="id" value="${secretariaInstance?.endereco?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="secretaria.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${secretariaInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="secretaria.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${secretariaInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'ctps', 'error')} required">
	<label for="ctps">
		<g:message code="secretaria.ctps.label" default="Ctps" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ctps" type="number" value="${secretariaInstance.ctps}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="secretaria.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${secretariaInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'nomeCompleto', 'error')} required">
	<label for="nomeCompleto">
		<g:message code="secretaria.nomeCompleto.label" default="Nome Completo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeCompleto" required="" value="${secretariaInstance?.nomeCompleto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="secretaria.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${secretariaInstance?.passwordExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'servGerenciados', 'error')} ">
	<label for="servGerenciados">
		<g:message code="secretaria.servGerenciados.label" default="Serv Gerenciados" />
		
	</label>
	<g:select name="servGerenciados" from="${br.com.iagenda.Servico.list()}" multiple="multiple" optionKey="id" size="5" value="${secretariaInstance?.servGerenciados*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="secretaria.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${br.com.iagenda.enums.Sexo?.values()}" keys="${br.com.iagenda.enums.Sexo.values()*.name()}" required="" value="${secretariaInstance?.sexo?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: secretariaInstance, field: 'telefones', 'error')} ">
	<label for="telefones">
		<g:message code="secretaria.telefones.label" default="Telefones" />
		
	</label>
	<g:select name="telefones" from="${br.com.iagenda.Telefone.list()}" multiple="multiple" optionKey="id" size="5" value="${secretariaInstance?.telefones*.id}" class="many-to-many"/>

</div>

