package com.genealogytree

class Source {
    Integer sId
    String sName // Source Name
    String sType // Source Type (e.g. Newspaper, Interview, Birth Certificate, etc.)
    String sDesc // Source Desc (e.g. Anything else not desc by Name or Type)

    static belongsTo = [Person]

    static hasMany = [sPerson:Person, sEvent:Event]

    static constraints = {
        sId(unique:true)
        sName(blank:false, maxSize:30)
        sType(blank:true, maxSize:30)
        sDesc(blank:true, maxSize:30)
    }
}
