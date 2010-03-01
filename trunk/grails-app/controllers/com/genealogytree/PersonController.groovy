package com.genealogytree

class PersonController {

    def scaffold = true

    def search = {

    }

    def results = {

        def persons = Person.findAllByLastLike("%${params.last}%")
        return [ persons: persons, term : params.last ]

    }
}
