//: [Previous](@previous)

import Foundation

public class Search {
    
    static func similarPair(a: Int, b: Int) {
        
        var k = 2
        var dic = [3:2,
                   3:1,
                   1:4,
                   1:5]
        
        var matches = 0
        
        for result in dic {
            
            if result.key-result.value < k {
                matches += 1
            }
            
            if dic.values.map({$0}).filter({$0 == result.key}).count > 0 {
                
            }
            
        }
        
    }
    
}
