import UIKit
import Foundation

// number of elements
//let n = Int(readLine()!)!

// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

class warmUp {

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

		filterAndPrintWithCondition({$0>0})
		filterAndPrintWithCondition({$0<0})
		filterAndPrintWithCondition({$0==0})

	}

	static private func filterAndPrintWithCondition(condition: Any) {
		print(Float(arr.filter(condition).count)/Float(n))
	}

}

warmUp.challange6([-4,3,-9,0,4,1], 6)

