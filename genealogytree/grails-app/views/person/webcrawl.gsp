<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <title>Genealogy Tree Webcrawler</title>
    <meta name="layout" content="main"/>
  </head>
  <body>
  <formset>
<h1>Webcrawler Functionality</h1>
<h3>Select a name from the database and click Search to process it through two 
online SSDIs. </h3>
    <g:form action="webcrawlresults">
      <label for="last">Last Name</label>
      <g:select label="Last Name" name="last" from="${persons?.Last}" value="" />
      <g:submitButton name="search" value="Search"/>
    </g:form>
  </formset>
</body>
</html>

