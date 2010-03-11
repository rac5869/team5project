package com.genealogytree

class FamilyTreeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [familyTreeInstanceList: FamilyTree.list(params), familyTreeInstanceTotal: FamilyTree.count()]
    }

    def create = {
        def familyTreeInstance = new FamilyTree()
        familyTreeInstance.properties = params
        return [familyTreeInstance: familyTreeInstance]
    }

    def save = {
        def familyTreeInstance = new FamilyTree(params)
        if (familyTreeInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'familyTree.label', default: 'FamilyTree'), familyTreeInstance.id])}"
            redirect(action: "show", id: familyTreeInstance.id)
        }
        else {
            render(view: "create", model: [familyTreeInstance: familyTreeInstance])
        }
    }

    def show = {
        def familyTreeInstance = FamilyTree.get(params.id)
        if (!familyTreeInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'familyTree.label', default: 'FamilyTree'), params.id])}"
            redirect(action: "list")
        }
        else {
            [familyTreeInstance: familyTreeInstance]
        }
    }

    def edit = {
        def familyTreeInstance = FamilyTree.get(params.id)
        if (!familyTreeInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'familyTree.label', default: 'FamilyTree'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [familyTreeInstance: familyTreeInstance]
        }
    }

    def update = {
        def familyTreeInstance = FamilyTree.get(params.id)
        if (familyTreeInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (familyTreeInstance.version > version) {
                    
                    familyTreeInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'familyTree.label', default: 'FamilyTree')] as Object[], "Another user has updated this FamilyTree while you were editing")
                    render(view: "edit", model: [familyTreeInstance: familyTreeInstance])
                    return
                }
            }
            familyTreeInstance.properties = params
            if (!familyTreeInstance.hasErrors() && familyTreeInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'familyTree.label', default: 'FamilyTree'), familyTreeInstance.id])}"
                redirect(action: "show", id: familyTreeInstance.id)
            }
            else {
                render(view: "edit", model: [familyTreeInstance: familyTreeInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'familyTree.label', default: 'FamilyTree'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def familyTreeInstance = FamilyTree.get(params.id)
        if (familyTreeInstance) {
            try {
                familyTreeInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'familyTree.label', default: 'FamilyTree'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'familyTree.label', default: 'FamilyTree'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'familyTree.label', default: 'FamilyTree'), params.id])}"
            redirect(action: "list")
        }
    }
}
