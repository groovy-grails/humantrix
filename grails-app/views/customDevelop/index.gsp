
<%@ page import="humantrix.CustomDevelop" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customDevelop.label', default: 'CustomDevelop')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-customDevelop" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-customDevelop" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="customDevelop.type.label" default="Type" /></th>
					
						<g:sortableColumn property="clentType" title="${message(code: 'customDevelop.clentType.label', default: 'Clent Type')}" />
					
						<g:sortableColumn property="totalPages" title="${message(code: 'customDevelop.totalPages.label', default: 'Total Pages')}" />
					
						<g:sortableColumn property="subjectTime" title="${message(code: 'customDevelop.subjectTime.label', default: 'Subject Time')}" />
					
						<g:sortableColumn property="others" title="${message(code: 'customDevelop.others.label', default: 'Others')}" />
					
						<g:sortableColumn property="usePeople" title="${message(code: 'customDevelop.usePeople.label', default: 'Use People')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${customDevelopInstanceList}" status="i" var="customDevelopInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${customDevelopInstance.id}">${fieldValue(bean: customDevelopInstance, field: "type")}</g:link></td>
					
						<td>${fieldValue(bean: customDevelopInstance, field: "clentType")}</td>
					
						<td>${fieldValue(bean: customDevelopInstance, field: "totalPages")}</td>
					
						<td>${fieldValue(bean: customDevelopInstance, field: "subjectTime")}</td>
					
						<td>${fieldValue(bean: customDevelopInstance, field: "others")}</td>
					
						<td>${fieldValue(bean: customDevelopInstance, field: "usePeople")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${customDevelopInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
