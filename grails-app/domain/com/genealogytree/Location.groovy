package com.genealogytree

class Location {
    Integer locId
    String Street1
    String Street2
    String City
    String State
    String ZipCode
    String Country


    static constraints = {
        locId(unique:true)
        Street1(blank:false, maxSize:30)
        Street2(blank:true, maxSize:30)
        City(blank:false, maxSize:20)
        State(blank:false, maxSize:2)
        ZipCode(blank:false, maxSize:11)
        Country(blank:false, maxSize:10)
    }
}
