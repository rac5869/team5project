package com.genealogytree

class Person {
    Integer pId
    String First
    String MI
    String Last
    String Given
    String Gender

    static belongsTo = [FamilyTree]

    static hasMany = [tree:FamilyTree]

    
    static constraints = {
        pId(unique:true)
        First(blank:true, maxSize:20)
        MI(blank:true, maxSize:20)
        Last(blank:true, maxSize:20)
        Given(blank:true, maxSize:20)
        Gender(blank:true, maxSize:1)
		
    }
}
