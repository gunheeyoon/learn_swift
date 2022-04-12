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

//function without label uses _
//put custom label in front of the actual label

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}

print(greet("David", on: "Friday"))

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [6, 8, 100, 30, 12])
print(statistics.sum)
print(statistics.2) //same as sum
print(statistics)
