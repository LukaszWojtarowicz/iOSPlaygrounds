//: Playground - noun: a place where people can play

import UIKit
import Foundation
var str = "Hello, playground"
print(str)


var numbersArray: [Float] = [1.0,2.0,3.0,4.0]

numbersArray = numbersArray.map{ $0 * 0.2 }
print(numbersArray)


class Person {
    let name: String
    let surname: String
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
}

enum ApartmentType: Int {
    case oneRoom = 1
    case twoRoom = 2
}



class viewController: UIViewController {
    
    let button = UIButton()
    let label = UILabel()
    
    override func loadView() {
        super.loadView()
        let view = UIView()
        layout()
        decorate()
    }
    
    func decorate() {
        button.tintColor = .red
    }
    
    func layout() {
        view.addSubview(label)
        label.addConstraints([
            
            ])
        
        view.addSubview(button)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func fetchData() {
        
    }
    
}

let a  = viewController()



class Apartment {
    let type: ApartmentType
    let person: Person
    var counter: Int?
    var secondCounter: Int?
    
    
    
    init(person: Person, type: ApartmentType) {
        self.person = person
        self.type = type
    }
}

// MARK: - Helper methods
extension Apartment {
    func addTwoNumbers() -> Int {
        let number = 2
        let secondNumber = 2
        
        return number * secondNumber
    }
}



let lukasz = Person(name: "Łukasz", surname: "Wojtarowicz")
let apartment = Apartment(person: lukasz, type: .oneRoom)

apartment.counter = 2
apartment.secondCounter = 4

if let unwrappedCounter = apartment.counter, let unwrappedSecondCounter = apartment.secondCounter {
    print(unwrappedCounter)
    print(unwrappedSecondCounter)
}

var dictionary = [
    "Name": 1,
    "Surname": 2
]

switch apartment.type {
case .oneRoom: print("One room")
case .twoRoom: print("Two room")
}

if let type = ApartmentType(rawValue: 1) {
    let secondApartment = Apartment(person: lukasz, type: type)
}

let secondApartment = Apartment(person: lukasz, type: .twoRoom)

var apartmentsArray = [apartment, secondApartment, apartment, secondApartment, apartment, apartment, secondApartment]

let oneRoomApartments = apartmentsArray.filter{ $0.type == .oneRoom }

var oneRoomArray: [Apartment] = []
for a in apartmentsArray {
    if a.type == .oneRoom {
        oneRoomArray.append(a)
    }
}

//var personArray: [Person] = []
//for apartamentElement in apartmentsArray {
//    personArray.append(apartamentElement.person)
//}

var personArray = apartmentsArray.flatMap{ $0.person }



