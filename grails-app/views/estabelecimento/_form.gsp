<%@ page import="br.com.iagenda.Estabelecimento" %>



<div class="fieldcontain ${hasErrors(bean: estabelecimentoInstance, field: 'cnpj', 'error')} required">
	<label for="cnpj">
		<g:message code="estabelecimento.cnpj.label" default="Cnpj" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cnpj" required="" value="${estabelecimentoInstance?.cnpj}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estabelecimentoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="estabelecimento.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${estabelecimentoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estabelecimentoInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="estabelecimento.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="endereco" name="endereco.id" from="${br.com.iagenda.Endereco.list()}" optionKey="id" required="" value="${estabelecimentoInstance?.endereco?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estabelecimentoInstance, field: 'homePage', 'error')} required">
	<label for="homePage">
		<g:message code="estabelecimento.homePage.label" default="Home Page" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="homePage" required="" value="${estabelecimentoInstance?.homePage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estabelecimentoInstance, field: 'nomePessoaContato', 'error')} required">
	<label for="nomePessoaContato">
		<g:message code="estabelecimento.nomePessoaContato.label" default="Nome Pessoa Contato" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomePessoaContato" required="" value="${estabelecimentoInstance?.nomePessoaContato}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estabelecimentoInstance, field: 'razaoSocial', 'error')} required">
	<label for="razaoSocial">
		<g:message code="estabelecimento.razaoSocial.label" default="Razao Social" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="razaoSocial" required="" value="${estabelecimentoInstance?.razaoSocial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estabelecimentoInstance, field: 'servicos', 'error')} ">
	<label for="servicos">
		<g:message code="estabelecimento.servicos.label" default="Servicos" />
		
	</label>
	<g:select name="servicos" from="${br.com.iagenda.Servico.list()}" multiple="multiple" optionKey="id" size="5" value="${estabelecimentoInstance?.servicos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estabelecimentoInstance, field: 'telefones', 'error')} ">
	<label for="telefones">
		<g:message code="estabelecimento.telefones.label" default="Telefones" />
		
	</label>
	<g:select name="telefones" from="${br.com.iagenda.Telefone.list()}" multiple="multiple" optionKey="id" size="5" value="${estabelecimentoInstance?.telefones*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estabelecimentoInstance, field: 'tipoEstabelecimento', 'error')} required">
	<label for="tipoEstabelecimento">
		<g:message code="estabelecimento.tipoEstabelecimento.label" default="Tipo Estabelecimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipoEstabelecimento" name="tipoEstabelecimento.id" from="${br.com.iagenda.TipoEstabelecimento.list()}" optionKey="id" required="" value="${estabelecimentoInstance?.tipoEstabelecimento?.id}" class="many-to-one"/>

</div>

