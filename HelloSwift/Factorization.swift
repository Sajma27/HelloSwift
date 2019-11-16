//
//  Factorization.swift
//  HelloSwift
//
//  Created by Szymon Woźniak on 16/11/2019.
//  Copyright © 2019 Szymon Woźniak. All rights reserved.
//

import Foundation

enum EResult{
    case prime
    case composite(factors: [Int])
}

class Factorization{
    
    static func factorize(_ num: Int = 0) -> EResult?{
        if(num <= 1){
            return nil;
        }
        
        var pom = num;
        var factor = 2;
        var factors: [Int] = [];
        while pom > 1 && factor <= num/2{
            if(pom%factor==0){
                pom = pom/factor;
                factors.append(factor);
            }else if(factor%2 == 0){
                factor = factor + 1;
            }else{
                factor = factor + 2;
            }
        }
        
        if(factors.count > 0){
            return .composite(factors: factors)
        }
        
        return .prime
    }
}
