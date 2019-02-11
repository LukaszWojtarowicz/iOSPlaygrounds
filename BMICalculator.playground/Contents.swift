//: Playground - noun: a place where people can play

import UIKit

func BMI( _ weight: Float, _ height: Float) -> String {
    
    let value : Double = Double(weight/(height*height))
    if (value > 25){
    return "BMI = \(value), overweight!"
    }
    else if (value > 18.5 && value <= 25){
    return "BMI = \(value), weight is normal"
    }
    else{
    return "BMI = \(value), underweight!"
    }
    
   
}
print(BMI(65,1.5))




