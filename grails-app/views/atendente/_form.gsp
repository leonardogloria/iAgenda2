<%@ page import="br.com.iagenda.Atendente" %>



<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="atendente.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${atendenteInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="atendente.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${atendenteInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="atendente.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${atendenteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="atendente.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${atendenteInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="atendente.endereco.label" default="Endereco" />
		
	</label>
	<g:select id="endereco" name="endereco.id" from="${br.com.iagenda.Endereco.list()}" optionKey="id" value="${atendenteInstance?.endereco?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="atendente.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${atendenteInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="atendente.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${atendenteInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'ctps', 'error')} required">
	<label for="ctps">
		<g:message code="atendente.ctps.label" default="Ctps" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ctps" type="number" value="${atendenteInstance.ctps}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="atendente.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${atendenteInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'nomeCompleto', 'error')} required">
	<label for="nomeCompleto">
		<g:message code="atendente.nomeCompleto.label" default="Nome Completo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeCompleto" required="" value="${atendenteInstance?.nomeCompleto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="atendente.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${atendenteInstance?.passwordExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'servGerenciados', 'error')} ">
	<label for="servGerenciados">
		<g:message code="atendente.servGerenciados.label" default="Serv Gerenciados" />
		
	</label>
	<g:select name="servGerenciados" from="${br.com.iagenda.Servico.list()}" multiple="multiple" optionKey="id" size="5" value="${atendenteInstance?.servGerenciados*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'servicos', 'error')} ">
	<label for="servicos">
		<g:message code="atendente.servicos.label" default="Servicos" />
		
	</label>
	<g:select name="servicos" from="${br.com.iagenda.Servico.list()}" multiple="multiple" optionKey="id" size="5" value="${atendenteInstance?.servicos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="atendente.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${br.com.iagenda.enums.Sexo?.values()}" keys="${br.com.iagenda.enums.Sexo.values()*.name()}" required="" value="${atendenteInstance?.sexo?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: atendenteInstance, field: 'telefones', 'error')} ">
	<label for="telefones">
		<g:message code="atendente.telefones.label" default="Telefones" />
		
	</label>
	<g:select name="telefones" from="${br.com.iagenda.Telefone.list()}" multiple="multiple" optionKey="id" size="5" value="${atendenteInstance?.telefones*.id}" class="many-to-many"/>

</div>

