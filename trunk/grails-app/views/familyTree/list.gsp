
<%@ page import="com.genealogytree.FamilyTree" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'familyTree.label', default: 'FamilyTree')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'familyTree.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="fId" title="${message(code: 'familyTree.fId.label', default: 'FI d')}" />
                        
                            <g:sortableColumn property="fName" title="${message(code: 'familyTree.fName.label', default: 'FN ame')}" />
                        
                            <g:sortableColumn property="fDesc" title="${message(code: 'familyTree.fDesc.label', default: 'FD esc')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${familyTreeInstanceList}" status="i" var="familyTreeInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${familyTreeInstance.id}">${fieldValue(bean: familyTreeInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: familyTreeInstance, field: "fId")}</td>
                        
                            <td>${fieldValue(bean: familyTreeInstance, field: "fName")}</td>
                        
                            <td>${fieldValue(bean: familyTreeInstance, field: "fDesc")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${familyTreeInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
