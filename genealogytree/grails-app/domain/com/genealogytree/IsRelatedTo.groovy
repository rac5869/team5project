package com.genealogytree

class IsRelatedTo {
    //Integer pId_Relatee // relatee
    //Integer pId_Relator // relator
    String relatedToType

    //static belongsTo = [Person]

    static hasMany = [ relatee : Person, relator : Person ]

    static constraints = {
        relatedToType(blank:false)
    }
}
