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
      Found <strong>${persons.size()}</strong> hits.
    </p>
    <g:form action="finalIsRelatedToResults">
      <g:select name="pId"
from="${persons}"
optionKey="pId"
noSelection="${['null':'Please Choose...']}" />
    <g:submitButton name="findRelatives" value="Find Relatives"/>
  </g:form>
  </body>
</html>

