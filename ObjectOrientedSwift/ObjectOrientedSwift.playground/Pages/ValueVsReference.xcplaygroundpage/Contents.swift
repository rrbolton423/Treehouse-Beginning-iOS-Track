struct User {
    var fullName: String
    var email: String
    var age: Int
}

var someUser = User(fullName: "Romell Bolton", email: "bolton.romell423@gmail.com", age: 20)

var anotherUser = someUser

someUser.email = "rrbolton@aggies.ncat.edu"

anotherUser.email

class Person {
    var fullName: String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int) {
        self.fullName = name
        self.email = email
        self.age = age
    }
}

var somePerson = Person(name: "Tim Cook", email: "tim.cook@apple.com", age: 54)
var anotherPerson = somePerson

somePerson.email = "tcook@apple.com"
anotherUser.email
