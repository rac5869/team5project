package com.genealogytree

import grails.test.*

class PersonIntegrationTests extends GrailsUnitTestCase {

    void testFirstSaveEver() {
        def person = new Person (pId: 1, First: 'Robert',
            MI: 'A', Last: 'Cahill', Given: '', Gender: 'M')
	assertNotNull person.save()
	assertNotNull person.pId

        def foundPerson = Person.get(person.pId)
        assertEquals 1, foundPerson.pId
    }

    void testSaveAndUpdate() {
        def person = new Person (pId: 2, First: 'David',
            MI: 'J', Last: 'Cahill', Given: '', Gender: 'M')
        assertNotNull person.save()

        def foundPerson = Person.get(person.pId)
        assertNotNull foundPerson
        foundPerson.Last = 'Smith'
        foundPerson.save()

        def editedPerson = Person.get(person.pId)
        assertEquals 'Smith', editedPerson.Last
    }

    void testSaveThenDelete() {
        def person = new Person (pId: 3, First: 'Alison',
            MI: 'K', Last: 'Cahill', Given: '', Gender: 'F')
        assertNotNull person.save()

        def foundPerson = Person.get(person.pId)
        foundPerson.delete()
        assertFalse Person.exists(foundPerson.pId)
    }

    void testEvilSave() {
        def person = new Person (pId: 3, First: 'Megan',
            MI: 'G', Last: 'Cahill_890123456789012', Given: '', Gender: 'F')

        assertFalse person.validate()
        assertTrue person.hasErrors()
        def errors = person.errors

        assertEquals "maxSize.exceeded",
        errors.getFieldError("Last").code
        assertEquals "Cahill_890123456789012",
        errors.getFieldError("Last").rejectedValue

        assertNull errors.getFieldError("pId")

    }

    void testEvilSaveCorrected() {
        def person = new Person (pId: 3, First: 'Megan',
            MI: 'G', Last: 'Cahill_890123456789012', Given: '', Gender: 'F')
        assertFalse(person.validate())
        assertTrue(person.hasErrors())

        person.Last = "Cahill"
        /*
        user.homepage = "http://www.chucknorrisfacts.com"
         */
        assertTrue(person.validate())
        assertFalse(person.hasErrors())

    }
    /*
    void testRelationships() {
    def dad = new Person(pId: 4, First: 'Robert',
    MI: 'T', Last: 'Cahill', Given: '', Gender: 'M').save()
    def mom = new Person(pId: 5, First: 'Angela',
    MI: 'T', Last: 'Cahill', Given: '', Gender: 'F').save()
    def david = new Person(pId: 6, First: 'David',
    MI: 'J', Last: 'Cahill', Given: '', Gender: 'M').save()

    def dadToMom = new IsRelatedTo(pId_Relatee: mom.pId, pId_Relator: dad.pId,
    relatedToType: 'spouse')

    assertEquals 'spouse', dadToMom.relatedToType
    }
     */

    void testRelationships() {
        def dad = new Person(pId: 4, First: 'Robert',
            MI: 'T', Last: 'Cahill', Given: '', Gender: 'M').save()
        def mom = new Person(pId: 5, First: 'Angela',
            MI: 'T', Last: 'Cahill', Given: '', Gender: 'F').save()
        def david = new Person(pId: 6, First: 'David',
            MI: 'J', Last: 'Cahill', Given: '', Gender: 'M').save()

        def dadToMom = new IsRelatedTo(relatee: mom, relator: dad,
            relatedToType: 'spouse')

        assertEquals 'spouse', dadToMom.relatedToType
    }

    void testTreeMembers(){
        def myTree = new FamilyTree(fId: 1, fName: 'MyTree', fDesc: 'Cahill Family Tree')
        def me = new Person(pId: 7, First: 'Robert',
            MI: 'A', Last: 'Cahill', Given: '', Gender: 'M').save()
        def son = new Person(pId: 8, First: 'Gavin',
            MI: 'P', Last: 'Cahill', Given: '', Gender: 'M').save()

        myTree.addToMember(me)
        myTree.addToMember(son)

        assertEquals 2, myTree.member.size()

    }

}
