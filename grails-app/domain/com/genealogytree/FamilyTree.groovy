package com.genealogytree

class FamilyTree {
    Integer fId    // Family Tree id
    String fName   // Family Tree name
    String fDesc   // Family Tree description

    static hasMany = [ member : Person ]

    static constraints = {
        fId(unique:true)
        fName(blank:true, maxSize:30)
        fDesc(blank:true, maxSize:30)
    }
}
