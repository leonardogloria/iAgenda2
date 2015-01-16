<%@ page import="br.com.iagenda.SecUserSecRole" %>



<div class="fieldcontain ${hasErrors(bean: secUserSecRoleInstance, field: 'sercRole', 'error')} required">
	<label for="sercRole">
		<g:message code="secUserSecRole.sercRole.label" default="Serc Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sercRole" name="sercRole.id" from="${br.com.iagenda.SecRole.list()}" optionKey="id" required="" value="${secUserSecRoleInstance?.sercRole?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: secUserSecRoleInstance, field: 'secUser', 'error')} required">
	<label for="secUser">
		<g:message code="secUserSecRole.secUser.label" default="Sec User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="secUser" name="secUser.id" from="${br.com.iagenda.SecUser.list()}" optionKey="id" required="" value="${secUserSecRoleInstance?.secUser?.id}" class="many-to-one"/>

</div>

