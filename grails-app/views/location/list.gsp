
<%@ page import="com.genealogytree.Location" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'location.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="locId" title="${message(code: 'location.locId.label', default: 'Loc Id')}" />
                        
                            <g:sortableColumn property="street2" title="${message(code: 'location.street2.label', default: 'Street2')}" />
                        
                            <g:sortableColumn property="street1" title="${message(code: 'location.street1.label', default: 'Street1')}" />
                        
                            <g:sortableColumn property="zipCode" title="${message(code: 'location.zipCode.label', default: 'Zip Code')}" />
                        
                            <g:sortableColumn property="state" title="${message(code: 'location.state.label', default: 'State')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${locationInstanceList}" status="i" var="locationInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${locationInstance.id}">${fieldValue(bean: locationInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "locId")}</td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "street2")}</td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "street1")}</td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "zipCode")}</td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "state")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${locationInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
