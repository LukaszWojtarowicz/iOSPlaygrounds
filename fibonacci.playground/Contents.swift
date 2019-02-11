//: Playground - noun: a place where people can play

import UIKit

func fibonacci (_ howManyIterations: Int) -> Int{
    var number0: Int = 0
    var number1: Int = 1
    var sum: Int = 0
    print ("0\n1")
    for _ in 0...howManyIterations {
        let num = number0 + number1
        print(num)
        number0 = number1
        number1 = num
        sum += num
    }
    return sum
}
print("Sum=",fibonacci(32))

