//
//  StringTools.swift
//  HelloSwift
//
//  Created by Szymon Woźniak on 16/11/2019.
//  Copyright © 2019 Szymon Woźniak. All rights reserved.
//

import Foundation

class StringTools{
    func countOccurrences(character: Character, from: String, caseSensitive: Bool = true) -> Int{
        if(from.count == 0){
            return 0;
        }
        
        var ourString = from;
        var ourCharacter = character;
        if(!caseSensitive){
            ourString = from.lowercased();
            ourCharacter = Character(String(character).lowercased())
        }
        
        var counter = 0;
        for char in ourString{
            if(ourCharacter == char){
                counter = counter + 1;
            }
        }
        
        return counter;
    }
}
