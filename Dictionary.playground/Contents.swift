var myDict = [String:String]()

myDict["512"] = "Eddy Varela"

//retrieving the value for a given key
myDict["512"]

//update a value
myDict["512"] = "Layla Castro"

myDict["512"]

// initializing a dictionary with values
var b  = ["J123":"Jose", "B334": "Raul"]

for entry in b{
    print("My key \(entry.key)")
    print("My value \(entry.value)")
}

for (key,value) in b {
    print ("My key \(key)")
    print ("My value \(value)")
}
