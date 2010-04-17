package com.genealogytree

class SourceController {

    def scaffold = true

    def search = {}

//    def index = { }

    def sourceResults = {

        def sources = Source.findAllBySNameLike("%${params.sname}%")
        return [ sources: sources, term : params.sname ]

    }
}
