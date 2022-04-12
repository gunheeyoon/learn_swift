//
//  main.swift
//  swifty
//
//  Created by GUNHEE YOON on 2022/04/12.
//

import Foundation

print("Hello, World!")

let vegetable = "red pepper"

switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log")
case "cucumber", "watercress":
    print("That would make a good tea sandwich")
case let x where x.hasSuffix("pepper"):
    print("is it spicy \(x)?")
default:
    print("what")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0;

for (num, numbers) in interestingNumbers {
    for number in numbers {
        if num == "Square" && number > largest {
            largest = number
        }
    }
}

print(largest)
