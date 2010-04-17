<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <title>Source Search Results</title>
        <meta name="layout" content="main"/>
    </head>
    <body>

        <h1>Results</h1>
        <p>Searched ${com.genealogytree.Source.count()} records
        for items matching <em>${term}</em>.
        Found <strong>${sources.size()}</strong> hits.
        </p>
        <ul>
            <g:each var="source" in="${sources}">
                <li>${source.sName}</li>
            </g:each>
        </ul>

        <g:link action='search'>Search Again</g:link>

    </body>
</html>

