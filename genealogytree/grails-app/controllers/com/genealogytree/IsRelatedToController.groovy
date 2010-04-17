package com.genealogytree

class IsRelatedToController {

    def scaffold = true

    def search = {

    }

    def isRelatedToResults = {

        def persons = Person.findAllByLastLike("%${params.relateeLast}%")
        return [ persons: persons, term : params.relateeLast ]

    }

    def finalIsRelatedToResults = {
        println "line 19 " + params.pId + " " + System.currentTimeMillis().toString()
//        def personForRelation = Person.findAllByPId("%${params.pId}%")
//def personForRelation = Person.findAllByPId(Integer.getInteger("${params.pId}"))
def personForRelation = Person.findAllByPId(1)
        def relations = IsRelatedTo.findAllByRelatee(personForRelation)
        println "line 22 " + relations
        while (relations) {
            println "IsRelatedTo Controller line 23" + person.pId + " " + person.Last + " " + person.First
        }
        println "line 26"

        return [ relations: relations, term : personForRelation.Last ]
    }
}
