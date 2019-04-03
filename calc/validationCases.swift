//
//  validationCases.swift
//  calc
//
//  Created by Enrique Villa on 4/3/19.
//  Copyright © 2019 UTS. All rights reserved.
//

import Foundation

class validationCases {
    static func validateArgs(args: Array<String>) {
        if args.count % 2 == 0 {
            exit(1)
        }
        
        var index = 0
        
        while index < args.count {
            //even indexes must be numbers
            if index % 2 == 0 {
                if args[index].contains(".") {
                    exit(1)
                }
                if Int(args[index]) == nil {
                    exit(1)
                }
            }
            //odd indexes must be operators
            if index % 2 == 1 {
                if !calcOperator.checkOperators(args[index]) {
                    exit(1)
                }
            }
            index += 1
        }
    }
}
