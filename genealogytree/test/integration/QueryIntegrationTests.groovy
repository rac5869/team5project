import grails.test.*
import com.genealogytree.*

class QueryIntegrationTests extends GrailsUnitTestCase {

    void testBasicDynamicFinders() {

		new Person(pId: 10, First: 'Robert',
            MI: 'T', Last: 'Cahill', Gender: 'M').save()
        new Person(pId: 11, First: 'Angela',
            MI: 'T', Last: 'Chicarella', Gender: 'F').save()

        def person = Person.findByFirst('Angela')
        assertEquals 11, person.pId

        person = Person.findBypIdAndLast(11, 'Chicarella')
        assertEquals 'Chicarella', person.pId

        def persons = Persons.findAllByDateCreatedBetween(now-1, now)
        assertEquals 2, users.size()

        def profiles = Profile.findAllByEmailIsNotNull()
        assertEquals 1, profiles.size()

    }

    void testQueryByExample() {

        new User(userId: 'glen', password: 'password').save()
        new User(userId: 'peter', password: 'password').save()
        new User(userId: 'cynthia', password: 'sesame').save()

        def userToFind = new User(userId: 'glen')
        def u1 = User.find(userToFind)
        assertEquals('password', u1.password)

        userToFind = new User(userId: 'cynthia')
        def u2 = User.find(userToFind)
        assertEquals('cynthia', u2.userId)

        userToFind = new User(password: 'password')
        def u3 = User.findAll(userToFind)
        assert [ 'glen', 'peter'] == u3*.userId


    }


}
