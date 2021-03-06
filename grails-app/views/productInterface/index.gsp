
<%@ page import="humantrix.ProductInterface" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productInterface.label', default: 'ProductInterface')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-productInterface" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-productInterface" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="type" title="${message(code: 'productInterface.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'productInterface.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'productInterface.price.label', default: 'Price')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productInterfaceInstanceList}" status="i" var="productInterfaceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productInterfaceInstance.id}">${fieldValue(bean: productInterfaceInstance, field: "type")}</g:link></td>
					
						<td>${fieldValue(bean: productInterfaceInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: productInterfaceInstance, field: "price")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productInterfaceInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
