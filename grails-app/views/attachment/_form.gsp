<%@ page import="humantrix.Attachment" %>



<div class="fieldcontain ${hasErrors(bean: attachmentInstance, field: 'oraName', 'error')} required">
	<label for="oraName">
		<g:message code="attachment.oraName.label" default="Ora Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="oraName" cols="40" rows="5" maxlength="255" required="" value="${attachmentInstance?.oraName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: attachmentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="attachment.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="name" cols="40" rows="5" maxlength="255" required="" value="${attachmentInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: attachmentInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="attachment.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" maxlength="16" required="" value="${attachmentInstance?.type}"/>

</div>

