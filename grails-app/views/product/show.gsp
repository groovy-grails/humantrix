
<%@ page import="humantrix.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-product" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list product">
			
				<g:if test="${productInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="product.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${productInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.detail}">
				<li class="fieldcontain">
					<span id="detail-label" class="property-label"><g:message code="product.detail.label" default="Detail" /></span>
					
						<span class="property-value" aria-labelledby="detail-label"><g:fieldValue bean="${productInstance}" field="detail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="product.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:link controller="productType" action="show" id="${productInstance?.type?.id}">${productInstance?.type?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.useIn}">
				<li class="fieldcontain">
					<span id="useIn-label" class="property-label"><g:message code="product.useIn.label" default="Use In" /></span>
					
						<span class="property-value" aria-labelledby="useIn-label"><g:fieldValue bean="${productInstance}" field="useIn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.priceType}">
				<li class="fieldcontain">
					<span id="priceType-label" class="property-label"><g:message code="product.priceType.label" default="Price Type" /></span>
					
						<span class="property-value" aria-labelledby="priceType-label"><g:fieldValue bean="${productInstance}" field="priceType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="product.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${productInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.ifShow}">
				<li class="fieldcontain">
					<span id="ifShow-label" class="property-label"><g:message code="product.ifShow.label" default="If Show" /></span>
					
						<span class="property-value" aria-labelledby="ifShow-label"><g:formatBoolean boolean="${productInstance?.ifShow}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.attachments}">
				<li class="fieldcontain">
					<span id="attachments-label" class="property-label"><g:message code="product.attachments.label" default="Attachments" /></span>
					
						<g:each in="${productInstance.attachments}" var="a">
						<span class="property-value" aria-labelledby="attachments-label"><g:link controller="attachment" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
