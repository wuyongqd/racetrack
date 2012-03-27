
<%@ page import="racetrack.Registration" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registration.label', default: 'Registration')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registration" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registration" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="createdAt" title="${message(code: 'registration.createdAt.label', default: 'Created At')}" />
					
						<g:sortableColumn property="dateOfBirth" title="${message(code: 'registration.dateOfBirth.label', default: 'Date Of Birth')}" />
					
						<g:sortableColumn property="emailAddress" title="${message(code: 'registration.emailAddress.label', default: 'Email Address')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'registration.gender.label', default: 'Gender')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'registration.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="postalAddress" title="${message(code: 'registration.postalAddress.label', default: 'Postal Address')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registrationInstanceList}" status="i" var="registrationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registrationInstance.id}">${fieldValue(bean: registrationInstance, field: "createdAt")}</g:link></td>
					
						<td><g:formatDate date="${registrationInstance.dateOfBirth}" /></td>
					
						<td>${fieldValue(bean: registrationInstance, field: "emailAddress")}</td>
					
						<td>${fieldValue(bean: registrationInstance, field: "gender")}</td>
					
						<td>${fieldValue(bean: registrationInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: registrationInstance, field: "postalAddress")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registrationInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
