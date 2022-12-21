//: [Previous](@previous)

import Foundation

var myArray = ["A", "B", "C"]

for (index, entry) in myArray.enumerated() {
   print("At index \(index) we have entry \(entry)")
}


let myTuple = (String: "Jonas", Int: 19)


func switchTuple() {
    switch myTuple {
    case "Jonas", 20:
        print("WUHU")
    default:
        print("Oh no")
    }
}
//
switchTuple()

//: [Next](@next)
