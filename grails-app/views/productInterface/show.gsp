
<%@ page import="humantrix.ProductInterface" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productInterface.label', default: 'ProductInterface')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-productInterface" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-productInterface" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list productInterface">
			
				<g:if test="${productInterfaceInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="productInterface.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${productInterfaceInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInterfaceInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="productInterface.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${productInterfaceInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInterfaceInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="productInterface.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${productInterfaceInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productInterfaceInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productInterfaceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
