<%@ page import="humantrix.ProductInterface" %>



<div class="fieldcontain ${hasErrors(bean: productInterfaceInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="productInterface.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${productInterfaceInstance.constraints.type.inList}" required="" value="${productInterfaceInstance?.type}" valueMessagePrefix="productInterface.type"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInterfaceInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="productInterface.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="name" cols="40" rows="5" maxlength="255" required="" value="${productInterfaceInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInterfaceInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="productInterface.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: productInterfaceInstance, field: 'price')}" required=""/>

</div>

