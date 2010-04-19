<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Genealogy Tree Webcrawler</title>
        <meta name="layout" content="main"/>
    </head>
    <body>

<h1>NewEnglandAncestry.org SSDI</h1>
<p>${personService.ssdidb1.decodeHTML().decodeComma()}

<a href="http://www.newenglandancestors.org/database_search/ssdi.asp?srch=srch" target="_blank">Click</a> to go to the NewEnglandAncestry.org SSDI</p>

<h1>WorldVitalRecords.com SSDI</h1>

<p>${personService.ssdidb2.decodeHTML().decodeComma().decodeDetails().decodeNext().decodeCircle()}

<a href="http://www.worldvitalrecords.com/zsearch.aspx?ix=ssdiall&qt=l&zln=${personService.name}" target="_blank">Click</a> to see more results from WorldVitalRecords.com.</p>
<br>
<p><h1><g:link action='webcrawl'>Search Again</g:link></h1></p>

    </body>
</html>

