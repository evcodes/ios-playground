struct TaxCalculator{
    var newYorkSalesTax = 0.8875
    
    func totalWithTax(input:Double)-> Double {
        return input*(1+newYorkSalesTax)
        
    }
}

var taxCalc = TaxCalculator()

print(taxCalc.totalWithTax(input: 204.32))

struct BillSpliter{
    func splitBy(subtotal:Double, numPeople:Int)-> Double{
        return Double(subtotal/Double(numPeople))
    }
}

let billSplitter = BillSpliter()

print(billSplitter.splitBy(subtotal: 240, numPeople: 6))

print(billSplitter.splitBy(subtotal: 120, numPeople: 5))
