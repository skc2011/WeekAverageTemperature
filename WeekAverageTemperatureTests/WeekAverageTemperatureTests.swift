//
//  WeekAverageTemperatureTests.swift
//  WeekAverageTemperatureTests
//
//  Created by SKC on 1/3/20.
//  Copyright © 2020 SKC-PRO. All rights reserved.
//

import XCTest
@testable import WeekAverageTemperature

class WeekAverageTemperatureTests: XCTestCase {

    /*   first data set:
     testArray = [(day: "Monday", temp: 7.0), ("Tuesday", 9), ("Wednesday", 9), ("Thursday", 10), ("Friday", 8), ("Saturday", 6), ("Sunday", 7)]
     Expected result: "Friday"
     
     second data set:
     testArray = [(day: "Monday", temp: 7.0), ("Tuesday", 9), ("Wednesday", 8), ("Thursday", 10), ("Friday", 8), ("Saturday", 6), ("Sunday", 7)]
     Expected result: "Wednesday"
     
     third data set:
     testArray = [(day: "Monday", temp: 7.0), ("Tuesday", 9), ("Wednesday", 8), ("Thursday", 10), ("Friday", 8), ("Saturday", 9), ("Sunday", 10)]
     Expected result: "Tuesday"
     */
    
    func testFindingDayWithNearestTemp() {
        let testArray = [(day: "Monday", temp: 7.0), ("Tuesday", 9), ("Wednesday", 9), ("Thursday", 10), ("Friday", 8), ("Saturday", 6), ("Sunday", 7)]
        let weekTemperature = WeekTemperature()
        let firstFoundDay = weekTemperature.dayWithNearestTemp(temperatureArray: testArray)
        
        XCTAssert(firstFoundDay == "Friday", "The day was found incorrectly")
    }
}
