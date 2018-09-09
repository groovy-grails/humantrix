<%@ page import="humantrix.ProductSupport" %>



<div class="fieldcontain ${hasErrors(bean: productSupportInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="productSupport.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="64" required="" value="${productSupportInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productSupportInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="productSupport.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="address" cols="40" rows="5" maxlength="255" required="" value="${productSupportInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productSupportInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="productSupport.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="32" required="" value="${productSupportInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: productSupportInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="productSupport.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" maxlength="32" required="" value="${productSupportInstance?.password}"/>

</div>

