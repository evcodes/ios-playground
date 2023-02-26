import UIKit
import Foundation

func goodMorning(){
    print("Good morning")
}

func roundToNDecimalPlaces(number:Double, decimalPlaces:Int)-> Double{
    let shift:Double = Double(pow(Double(10), Double(decimalPlaces)))
    return Double(round(number * shift)/shift)
}

roundToNDecimalPlaces(number: 20.2, decimalPlaces: 1)
func printTotalWithTax(subtotal:Double){
    let tax = 1+0.13
    let grandTotal:Double = subtotal*tax
    print(roundToNDecimalPlaces(number: grandTotal, decimalPlaces: 2))
}

printTotalWithTax(subtotal: 122.50)

func getTotalWithTax (subtotal:Double) -> Double{
    let grandtotal = subtotal * 1.13
    return roundToNDecimalPlaces(number: grandtotal, decimalPlaces: 2)
}

print(getTotalWithTax(subtotal: 1452.22))

func calculateTotalWithTax(subTotal:Double, tax:Double) -> Double{
    let grandTotal = subTotal * (1+tax)
    return roundToNDecimalPlaces(number: grandTotal, decimalPlaces: 2)
}

print(calculateTotalWithTax(subTotal: 1452.22, tax: 0.13))
