package com.genealogytree

class LocationController {

    def scaffold = true

    def list2 = {

      def locations = Location.findAll()
	[locations: locations]

}

    def search = {

    }

//    def index = { }

    def locResults = {
        def locations = Location.findAllByLStateLike("%${params.lstate}%")
        return [ locations: locations, term : params.lstate ]
    }
}
