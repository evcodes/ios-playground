var friends = ["Sally", "Rene", "Michael", "Kevin"]

class Person {
    var name: String = "";
    func introduceMyself(){
        print("Hi, my name is \(name)")
    }
}

class Chef: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a chef!")
    }
}

class Poet: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a poet")
        
    }
}

class Astronaut: Person{
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm an astronaut")
    }
}

for _ in 0...9{
    let idx = Int.random(in: 0...3)
    let subClass = Int.random(in: 0...2)
    
    var personInstance: Person;
    
    switch subClass {
    case 0:
        personInstance = Astronaut()
    case 1:
        personInstance = Chef()
    default:
        personInstance = Poet()
    }
            
    personInstance.name = friends[idx]
    personInstance.introduceMyself()
}
    
