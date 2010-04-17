<html>
  <head>
    <title>GenealogyTree Webcrawl</title>
    <meta name="layout" content="main"/>
  </head>
  <body>
  <formset>
    <legend>"Webcrawling" for Genealogy Tree members</legend>
    <g:form action="beforeInsert">
      <label for="FirstName">First name</label>
      <g:textField name="firstName" />
      <label for="LastName">Last name</label>
      <g:textField name="lastName" />
      <g:submitButton name="search" value="Search"/>
    </g:form>
  </formset>
</body>
</html>

