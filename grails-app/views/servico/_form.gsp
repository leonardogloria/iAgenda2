<%@ page import="br.com.iagenda.Servico" %>



<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="servico.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${servicoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'tempoMedio', 'error')} required">
	<label for="tempoMedio">
		<g:message code="servico.tempoMedio.label" default="Tempo Medio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tempoMedio" type="number" value="${servicoInstance.tempoMedio}" required=""/>

</div>

