<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <title>Location Search Results</title>
        <meta name="layout" content="main"/>
    </head>
    <body>

        <h1>Location Search Results</h1>
        <p>Searched ${com.genealogytree.Location.count()} records
        for items matching <em>${term}</em>.
        Found <strong>${locations.size()}</strong> hits.
        </p>
        <ul>
            <g:each var="location" in="${locations}">
                <li>${location.lStr1},${location.lCity},${location.lState}, ${location.lZip}, ${location.lCountry}</li>
            </g:each>
        </ul>

        <g:link action='search'>Search Again</g:link>

    </body>
</html>

