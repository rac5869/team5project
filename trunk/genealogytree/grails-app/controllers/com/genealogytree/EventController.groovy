package com.genealogytree

class EventController {

    def scaffold = true

    def search = {

    }

//    def index = { }

    def eventResults = {

        def events = Event.findAllByENameLike("%${params.ename}%")
        return [ events: events, term : params.ename ]

    }
}
