<%@ page import="racetrack.Registration" %>



<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'createdAt', 'error')} required">
	<label for="createdAt">
		<g:message code="registration.createdAt.label" default="Created At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdAt" precision="day"  value="${registrationInstance?.createdAt}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'dateOfBirth', 'error')} required">
	<label for="dateOfBirth">
		<g:message code="registration.dateOfBirth.label" default="Date Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${registrationInstance?.dateOfBirth}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'emailAddress', 'error')} ">
	<label for="emailAddress">
		<g:message code="registration.emailAddress.label" default="Email Address" />
		
	</label>
	<g:textField name="emailAddress" value="${registrationInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="registration.gender.label" default="Gender" />
		
	</label>
	<g:textField name="gender" value="${registrationInstance?.gender}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="registration.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${registrationInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'postalAddress', 'error')} ">
	<label for="postalAddress">
		<g:message code="registration.postalAddress.label" default="Postal Address" />
		
	</label>
	<g:textField name="postalAddress" value="${registrationInstance?.postalAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'race', 'error')} required">
	<label for="race">
		<g:message code="registration.race.label" default="Race" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="race" name="race.id" from="${racetrack.Race.list()}" optionKey="id" required="" value="${registrationInstance?.race?.id}" class="many-to-one"/>
</div>

