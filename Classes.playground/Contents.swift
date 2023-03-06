class Person {
    var name = ""
    var age = 10
    
    func speak(){
        print("Hello I am a person")
    }
}

var myPerson = Person()

// subclassing
class Engineer: Person{
    override func speak() {
        print("Hello I am an engineer")
        super.speak()
    }f
}

var myEngineer = Engineer()

myEngineer.speak()
