//: Playground - noun: a place where people can play

import UIKit

enum CarType: Int{
    case hatchbak
    case suv
}

class Car{
    let name: String
    let type: CarType
    let carSpeed: Int
    let countOfSeats: Int
    init (name: String, carSpeed: Int, countOfSeats: Int, type: CarType ){
        self.name = name
        self.carSpeed = carSpeed
        self.countOfSeats = countOfSeats
        self.type = type
    }
    
}
extension Car{
    func addModel() -> String{
        let model: String = "Nie przypisano modelu"
        return model
    }
}


class Amfibion:  Car {
    let amfibionName: String
    let amfibionSpeed: Int
    init(amfibionName: String, amfibionSpeed: Int, car: Car){
        self.amfibionName = amfibionName
        self.amfibionSpeed = amfibionSpeed
        super.init(name: car.name, carSpeed: car.carSpeed, countOfSeats: car.countOfSeats, type: car.type)
    }
    
}

let car1 =  Car(name: "BMW", carSpeed: 220, countOfSeats: 4, type: .suv)
let hyundai = Car(name: "Hyundai", carSpeed: 80, countOfSeats: 5,type: .hatchbak)
let arrayOfCars = [car1,hyundai] // tworze liste obiektow
var arrayOfSuv = arrayOfCars.filter{ $0.type == .suv }// z listy obiektow wybieram te z odpowednim parametrem

let boat = Amfibion(amfibionName: "lodz", amfibionSpeed: 20, car: hyundai)

print("Factory",boat.name)
switch hyundai.type{
    
    case .hatchbak: print("Hatchback")
    case .suv: print ("SUV")
    
}
print("speed",boat.carSpeed)
print("Seats",boat.countOfSeats)
print("Amfibion name",boat.amfibionName)
print("Amfibion speed",boat.amfibionSpeed)
print(arrayOfSuv)//elementy listy
//////////////////////////////////////////////

class Person {
    let name: String
    let surname: String
    let vehicle: Car
    init(name: String, surname: String , vehicle: Car) {
        self.name = name
        self.surname = surname
        self.vehicle = vehicle
    }
    
}

let person1 = Person(name: "Lukasz", surname:"Wojtarowicz", vehicle: car1)
print(person1.name, person1.surname,"Posiada:\(person1.vehicle.name)", person1.vehicle.addModel())

var text = "obecny tekst"
print("aktualny tekst:\(text)")
text = "zmieniony tekst"
print("aktualny tekst:\(text)")

let minValue = Int16.min



let twoThousand: UInt16 = 2000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error //dekompozycja istniejacego  obiektu
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"

func makeASandwich() throws {
    print("Sandwich is done")
}

do {
    try makeASandwich()
    
} catch {
   // washDishes()
}
/////

enum errorPatern: Error{
    case zeroDivide
}

let num1 = 10.0
let num2 = 0.0

func divide(number1: Double, number2: Double) throws -> Double {
    if number2 == 0 {
        throw errorPatern.zeroDivide
    } else{
        print(number1/number2)
        return number1/number2
    }
}

do {

     try divide(number1: num1, number2: num2)
    } catch is errorPatern{
        print("Couldnt divide by 0")
}
    
    

