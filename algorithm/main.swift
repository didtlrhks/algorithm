//
//  main.swift
//  algorithm
//
//  Created by 양시관 on 10/17/24.
//

import Foundation

let queue = readLine()!.split(separator: " ").map{Int($0)!}


var N = queue[0]
var K = queue[1]
var array : [Int] = []
var result = [Int]()


var count = 0

array = Array((1...queue[0]))

// 끝을 내야하니까 .

while(!array.isEmpty){
    //삭제로직.\
    //일단 맨처음에는 3번째를 지우고,,
    count += array[1]
    count = count % array.count
    result.append(array.remove(at:count ))
}

print("<" + result.map{String($0)}.joined(separator: ", ") + ">")




