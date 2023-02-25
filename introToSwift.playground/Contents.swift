import UIKit

// String declaration
"hello swift"

//numeric types Int; Float; Double;

// boolean true; false

//variables and constants
var myName:String = "Eddy Varela"
print(myName)
myName = "Eddy"
print(myName)

// let is a constant
let pi = 3.1415
print(pi)

// Math operations
var a = 20 + 5
var b = 20 - 5
var c = 20 * 5
var d = 20 / 5
var e = 20 % 2
var f = (a*b) + (c/d)

// Making changes to variables

f = f+1
f += 1
f -= 1
f *= 2
f /= 2

// More math operators
var g = abs(-1)
var h = ceil(1.6)
var i = floor(2.1)
var j = sqrt(36)
var k = pow(2,6)

/* Challenge:
4 people have dinner andwnt to split the bill.
Calculate the totla with tax and then how much each person owes
Assign it to the variable, 'split' and then print it out to the console area
 */

let people: Double = 4
let subtotal: Double = 128
let tax = 0.13
var split: Double = 0

let grandTotal = subtotal * (1+tax)
split = grandTotal/people
print(split)
