<%@ page import="br.com.iagenda.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="cliente.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${clienteInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="cliente.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${clienteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="cliente.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="endereco" name="endereco.id" from="${br.com.iagenda.Endereco.list()}" optionKey="id" required="" value="${clienteInstance?.endereco?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="cliente.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${clienteInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="cliente.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${br.com.iagenda.enums.Sexo?.values()}" keys="${br.com.iagenda.enums.Sexo.values()*.name()}" required="" value="${clienteInstance?.sexo?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'sobrenome', 'error')} required">
	<label for="sobrenome">
		<g:message code="cliente.sobrenome.label" default="Sobrenome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sobrenome" required="" value="${clienteInstance?.sobrenome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'telefones', 'error')} ">
	<label for="telefones">
		<g:message code="cliente.telefones.label" default="Telefones" />
		
	</label>
	<g:select name="telefones" from="${br.com.iagenda.Telefone.list()}" multiple="multiple" optionKey="id" size="5" value="${clienteInstance?.telefones*.id}" class="many-to-many"/>

</div>

