import UIKit

struct MyStruct{

    // NOTE: this organization is by convention
    
    // vars and constants
    
    // functions
    
}


struct ChatView{
    
    // considered a property of the ChatView structure
    var message: String = "" // technically this is a stored property
    var messageWithPrefix: String { // this is a computed property
        return "Eddy says: " + message
    }
    var messageWithPrefixShortForm: String { // this is a shorthand
        "Eddy says: " + message
    }
    
    // UI Code for this screen
    
    // considered M ethod of ChatView structure
    func handleSendMessage(){
        //implementation details to send the chat message
        print(messageWithPrefix)
    }
    func deleteChat(){
        print(messageWithPrefix)
    }
}
