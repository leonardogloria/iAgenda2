<%@ page import="br.com.iagenda.TipoEstabelecimento" %>



<div class="fieldcontain ${hasErrors(bean: tipoEstabelecimentoInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="tipoEstabelecimento.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipo" required="" value="${tipoEstabelecimentoInstance?.tipo}"/>

</div>

