package com.genealogytree

class Event {

    Integer eId
    String eName    // Event Name
    Date eDate      // Event Date
    String eType    // Event Type (e.g. Birth, Death, Marriage, etc.)
    String eDesc    // Event Description

    static belongsTo = [Person, Source]

    static hasMany = [ePerson:Person, eSource:Source]

    static constraints = {
        eId(unique:true)
        eName(blank:false, maxSize:30)
        eDate(blank:false)
        eType(blank:true, maxSize:30)
        eDesc(blank:true, maxSize:30)
    }
}
