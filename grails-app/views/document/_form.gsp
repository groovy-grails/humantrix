<%@ page import="humantrix.Document" %>



<div class="fieldcontain ${hasErrors(bean: documentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="document.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="255" required="" value="${documentInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: documentInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="document.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<ckeditor:editor name="content" height="400px" width="100%"> ${documentInstance?.content} </ckeditor:editor>
</div>

<div class="fieldcontain ${hasErrors(bean: documentInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="document.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${documentInstance.constraints.type.inList}" required="" value="${documentInstance?.type}" valueMessagePrefix="document.type"/>

</div>

<div class="fieldcontain ${hasErrors(bean: documentInstance, field: 'attachments', 'error')} ">
	<label for="attachments">
		<g:message code="document.attachments.label" default="Attachments" />
		
	</label>
	<g:select name="attachments" from="${humantrix.Attachment.list()}" multiple="multiple" optionKey="id" size="10" value="${documentInstance?.attachments*.id}" class="many-to-many"/>

</div>

