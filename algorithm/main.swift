//
//  main.swift
//  algorithm
//
//  Created by 양시관 on 10/17/24.
//

import Foundation


//
//let K = Int(readLine()!)!
//var list =  readLine()!.split(separator:" " ).map{Int(String($0))!}
//
//var answer = Array(repeating: [Int](), count: K)
//
//func find(_ left: Int, _ right: Int, level: Int ) {
//    if left>right{ return }
//    let mid = (left+right)/2
//    answer[level].append(list[mid])
//    find(left, mid-1, level: level+1)
//    find(mid+1, right, level: level+1)
//}
//find(0, list.count-1, level: 0)
//answer.forEach{
//    $0.forEach{print($0, terminator: " ")}
//    print()
//}



let K = Int(readLine()!)!

var list = readLine()!.split(separator: " ").map{Int(String($0))!}

var answer = Array(repeating : [Int](),count: K)

func find(_ left : Int , _ right : Int,_ level : Int){
    if left > right {return}
    let mid = (left + right)/2
    answer[level].append(list[mid])
    find(left,mid-1,level+1)
    find(mid+1,right,level+1)
}
find(0,list.count-1,0 )
answer.forEach{
    $0.forEach{print($0,terminator: " ")}
    print()
}

