
<%@ page import="humantrix.ProductSupport" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productSupport.label', default: 'ProductSupport')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-productSupport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-productSupport" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'productSupport.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'productSupport.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'productSupport.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'productSupport.password.label', default: 'Password')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productSupportInstanceList}" status="i" var="productSupportInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productSupportInstance.id}">${fieldValue(bean: productSupportInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: productSupportInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: productSupportInstance, field: "username")}</td>
					
						<td>${fieldValue(bean: productSupportInstance, field: "password")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productSupportInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
