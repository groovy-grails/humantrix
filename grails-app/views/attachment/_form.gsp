<%@ page import="humantrix.Attachment" %>



<div class="fieldcontain ${hasErrors(bean: attachmentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="attachment.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" name="name" size="25" />

</div>



