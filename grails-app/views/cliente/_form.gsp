<%@ page import="br.com.iagenda.Cliente" %>



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

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nomeCompleto', 'error')} required">
	<label for="nomeCompleto">
		<g:message code="cliente.nomeCompleto.label" default="Nome Completo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeCompleto" required="" value="${clienteInstance?.nomeCompleto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'secUser', 'error')} required">
	<label for="secUser">
		<g:message code="cliente.secUser.label" default="Sec User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="secUser" name="secUser.id" from="${br.com.iagenda.SecUser.list()}" optionKey="id" required="" value="${clienteInstance?.secUser?.id}" class="many-to-one"/>

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

