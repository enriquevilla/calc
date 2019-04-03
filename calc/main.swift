//
//  main.swift
//  calc
//
//  Created by Jesse Clark on 12/3/18.
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation

var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program

validationCases.validateArgs(args: args)

var index = 0

//first look for higher priority operators
//replace 1st of the 3 arguments with result
//remove 2nd and 3rd arguments
while index < args.count - 1 {
    if args[index] == "x" {
        let value1 = Int(args[index - 1])!
        let value2 = Int(args[index + 1])!
        args[index - 1] = String(calcOperator.multiply(value1, value2))
        args.remove(at: index)
        args.remove(at: index)
        index -= 1
    } else if args[index] == "/" {
        let value1 = Int(args[index - 1])!
        let value2 = Int(args[index + 1])!
        if value2 == 0 {
            exit(1)
        }
        args[index - 1] = String(calcOperator.divide(value1, value2))
        args.remove(at: index)
        args.remove(at: index)
        index -= 1
    } else if args[index] == "%" {
        let value1 = Int(args[index - 1])!
        let value2 = Int(args[index + 1])!
        if value2 == 0 {
            exit(1)
        }
        args[index - 1] = String(calcOperator.modulo(value1, value2))
        args.remove(at: index)
        args.remove(at: index)
        index -= 1
    }
    index += 1
}

index = 0

//check lower priority operators to finish
while index < args.count - 1 {
    if args[index] == "+" {
        let value1 = Int(args[index - 1])!
        let value2 = Int(args[index + 1])!
        args[index - 1] = String(calcOperator.add(value1, value2))
        args.remove(at: index)
        args.remove(at: index)
        index -= 1
    } else if args[index] == "-" {
        let value1 = Int(args[index - 1])!
        let value2 = Int(args[index + 1])!
        args[index - 1] = String(calcOperator.subtract(value1, value2))
        args.remove(at: index)
        args.remove(at: index)
        index -= 1
    }
    index += 1
}

print(Int(args[0])!)

exit(0)
