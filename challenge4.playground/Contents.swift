import UIKit

struct Car{
    private var make: String = "Toyota"
    private var model: String = "Supra"
    private var year: Int = 1996
    private var details: String {
        String(year) + " " + make + " " + model
    }
    
    func getDetails() -> String{
        return details
    }
}
