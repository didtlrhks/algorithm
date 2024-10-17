//
//  main.swift
//  algorithm
//
//  Created by 양시관 on 10/17/24.
//

import Foundation


var N = Int(readLine()!)!

var graph = [[Int]](repeating: [], count: N + 1)
var parent = [Int](repeating : -1,count: N + 1)
var node = readLine()?.split(separator: " ").map{Int($0)} // 배열 생성해서 넣어준거고 ,


for _ in 0..<N-1 {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    let a = input[0] , b = input[1]
    graph[a].append(b)
    graph[b].append(a)
    
}

var queue = [1]
var index = 0
parent[1] = 0

while queue.count > index {
    let node = queue[index]
    for nextNode in graph[node] {
        if parent[nextNode] == -1 {
                    parent[nextNode] = node
                    queue.append(nextNode)
                }
            }
            index += 1
        }

        print(parent[2...].map { String($0) }.joined(separator: "\n"))
    

