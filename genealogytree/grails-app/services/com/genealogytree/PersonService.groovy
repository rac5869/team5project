
package com.genealogytree

import websphinx.* // (for Websphinx?)
import websphinx.searchengine.Search // (for Websphinx?)

class PersonService {

    boolean transactional = true
    
    String ssdidb1
    String ssdidb2
    String v1 //used to grab first address
    String v2 //used to grab second address
    String name //used to grab last name

    def serviceMethodA(String last) { //code for web crawl

//code for NewEnglandAncestors.org SSDI
public url = new URL("http://www.newenglandancestors.org/database_search/ssdi.asp?srch=srch")
public ca = url.openConnection()
public ce = ca.setDoInput(true) //decleares URL connection for input
public cb = ca.setDoOutput(true) //declares URL connection for output
public cf = ca.setUseCaches(false) //no caches
public cc = ca.setRequestProperty("Content-Type", "application/x-www-form-urlencoded") //declares content-type

public da = new DataOutputStream(ca.getOutputStream()) //creates/starts DataOutputStream using outputstream from urlconnection
public db = da.writeBytes("last_name=" + URLEncoder.encode(last, "UTF-8"))//adds post data

public dc = da.flush() //sends to urlconnection

public stream = ca.getInputStream()
public inna = new BufferedInputStream(stream)

public tra = ca.getURL() //???
public trb = new Link(tra) //???
v2 = url //???

public testee = inna.readLines() //equals tester to contents of html
public end = testee.size()

//if no results returned, </td></tr></table> is on line 2297
//if 15+ results, </td></tr></table> is on line 2309
//deletable range: (line+2), end of doc

for(int k in 2309..2274) { //possible locations of code in HTML code
if ((testee.get(k)) == "</td></tr></table>") { //when code is found in HTML code
testee.removeRange(k+2, end) //HTML code after code is removed
} //end of if loop
k-- //next k value
} //end of for loop

public testef = testee.removeRange(182, 2273) //ideal range 2273

ssdidb1 = testee

public wa = new Link("http://www.worldvitalrecords.com/zsearch.aspx?ix=ssdiall&qt=l&zln="+last)
public wb = new Page(wa) //makes page from link?

public wc = wb.getContent()
public wd = wc.readLines()
public we = wd.size()

//in full set of results: first entry is line 274, & additional entrys start every fourth line
//in minimum set of results (no entry): nothing is in line 274

//minimal code to cycle through searching for </table>

for(int j in 373..252) { //possible locations of </table> in HTML code
if ((wd.get(j)) == "</table>") { //when </table> is found in HTML code
wd.removeRange(j+1, we) //HTML code after </table> is removed
} //end of if loop
j-- //next j value
} //end of for loop

public wg = wd.removeRange(247, 250) // removes next hrefs
public wf = wd.removeRange(15, 245) // removes everything after headers and before search results title text

ssdidb2 = wd //

name = last //returns name as last value which can be recalled


}


}

