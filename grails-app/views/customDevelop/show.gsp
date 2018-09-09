
<%@ page import="humantrix.CustomDevelop" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customDevelop.label', default: 'CustomDevelop')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-customDevelop" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-customDevelop" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customDevelop">
			
				<g:if test="${customDevelopInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="customDevelop.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:link controller="productType" action="show" id="${customDevelopInstance?.type?.id}">${customDevelopInstance?.type?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${customDevelopInstance?.clentType}">
				<li class="fieldcontain">
					<span id="clentType-label" class="property-label"><g:message code="customDevelop.clentType.label" default="Clent Type" /></span>
					
						<span class="property-value" aria-labelledby="clentType-label"><g:fieldValue bean="${customDevelopInstance}" field="clentType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customDevelopInstance?.totalPages}">
				<li class="fieldcontain">
					<span id="totalPages-label" class="property-label"><g:message code="customDevelop.totalPages.label" default="Total Pages" /></span>
					
						<span class="property-value" aria-labelledby="totalPages-label"><g:fieldValue bean="${customDevelopInstance}" field="totalPages"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customDevelopInstance?.subjectTime}">
				<li class="fieldcontain">
					<span id="subjectTime-label" class="property-label"><g:message code="customDevelop.subjectTime.label" default="Subject Time" /></span>
					
						<span class="property-value" aria-labelledby="subjectTime-label"><g:fieldValue bean="${customDevelopInstance}" field="subjectTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customDevelopInstance?.others}">
				<li class="fieldcontain">
					<span id="others-label" class="property-label"><g:message code="customDevelop.others.label" default="Others" /></span>
					
						<span class="property-value" aria-labelledby="others-label"><g:fieldValue bean="${customDevelopInstance}" field="others"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customDevelopInstance?.usePeople}">
				<li class="fieldcontain">
					<span id="usePeople-label" class="property-label"><g:message code="customDevelop.usePeople.label" default="Use People" /></span>
					
						<span class="property-value" aria-labelledby="usePeople-label"><g:fieldValue bean="${customDevelopInstance}" field="usePeople"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customDevelopInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="customDevelop.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${customDevelopInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customDevelopInstance?.interfaces}">
				<li class="fieldcontain">
					<span id="interfaces-label" class="property-label"><g:message code="customDevelop.interfaces.label" default="Interfaces" /></span>
					
						<g:each in="${customDevelopInstance.interfaces}" var="i">
						<span class="property-value" aria-labelledby="interfaces-label"><g:link controller="productInterface" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:customDevelopInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${customDevelopInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
