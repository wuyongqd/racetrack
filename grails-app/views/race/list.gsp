
<%@ page import="racetrack.Race" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'race.label', default: 'Race')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-race" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-race" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="city" title="${message(code: 'race.city.label', default: 'City')}" />
					
						<g:sortableColumn property="cost" title="${message(code: 'race.cost.label', default: 'Cost')}" />
					
						<g:sortableColumn property="distance" title="${message(code: 'race.distance.label', default: 'Distance')}" />
					
						<g:sortableColumn property="maxRunners" title="${message(code: 'race.maxRunners.label', default: 'Max Runners')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'race.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="startDateTime" title="${message(code: 'race.startDateTime.label', default: 'Start Date Time')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${raceInstanceList}" status="i" var="raceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${raceInstance.id}">${fieldValue(bean: raceInstance, field: "city")}</g:link></td>
					
						<td>${fieldValue(bean: raceInstance, field: "cost")}</td>
					
						<td>${fieldValue(bean: raceInstance, field: "distance")}</td>
					
						<td>${fieldValue(bean: raceInstance, field: "maxRunners")}</td>
					
						<td>${fieldValue(bean: raceInstance, field: "name")}</td>
					
						<td><g:formatDate date="${raceInstance.startDateTime}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${raceInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
