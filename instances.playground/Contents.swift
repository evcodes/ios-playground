import UIKit

struct MyStructure {
    var message = "Hello"
    func myFunction(){
        print(message + " World")
    }
}

var a:MyStructure = MyStructure()

a.myFunction()
