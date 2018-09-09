
<%@ page import="humantrix.ProductSupport" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productSupport.label', default: 'ProductSupport')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-productSupport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-productSupport" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list productSupport">
			
				<g:if test="${productSupportInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="productSupport.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${productSupportInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productSupportInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="productSupport.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${productSupportInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productSupportInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="productSupport.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${productSupportInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productSupportInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="productSupport.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${productSupportInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productSupportInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productSupportInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
