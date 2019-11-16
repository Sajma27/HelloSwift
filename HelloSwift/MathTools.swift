//
//  MathTools.swift
//  HelloSwift
//
//  Created by Szymon Woźniak on 16/11/2019.
//  Copyright © 2019 Szymon Woźniak. All rights reserved.
//

import Foundation


class MathTools{
    func fibonacci(_ number: Int) -> Int{
        if(number == 0){
            return 0;
        }else if(number == 1){
            return 1;
        }
        var first = 0;
        var second = 1;
        var pom = 1;
        
        for _ in 0...number-2{
            pom = first + second;
            first = second;
            second = pom;
        }
        
        return pom;
    }
}
