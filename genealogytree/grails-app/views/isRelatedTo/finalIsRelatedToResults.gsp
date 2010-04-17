<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <title>Relation Intermediate Search Results</title>
        <meta name="layout" content="main"/>
    </head>
    <body>

        <h1>Results</h1>
        <p>Searched ${com.genealogytree.Person.count()} records
        for items matching <em>${term}</em>.
        Found <strong>${relations.size()}</strong> hits.
        </p>
        <ul>
            <g:each var="person" in="${relations}">
                <li>${person.Last}, ${person.First}, ${person.MI}</li>
            </g:each>
        </ul>
        <g:link action='search'>Search Again</g:link>
    </body>
</html>