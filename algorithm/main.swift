//
//  main.swift
//  algorithm
//
//  Created by 양시관 on 10/17/24.
//

import Foundation


var N = Int(readLine()!)!

var Front = 0
var Back = 0

var array : [Int] = []


for i in 1..<N + 1 {
    array.append(i)
}

print(array)
Back = array.count

print(Back - Front)
while(Back - Front) != 1{
    Front += 1
    
    let first = array[Front]
    Front += 1
    array.append(first)
    Back += 1
    
    
}


print(array[Front])
//print(Back)
//while()
