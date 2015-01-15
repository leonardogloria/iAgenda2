<%@ page import="br.com.iagenda.Telefone" %>



<div class="fieldcontain ${hasErrors(bean: telefoneInstance, field: 'ddd', 'error')} required">
	<label for="ddd">
		<g:message code="telefone.ddd.label" default="Ddd" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ddd" required="" value="${telefoneInstance?.ddd}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: telefoneInstance, field: 'isCelular', 'error')} ">
	<label for="isCelular">
		<g:message code="telefone.isCelular.label" default="Is Celular" />
		
	</label>
	<g:checkBox name="isCelular" value="${telefoneInstance?.isCelular}" />

</div>

<div class="fieldcontain ${hasErrors(bean: telefoneInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="telefone.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${telefoneInstance?.telefone}"/>

</div>

