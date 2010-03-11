package com.genealogytree

class IsRelatedToController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [isRelatedToInstanceList: IsRelatedTo.list(params), isRelatedToInstanceTotal: IsRelatedTo.count()]
    }

    def create = {
        def isRelatedToInstance = new IsRelatedTo()
        isRelatedToInstance.properties = params
        return [isRelatedToInstance: isRelatedToInstance]
    }

    def save = {
        def isRelatedToInstance = new IsRelatedTo(params)
        if (isRelatedToInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'isRelatedTo.label', default: 'IsRelatedTo'), isRelatedToInstance.id])}"
            redirect(action: "show", id: isRelatedToInstance.id)
        }
        else {
            render(view: "create", model: [isRelatedToInstance: isRelatedToInstance])
        }
    }

    def show = {
        def isRelatedToInstance = IsRelatedTo.get(params.id)
        if (!isRelatedToInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'isRelatedTo.label', default: 'IsRelatedTo'), params.id])}"
            redirect(action: "list")
        }
        else {
            [isRelatedToInstance: isRelatedToInstance]
        }
    }

    def edit = {
        def isRelatedToInstance = IsRelatedTo.get(params.id)
        if (!isRelatedToInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'isRelatedTo.label', default: 'IsRelatedTo'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [isRelatedToInstance: isRelatedToInstance]
        }
    }

    def update = {
        def isRelatedToInstance = IsRelatedTo.get(params.id)
        if (isRelatedToInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (isRelatedToInstance.version > version) {
                    
                    isRelatedToInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'isRelatedTo.label', default: 'IsRelatedTo')] as Object[], "Another user has updated this IsRelatedTo while you were editing")
                    render(view: "edit", model: [isRelatedToInstance: isRelatedToInstance])
                    return
                }
            }
            isRelatedToInstance.properties = params
            if (!isRelatedToInstance.hasErrors() && isRelatedToInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'isRelatedTo.label', default: 'IsRelatedTo'), isRelatedToInstance.id])}"
                redirect(action: "show", id: isRelatedToInstance.id)
            }
            else {
                render(view: "edit", model: [isRelatedToInstance: isRelatedToInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'isRelatedTo.label', default: 'IsRelatedTo'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def isRelatedToInstance = IsRelatedTo.get(params.id)
        if (isRelatedToInstance) {
            try {
                isRelatedToInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'isRelatedTo.label', default: 'IsRelatedTo'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'isRelatedTo.label', default: 'IsRelatedTo'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'isRelatedTo.label', default: 'IsRelatedTo'), params.id])}"
            redirect(action: "list")
        }
    }
}
