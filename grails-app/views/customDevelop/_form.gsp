<%@ page import="humantrix.CustomDevelop" %>



<div class="fieldcontain ${hasErrors(bean: customDevelopInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="customDevelop.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="type" name="type.id" from="${humantrix.ProductType.list()}" optionKey="id" required="" value="${customDevelopInstance?.type?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customDevelopInstance, field: 'clentType', 'error')} required">
	<label for="clentType">
		<g:message code="customDevelop.clentType.label" default="Clent Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clentType" maxlength="16" required="" value="${customDevelopInstance?.clentType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customDevelopInstance, field: 'totalPages', 'error')} required">
	<label for="totalPages">
		<g:message code="customDevelop.totalPages.label" default="Total Pages" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalPages" value="${fieldValue(bean: customDevelopInstance, field: 'totalPages')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: customDevelopInstance, field: 'subjectTime', 'error')} required">
	<label for="subjectTime">
		<g:message code="customDevelop.subjectTime.label" default="Subject Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="subjectTime" value="${fieldValue(bean: customDevelopInstance, field: 'subjectTime')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: customDevelopInstance, field: 'others', 'error')} required">
	<label for="others">
		<g:message code="customDevelop.others.label" default="Others" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="others" cols="40" rows="5" maxlength="255" required="" value="${customDevelopInstance?.others}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customDevelopInstance, field: 'usePeople', 'error')} required">
	<label for="usePeople">
		<g:message code="customDevelop.usePeople.label" default="Use People" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="usePeople" value="${fieldValue(bean: customDevelopInstance, field: 'usePeople')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: customDevelopInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="customDevelop.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="email" cols="40" rows="5" maxlength="255" required="" value="${customDevelopInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: customDevelopInstance, field: 'interfaces', 'error')} ">
	<label for="interfaces">
		<g:message code="customDevelop.interfaces.label" default="Interfaces" />
		
	</label>
	<g:select name="interfaces" from="${humantrix.ProductInterface.list()}" multiple="multiple" optionKey="id" size="5" value="${customDevelopInstance?.interfaces*.id}" class="many-to-many"/>

</div>

