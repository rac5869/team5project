import com.genealogytree.*
import grails.util.Environment

class BootStrap {

     def init = { servletContext ->
//        switch (Environment.current) {
//            case Environment.DEVELOPMENT:
//            createTestData()
//            break;
//
//            case Environment.PRODUCTION:
//            println "No special configuration required"
//            break;
//        }
     }
     def destroy = {
     }

//    void createTestData() {
////        if (Person.count() == 0 && IsRelatedTo.count() == 0 && Relation.count() == 0) {
//            println "Fresh Database. Creating Test people."
//            def familyTree1 = new FamilyTree (fId:1, fName:"Cahill_Feryo_Tree", fDesc:"Cahill Feryo Family Tree")
//            def person1 = new Person(pId:1, First: "Robert", MI:"A", Last: "Cahill", Gender: "M")
//            def person2 = new Person(pId:2, First: "Alison", MI:"K", Last: "Feryo", Gender: "F")
//            def person3 = new Person(pId:3, First: "Megan", MI:"G", Last: "Cahill", Gender: "F")
//            def person4 = new Person(pId:4, First: "Gavin", MI:"P", Last: "Cahill", Gender: "M")
//            def person5 = new Person(pId:5, First: "Mathleen", Last: "Meehan", Gender: "F")
//            def relation1 = new IsRelatedTo(relatee: 1, relator: 2, relatedToType: "Spouse")
//            def relation2 = new IsRelatedTo(relatee: 2, relator: 4, relatedToType: "Mother")
//            def relation3 = new IsRelatedTo(relatee: 2, relator: 3, relatedToType: "Daughter")
//            def relation4 = new IsRelatedTo(relatee: 2, relator: 4, relatedToType: "Son")
//            def relation5 = new IsRelatedTo(relatee: 3, relator: 1, relatedToType: "Father")
//            def relation6 = new IsRelatedTo(relatee: 3, relator: 5, relatedToType: "Grandmother")
////        } else {
////            println "Existing People exist, skipping creation"
////        }
//    }
} 