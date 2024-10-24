//
//  main.swift
//  algorithm
//
//  Created by 양시관 on 10/17/24.
//

import Foundation



let N = Int(readLine()!)!

var arr : [Int] = []

var result : [Int] = []

for i in 1...4 {
    
    arr.append(i)
    
}


while(result.count == 1){
    
    arr.remove(at: arr.first!)
    result = arr
}

print(result)
