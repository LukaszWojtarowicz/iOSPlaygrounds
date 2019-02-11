//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum CarType: Int{
    case hatchbak
    case suv
}

class Car{
    let type: CarType
    let carSpeed: Int
    let countOfSeats: Int
    init(carSpeed: Int, countOfSeats: Int, type: CarType ){
        self.carSpeed=carSpeed
        self.countOfSeats=countOfSeats
        self.type=type
    }
    
}



let hyundai = Car(carSpeed: 80, countOfSeats: 5,type: .hatchbak)
switch hyundai.type{
    
case .hatchbak: print("Hatchback")
case .suv: print ("SUV")
    
}

