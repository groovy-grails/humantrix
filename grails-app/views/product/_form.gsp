<%@ page import="humantrix.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="product.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="64" required="" value="${productInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'detail', 'error')} required">
	<label for="detail">
		<g:message code="product.detail.label" default="Detail" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="detail" cols="40" rows="5" maxlength="8000" required="" value="${productInstance?.detail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="product.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="type" name="type.id" from="${humantrix.ProductType.list()}" optionKey="id" required="" value="${productInstance?.type?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'useIn', 'error')} required">
	<label for="useIn">
		<g:message code="product.useIn.label" default="Use In" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="useIn" maxlength="64" required="" value="${productInstance?.useIn}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'priceType', 'error')} required">
	<label for="priceType">
		<g:message code="product.priceType.label" default="Price Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="priceType" maxlength="16" required="" value="${productInstance?.priceType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: productInstance, field: 'price')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'ifShow', 'error')} ">
	<label for="ifShow">
		<g:message code="product.ifShow.label" default="If Show" />
		
	</label>
	<g:checkBox name="ifShow" value="${productInstance?.ifShow}" />

</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'attachments', 'error')} ">
	<label for="attachments">
		<g:message code="product.attachments.label" default="Attachments" />
		
	</label>
	<g:select name="attachments" from="${humantrix.Attachment.list()}" multiple="multiple" optionKey="id" size="10" value="${productInstance?.attachments*.id}" class="many-to-many"/>

</div>

