
<%@ page import="com.genealogytree.IsRelatedTo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'isRelatedTo.label', default: 'IsRelatedTo')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${isRelatedToInstance}">
            <div class="errors">
                <g:renderErrors bean="${isRelatedToInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${isRelatedToInstance?.id}" />
                <g:hiddenField name="version" value="${isRelatedToInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="relatedToType"><g:message code="isRelatedTo.relatedToType.label" default="Related To Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: isRelatedToInstance, field: 'relatedToType', 'errors')}">
                                    <g:textField name="relatedToType" value="${isRelatedToInstance?.relatedToType}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="relatee"><g:message code="isRelatedTo.relatee.label" default="Relatee" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: isRelatedToInstance, field: 'relatee', 'errors')}">
                                    <g:select name="relatee" from="${com.genealogytree.Person.list()}" multiple="yes" optionKey="id" size="5" value="${isRelatedToInstance?.relatee}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="relator"><g:message code="isRelatedTo.relator.label" default="Relator" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: isRelatedToInstance, field: 'relator', 'errors')}">
                                    <g:select name="relator" from="${com.genealogytree.Person.list()}" multiple="yes" optionKey="id" size="5" value="${isRelatedToInstance?.relator}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
