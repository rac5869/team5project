package com.genealogytree

class Web {
    String firstName
    String lastName
    String birthYear
    String deathYear
    String socialSecurityNumber
    String tester
    String twoDatabase

    static constraints = {
        firstName()
	lastName(blank:false)
	birthYear(maxSize:4, nullable:true)
	deathYear(maxSize:4, nullable:true)
	socialSecurityNumber(maxSize:9, nullable:true)
	tester()
	twoDatabase()
    }
}
