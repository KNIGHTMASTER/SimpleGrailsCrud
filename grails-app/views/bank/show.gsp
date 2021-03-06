
<%@ page import="simplegrailscrud.Bank" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bank.label', default: 'Bank')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bank" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bank" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bank">
			
				<g:if test="${bankInstance?.bankCode}">
				<li class="fieldcontain">
					<span id="bankCode-label" class="property-label"><g:message code="bank.bankCode.label" default="Bank Code" /></span>
					
						<span class="property-value" aria-labelledby="bankCode-label"><g:fieldValue bean="${bankInstance}" field="bankCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bankInstance?.bankName}">
				<li class="fieldcontain">
					<span id="bankName-label" class="property-label"><g:message code="bank.bankName.label" default="Bank Name" /></span>
					
						<span class="property-value" aria-labelledby="bankName-label"><g:fieldValue bean="${bankInstance}" field="bankName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bankInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="bank.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${bankInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${bankInstance?.id}" />
					<g:link class="edit" action="edit" id="${bankInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
