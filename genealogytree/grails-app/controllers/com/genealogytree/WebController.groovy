package com.genealogytree

import grails.converters.*
import websphinx.* // (for Websphinx?)
import websphinx.searchengine.Search
import websphinx.searchengine.Google // (for Websphinx searchengine?)

class WebController {
    
    def scaffold = true

    //def index = { }

    def search = {

    }
    def beforeInsert = { //the following code is run after an entry is created and added to the database

        def lastName = "${params.lastName}"
        def firstName = "${params.firstName}"
        def birthYear = ""
        def deathYear = ""
        def socialSecurityNumber = ""

        //checks to see if any old copies exist
        //        if (new File("C://Matt//ssdi1.html").exists()){
        //            new File("C://Matt//ssdi1.html").delete()
        //        }
        //
        //        if (new File("C://Matt//ssdi2.html").exists()) {
        //            new File("C://Matt//ssdi2.html").delete()
        //        }
        if (new File("/images/ssdi1.html").exists()){
            new File("/images/ssdi1.html").delete()
        }

        if (new File("/images/ssdi2.html").exists()){
            new File("/images/ssdi2.html").delete()
        }
        //
        println "line 38"
        //

//        def webcrawlOutput = new File("/images/ssdi1.html").createNewFile()

        //code for NewEnglandAncestors.org SSDI
        public url = new URL("http://www.newenglandancestors.org/database_search/ssdi.asp?srch=srch")
        public ca = url.openConnection()
        public ce = ca.setDoInput(true) //decleares URL connection for input
        public cb = ca.setDoOutput(true) //declares URL connection for output
        public cf = ca.setUseCaches(false) //no caches
        public cc = ca.setRequestProperty("Content-Type", "application/x-www-form-urlencoded") //declares content-type

        public da = new DataOutputStream(ca.getOutputStream()) //creates/starts DataOutputStream using outputstream from urlconnection
        public db = da.writeBytes("last_name=" + URLEncoder.encode(lastName, "UTF-8"))//adds post data

        //
        println "line 40"
        //

        if (firstName != null) {
            public wb = new Link("http://www.worldvitalrecords.com/zsearch.aspx?ix=ssdiall&qt=l&zfn="+firstName+"&zln="+lastName)
            println "line 41"
            public wc = new Page(wb) //creates a page from the link
            //            public wd = new HTMLTransformer("C://Matt//ssdi1.html") //sets directory of download

            println "line 42"
            public wd = new HTMLTransformer("/images") //sets directory of download
            
            println "line 43"
            public we = wd.write(wc) //writes page into HTML file!

            println "line 44"
            public dd = da.writeBytes("&first_name=" + URLEncoder.encode(firstName, "UTF-8")) //needed to add more bytes
        }

        //
        println "line 52"
        //

        if (firstName == null) {
            public wb = new Link("http://www.worldvitalrecords.com/zsearch.aspx?ix=ssdiall&qt=l&zfn=&zln="+last)
            public wc = new Page(wb) //creates a page from the link
            //            public wd = new HTMLTransformer("C://Matt//ssdi1.html") //sets directory of download
            public wd = new HTMLTransformer("/images/ssdi1.html") //sets directory of download
            public we = wd.write(wc) //writes page into HTML file!
        }

        //
        println "line 63"
        //

        if (birthYear != null) {
            public de = da.writeBytes("&dob_year=" + URLEncoder.encode(birthYear, "UTF-8")) //needed to add more bytes
        }

        //
        println "line 71"
        //

        if (deathYear != null) {
            public df = da.writeBytes("&dod_year=" + URLEncoder.encode(deathYear, "UTF-8")) //needed to add more bytes
        }

        //
        println "line 79"
        //

        if (socialSecurityNumber != null) {
            public dg = da.writeBytes("&ssnum=" + URLEncoder.encode(socialSecurityNumber, "UTF-8")) //needed to add more bytes
        }

        //
        println "line 87"
        //

        //problem: HTML file is not properly formatted

        public dc = da.flush() //sends to urlconnection

        public stream = ca.getInputStream()
        public inna = new BufferedInputStream(stream)
        //        public file = new FileOutputStream("C:\\Matt\\ssdi2.html")
        public file = new FileOutputStream("\images\ssdi1.html")

        //
        println "line 99"
        //

        public out = new BufferedOutputStream(file)
        int i
        while ((i = inna.read()) != -1) {
            out.write(i)
        }
        out.flush()

        //
        println "line 116"
        //

        //code for reading contents of file into a new String
        //        def htmlContent = new File('C:\\Matt\\ssdi2.html') //gets created file
        def htmlContent = new File ('\images\ssdi1.html') //gets created file
        public testee = htmlContent.readLines() //equals tester to contents of html

        public end = testee.size() //??
        public testeg = testee.removeRange(2311, end)

        public testef = testee.removeRange(182, 2273) //???

        tester = testee //???
        //???

        //
        println "line 134"
        //

        //extracting contents of ssdi2
        //        def seccon = new File('C:\\Matt\\ssdi1.html')
        def seccon = new File('\images\ssdi1.html')
        public seca = seccon.readLines()

        public secend = seca.size()
        public secb = seca.removeRange (347, secend)
        public secc = seca.removeRange (9, 218)
        twoDatabase = seca

        //
        println "line 147"
        //

        //return [ persons: persons, term : params.last ]

    }
}
