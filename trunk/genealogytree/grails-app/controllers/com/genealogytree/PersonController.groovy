package com.genealogytree

class PersonController {

    def PersonService
    def scaffold = true

    def search = {

    }

    def results = {

        def persons = Person.findAllByLastLike("%${params.last}%")
        return [ persons: persons, term : params.last ]

    }

    def findRelatives = {
        redirect(controller: 'isRelatedTo', action: 'isRelatedToResults', params: [pId:params.personId, term:term])
        //        redirect(controller: 'isRelatedTo', action: 'isRelatedToResults', params: params)
    }

    def webcrawl = {
        def persons = Person.findAll()
        [persons: persons]
    }

    def webcrawlresults = {

	def resulta = personService.serviceMethodA(params.last) 
    }

    def personError = {
	render(view:'/perror')
    }
}