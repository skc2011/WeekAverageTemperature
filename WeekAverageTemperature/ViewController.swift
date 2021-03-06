//
//  ViewController.swift
//  WeekAverageTemperature
//
//  Created by SKC on 1/3/20.
//  Copyright © 2020 SKC-PRO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var weekTemperatureArray = [(day: "Monday", temp: 7.0), ("Tuesday", 9), ("Wednesday", 8), ("Thursday", 10), ("Friday", 8), ("Saturday", 6), ("Sunday", 7)]
    
    func dayWithNearestTemp(temperatureArray: [(String,Double)]) -> String {
        let weekSumTemperature = temperatureArray.reduce(0.0) {$0 + $1.1}
        let averageTemperature = weekSumTemperature / Double(temperatureArray.count)
        var newArray = [(String,Double)]()
        
        for day in temperatureArray {
            let diff = abs(day.1 - averageTemperature)
            newArray.append((day.0, diff))
        }
        
        let sortedArray = newArray.sorted(by: { $0.1 < $1.1 })
        var nearestFirstFoundDay: String {
            return sortedArray.first!.0
        }
        print("Target day: " + nearestFirstFoundDay)
        return nearestFirstFoundDay
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        var weekTemperatureArray = [(day: "Monday", temp: 7.0), ("Tuesday", 9), ("Wednesday", 8), ("Thursday", 10), ("Friday", 8), ("Saturday", 6), ("Sunday", 7)]
//
//        func dayWithNearestTemp(temperatureArray: [(String,Double)]) -> String {
//            let weekSumTemperature = temperatureArray.reduce(0.0) {$0 + $1.1}
//            let averageTemperature = weekSumTemperature / Double(temperatureArray.count)
//            var newArray = [(String,Double)]()
//
//            for day in temperatureArray {
//                let diff = abs(day.1 - averageTemperature)
//                newArray.append((day.0, diff))
//            }
//
//            let sortedArray = newArray.sorted(by: { $0.1 < $1.1 })
//            var nearestFirstFoundDay: String {
//                return sortedArray.first!.0
//            }
//            print("Target day: " + nearestFirstFoundDay)
//            return nearestFirstFoundDay
//        }
    }


}

