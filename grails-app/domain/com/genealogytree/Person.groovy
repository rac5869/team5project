package com.genealogytree

class Person {
    Integer pId
    String First
    String MI
    String Last
    String Given
    String Gender
    Date dateOfBirth
    Boolean isLiving = true
    Date dateOfDeath
    FamilyTree tree
    Person Father
    Person Mother
    
    static hasMany = [ Father : Person, Mother : Person ]

    static belongsTo = [FamilyTree]

   // static hasMany = [tree:FamilyTree]

    static constraints = {
        pId(unique:true)
        First(blank:true, maxSize:20)
        MI(blank:true, maxSize:20)
        Last(blank:true, maxSize:20)
        Given(blank:true, maxSize:20)
        Gender(blank:true, maxSize:1, inList:["M", "m", "F", "f"])
        isLiving(nullable: true)
    }
}
