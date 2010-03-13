
<%@ page import="com.genealogytree.Person" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${personInstance}">
            <div class="errors">
                <g:renderErrors bean="${personInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pId"><g:message code="person.pId.label" default="PI d" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'pId', 'errors')}">
                                    <g:textField name="pId" value="${fieldValue(bean: personInstance, field: 'pId')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="MI"><g:message code="person.MI.label" default="MI" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'MI', 'errors')}">
                                    <g:textField name="MI" maxlength="20" value="${personInstance?.MI}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="isLiving"><g:message code="person.isLiving.label" default="Is Living" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'isLiving', 'errors')}">
                                    <g:checkBox name="isLiving" value="${personInstance?.isLiving}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dateOfBirth"><g:message code="person.dateOfBirth.label" default="Date Of Birth" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'dateOfBirth', 'errors')}">
                                    <g:datePicker name="dateOfBirth" precision="day" value="${personInstance?.dateOfBirth}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="last"><g:message code="person.last.label" default="Last" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'last', 'errors')}">
                                    <g:textField name="last" value="${personInstance?.last}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dateOfDeath"><g:message code="person.dateOfDeath.label" default="Date Of Death" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'dateOfDeath', 'errors')}">
                                    <g:datePicker name="dateOfDeath" precision="day" value="${personInstance?.dateOfDeath}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="father"><g:message code="person.father.label" default="Father" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'father', 'errors')}">
                                    <g:select name="father.id" from="${com.genealogytree.Person.list()}" optionKey="id" value="${personInstance?.father?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tree"><g:message code="person.tree.label" default="Tree" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'tree', 'errors')}">
                                    <g:select name="tree.id" from="${com.genealogytree.FamilyTree.list()}" optionKey="id" value="${personInstance?.tree?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="given"><g:message code="person.given.label" default="Given" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'given', 'errors')}">
                                    <g:textField name="given" value="${personInstance?.given}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="mother"><g:message code="person.mother.label" default="Mother" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'mother', 'errors')}">
                                    <g:select name="mother.id" from="${com.genealogytree.Person.list()}" optionKey="id" value="${personInstance?.mother?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="gender"><g:message code="person.gender.label" default="Gender" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'gender', 'errors')}">
                                    <g:textField name="gender" value="${personInstance?.gender}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="first"><g:message code="person.first.label" default="First" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: personInstance, field: 'first', 'errors')}">
                                    <g:textField name="first" value="${personInstance?.first}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
