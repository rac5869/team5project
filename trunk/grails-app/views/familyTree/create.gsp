
<%@ page import="com.genealogytree.FamilyTree" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'familyTree.label', default: 'FamilyTree')}" />
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
            <g:hasErrors bean="${familyTreeInstance}">
            <div class="errors">
                <g:renderErrors bean="${familyTreeInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
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
