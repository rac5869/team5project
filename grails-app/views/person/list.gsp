
<%@ page import="com.genealogytree.Person" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'person.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="pId" title="${message(code: 'person.pId.label', default: 'PI d')}" />
                        
                            <g:sortableColumn property="MI" title="${message(code: 'person.MI.label', default: 'MI')}" />
                        
                            <g:sortableColumn property="isLiving" title="${message(code: 'person.isLiving.label', default: 'Is Living')}" />
                        
                            <g:sortableColumn property="dateOfBirth" title="${message(code: 'person.dateOfBirth.label', default: 'Date Of Birth')}" />
                        
                            <g:sortableColumn property="last" title="${message(code: 'person.last.label', default: 'Last')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${personInstanceList}" status="i" var="personInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${personInstance.id}">${fieldValue(bean: personInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: personInstance, field: "pId")}</td>
                        
                            <td>${fieldValue(bean: personInstance, field: "MI")}</td>
                        
                            <td><g:formatBoolean boolean="${personInstance.isLiving}" /></td>
                        
                            <td><g:formatDate date="${personInstance.dateOfBirth}" /></td>
                        
                            <td>${fieldValue(bean: personInstance, field: "last")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${personInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
