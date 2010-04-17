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
<p>${personService.ssdidb1.decodeHTML()}

<script language=javascript>
function goto_pg()
{
	if(IsNumeric(document.gotoform.goto_page.value))
	{
		document.location.href="http://www.newenglandancestors.org/database_search/ssdi.asp?srch=srch" + document.gotoform.goto_page.value+"&anchor=#results";
	}
	else
	{
		alert("Page number cannot be a non-numeric value");
	}
}

function validateSocialSecurity(lname, fname, year1, year2, ssnum)
{
	lname = trim(lname);
	fname = trim(fname);
	y1 = trim(year1);
	y2 = trim(year2);
	ssnum = trim(ssnum);
	resstate=document.search.resstate.value;
	paystate=document.search.paystate.value;	
 
 if(fname+lname+ssnum == '')
 {
  alert("Please give at least one search criteria!!!");
  return false;
 }
 else
 {
 //added by abhishek on 18-11-2008 to avoid ssdi getting slowed down when searched by firstname only
 //modified by abhishek on 12-Dec-2008
 	if(lname+ssnum=='')
		{
				alert("Please enter a last name");
				return false;				
		}
	return true;
 }
}
</script>

<a href="http://www.newenglandancestors.org/database_search/ssdi.asp?srch=srch" target="_blank">Click</a> to go to the NewEnglandAncestry.org SSDI</p>

<h1>WorldVitalRecords.com SSDI</h1>

<p>${personService.ssdidb2.decodeHTML()}

<a href="http://www.worldvitalrecords.com/zsearch.aspx?ix=ssdiall&qt=l&zln=${personService.name}" target="_blank">Click</a> to see more results from WorldVitalRecords.com.</p>

<p><h1><g:link action='webcrawl'>Search Again</g:link></h1></p>

    </body>
</html>

