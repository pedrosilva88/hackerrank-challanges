import UIKit
import Foundation

// number of elements
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

public class warmUp {

    static func challange1(a: Int, b: Int) {
        print(a+b)
    }

    static func challange2(arr: [Int]) {

        var total = 0
        for item in arr {
            total += item
        }

        print(total)

    }

    static func challange3() {

        let aliceArray = [5,6,7]
        let bobArray = [3,6,10]

        var alicePoints = 0
        var bobPoints = 0

        if aliceArray.count == bobArray.count {

            let _ = (0..<aliceArray.count).map {

                let aliceValue = aliceArray[$0]
                let bobValue = bobArray[$0]

                if aliceValue > bobValue {
                    alicePoints += 1
                } else if aliceValue < bobValue {
                    bobPoints += 1
                }

            }

            print("\(alicePoints) \(bobPoints)")

        }

    }

    static func challange4() {

        let numbersArray = [1000000001,1000000002,1000000003,1000000004,1000000005]

        var total = 0
        numbersArray.map {
            total += $0
        }

        print(total)

    }

    static func challange5() {

        let matrixN = 3
        let matrix: [[Int]] = [[11,2,4],[4,5,6],[10,8,-12]]

        var leftDiagonal = 0
        var rightDiagonal = 0

        for i in 0..<matrixN {

            leftDiagonal += matrix[i][i]
            rightDiagonal += matrix[i][matrixN-1-i]

        }

        print(abs(leftDiagonal-rightDiagonal))

	}

	static func challange6(_ arr: [Int], _ n: Int) {
        
        func filterAndPrintWithCondition(_ condition: (Int) -> Bool, _ n: Int) {
            print(Float(arr.filter(condition).count)/Float(n))
        }

        filterAndPrintWithCondition({$0>0}, n)
        filterAndPrintWithCondition({$0<0}, n)
        filterAndPrintWithCondition({$0==0}, n)

	}
    
    
    static func challange7(_ n: Int) {
        
        let space = " "
        let char = "#"
        
        for i in 1...n {
        
            var line = String(repeating: space, count: n-i)
            line.append(String(repeating: char, count: i))
            print(line)
            
        }
        
    }
    
    static func challange8(_ arr: [Int]) {
        
        var maxValue = 0
        var minValue: Int = Int(pow(10, 10) as NSDecimalNumber)
        
        for i in 0..<arr.count {
        
            var newArray = arr
            newArray.remove(at: i)
            let value = newArray.reduce(0, +)
            
            if value > maxValue {
                maxValue = value
            }
            
            if value < minValue {
                minValue = value
            }
            
        }
        
        print("\(minValue) \(maxValue)")
        
    }

    static func challange9(_ arr: [Int], _ n: Int) {
        
        var sortedArray = arr.sorted(by: {$0>$1})
        let value = sortedArray.first
        print(sortedArray.filter({value == $0}).count)
        
    }
    
    static func challange10(_ text: String) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm:ssa"
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "HH:mm:ss"
     
        guard let date = dateFormatter.date(from: text) else { return print("error \(text)") }
        print(dateFormatterPrint.string(from: date))

    }

}

//warmUp.challange6([-4,3,-9,0,4,1], 6)
//warmUp.challange7(6)
//warmUp.challange8([140638725,436257910,953274816,734065819,362748590])
//warmUp.challange9([44,53,31,27,77,60,66,77,26,36], 6)
//warmUp.challange10("07:05:45PM")
