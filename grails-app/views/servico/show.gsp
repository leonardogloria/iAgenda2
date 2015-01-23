
<%@ page import="br.com.iagenda.Servico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'servico.label', default: 'Servico')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
    <section>
    <!-- Page content-->
    <div class="content-wrapper">
        <h3>Serviços
            <small></small>
        </h3>

        <g:if test="${flash.message}">
            <div role="alert" class="alert alert-success">
                ${flash.message}</div>
        </g:if>

        <div class="col-sm-6">
            <!-- START panel-->
            <div class="panel panel-default">
                <div class="panel-heading">Novo Serviço</div>
                    <div class="panel-body">
                        <g:if test="${servicoInstance?.nome}">

                            <h3>Nome:
                                <small><g:fieldValue bean="${servicoInstance}" field="nome"/></small>
                            </h3>

                        </g:if>

                        <g:if test="${servicoInstance?.tempoMedio}">
                                <h3>Tempo médio:
                                    <small><g:fieldValue bean="${servicoInstance}" field="tempoMedio"/> &nbsp;(Minutos)</small>
                                </h3>

                        </g:if>

                        <g:if test="${servicoInstance?.preco}">
                            <h3>Preço:
                                <small><g:fieldValue bean="${servicoInstance}" field="preco"/> &nbsp;(R$)</small>
                            </h3>

                        </g:if>

                    </div>
            </div>
        </div>
    </div>
    </section>
	</body>
</html>
