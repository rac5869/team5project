<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <title>Event Search Results</title>
        <meta name="layout" content="main"/>
    </head>
    <body>

        <h1>Event Search Results</h1>
        <p>Searched ${com.genealogytree.Event.count()} records
        for items matching <em>${term}</em>.
        Found <strong>${events.size()}</strong> hits.
        </p>
        <ul>
            <g:each var="event" in="${events}">
                <li>${event.eName}</li>
            </g:each>
        </ul>

        <g:link action='search'>Search Again</g:link>

    </body>
</html>

