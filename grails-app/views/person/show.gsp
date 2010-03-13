
<%@ page import="com.genealogytree.Person" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="person.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="person.pId.label" default="PI d" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personInstance, field: "pId")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="person.MI.label" default="MI" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personInstance, field: "MI")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="person.isLiving.label" default="Is Living" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${personInstance?.isLiving}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="person.dateOfBirth.label" default="Date Of Birth" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personInstance?.dateOfBirth}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="person.last.label" default="Last" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personInstance, field: "last")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="person.dateOfDeath.label" default="Date Of Death" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${personInstance?.dateOfDeath}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="person.father.label" default="Father" /></td>
                            
                            <td valign="top" class="value"><g:link controller="person" action="show" id="${personInstance?.father?.id}">${personInstance?.father?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="person.tree.label" default="Tree" /></td>
                            
                            <td valign="top" class="value"><g:link controller="familyTree" action="show" id="${personInstance?.tree?.id}">${personInstance?.tree?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="person.given.label" default="Given" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personInstance, field: "given")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="person.mother.label" default="Mother" /></td>
                            
                            <td valign="top" class="value"><g:link controller="person" action="show" id="${personInstance?.mother?.id}">${personInstance?.mother?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="person.gender.label" default="Gender" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personInstance, field: "gender")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="person.first.label" default="First" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: personInstance, field: "first")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${personInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
