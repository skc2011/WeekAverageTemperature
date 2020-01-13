//
//  FindFirstDay.swift
//  WeekAverageTemperature
//
//  Created by SKC on 1/10/20.
//  Copyright © 2020 SKC-PRO. All rights reserved.
//

import Foundation

class WeekTemperature {
    
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
}
