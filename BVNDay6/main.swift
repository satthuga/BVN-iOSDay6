//
//  main.swift
//  BVNDay6
//
//  Created by Apple on 31/05/2021.
//

import Foundation

//MARK: Bai 1
var myArray = [-2, 3, 3, 4, -5, -6, -6, 8]

func addX(_ myArray: inout [Int], X: Int) {
    var max = myArray[0]
    for i in myArray {
        if i > max {
            max = i
        }
    }
        
    for i in 0...(myArray.count - 1) {
            if myArray[i] == max {
                myArray.insert(X, at: i + 1)
            }
        }
    }
addX(&myArray, X: 8)
print(myArray)

//MARK: Bai 2
//sap xep mang
func sortArray(_ myArray: inout [Int]) {
    
    let length: Int = myArray.count
    var a = 0
    for i in 0...(length - 1) {
        for k in i...(length - 1) {
            if myArray[k] < myArray[i] {
                a = myArray[k]
                myArray[k] = myArray[i]
                myArray[i] = a
            }
        }
    }
}

sortArray(&myArray)
print(myArray)

func addX2(_ myArray: inout [Int], X: Int) {
    for i in 1...(myArray.count - 2) {
        if (X > myArray[i]) && (X <= myArray[i+1]) {
            myArray.insert(X, at: i + 1)
        }
    }
    
    if X <= myArray[0] {
        myArray.insert(X, at: 0)
    } else if X > myArray[myArray.count - 1] {
        myArray.append(X)
    }
}

addX2(&myArray, X: -6)
print(myArray)


//MARK: Bai 3
func isPrimeNumber(_ n: Int) -> Bool {
    if n <= 2 {
        return false
    }
    
    for i in 2...(n-1) {
        if n%i == 0 {
            return false
        }
    }
    return true
}

print(isPrimeNumber(13))

//MARK: Bai 4
func countPrime(start: Int, end: Int) -> Int {
    var count = 0
    
    for i in start...end {
        if isPrimeNumber(i) {
            count += 1
        }
    }
    return count
}

print(countPrime(start: 1, end: 10))
