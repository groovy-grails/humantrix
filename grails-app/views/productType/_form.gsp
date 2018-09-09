<%@ page import="humantrix.ProductType" %>



<div class="fieldcontain ${hasErrors(bean: productTypeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="productType.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="32" required="" value="${productTypeInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productTypeInstance, field: 'father', 'error')} ">
	<label for="father">
		<g:message code="productType.father.label" default="Father" />
		
	</label>
	<g:select id="father" name="father.id" from="${humantrix.ProductType.list()}" optionKey="id" value="${productTypeInstance?.father?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

