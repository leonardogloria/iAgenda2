<%@ page import="br.com.iagenda.Servico" %>

<div class="  fieldcontain ${hasErrors(bean: servicoInstance, field: 'nome', 'error') }  required ">
    <label>Nome</label>
    <span class="required-indicator">*</span>
        <g:textField class="form-control " name="nome" required="" value="${servicoInstance?.nome}"/>
</div>

<div class="form-group">
    <label>Tempo Médio</label>

    <g:field class="form-control"  name="tempoMedio" type="number" value="${servicoInstance.tempoMedio}" required=""/> (Minutos)
</div>


<div class="form-group">
    <label>Preço</label>

    <g:field class="form-control"  name="preco" type="number" value="${servicoInstance.preco}" required=""/> (Minutos)
</div>







<!--


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
-->
