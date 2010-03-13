
<%@ page import="com.genealogytree.FamilyTree" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'familyTree.label', default: 'FamilyTree')}" />
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
            <g:hasErrors bean="${familyTreeInstance}">
            <div class="errors">
                <g:renderErrors bean="${familyTreeInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${familyTreeInstance?.id}" />
                <g:hiddenField name="version" value="${familyTreeInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fId"><g:message code="familyTree.fId.label" default="FI d" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: familyTreeInstance, field: 'fId', 'errors')}">
                                    <g:textField name="fId" value="${fieldValue(bean: familyTreeInstance, field: 'fId')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fName"><g:message code="familyTree.fName.label" default="FN ame" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: familyTreeInstance, field: 'fName', 'errors')}">
                                    <g:textField name="fName" maxlength="30" value="${familyTreeInstance?.fName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fDesc"><g:message code="familyTree.fDesc.label" default="FD esc" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: familyTreeInstance, field: 'fDesc', 'errors')}">
                                    <g:textField name="fDesc" maxlength="30" value="${familyTreeInstance?.fDesc}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="member"><g:message code="familyTree.member.label" default="Member" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: familyTreeInstance, field: 'member', 'errors')}">
                                    <g:select name="member" from="${com.genealogytree.Person.list()}" multiple="yes" optionKey="id" size="5" value="${familyTreeInstance?.member}" />
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
