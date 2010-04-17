package com.genealogytree

class Location {

    Integer lId
    String lStr1
    String lStr2
    String lCity
    String lState
    String lZip
    String lCountry

    static belongsTo = [Event, Source]

    static constraints = {
        lId(unique:true)
        lStr1(blank:false, maxSize:30)
        lStr2(blank:true, maxSize:30)
        lCity(blank:false, maxSize:30)
        lState(blank:false, maxSize:30)
        lZip(blank:false, maxSize:30)
        lCountry(blank:true, maxSize:30)
    }
}
