//
//  File.swift
//  calc
//
//  Created by Enrique Villa on 4/2/19.
//  Copyright © 2019 UTS. All rights reserved.
//

import Foundation

class calcOperator {
    
    static let operatorList = ["+", "-", "x", "/", "%"]
    
    static func checkOperators(_ value: String) -> Bool {
        return operatorList.contains(value)
    }
    
    //all 5 operator methods
    static func add(_ value1: Int,_ value2: Int) -> Int {
        return value1 + value2
    }
    
    static func subtract(_ value1: Int,_ value2: Int) -> Int {
        return value1 - value2
    }
    
    static func multiply(_ value1: Int,_ value2: Int) -> Int {
        return value1 * value2
    }
    
    static func divide(_ value1: Int,_ value2: Int) -> Int {
        return value1 / value2
    }
    
    static func modulo(_ value1: Int,_ value2: Int) -> Int {
        return value1 % value2
    }
}
