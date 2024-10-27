//
//  main.swift
//  algorithm
//
//  Created by 양시관 on 10/17/24.
//

import Foundation


struct Node{
    let left : String
    let right : String
    
}

let N = Int(readLine()!)!
var tree : [String : Node] = [:]

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{String($0)}
    tree[input[0]] = Node(left: input[1], right: input[2])
    
    //이제 딕셔너리에다가 루트랑 레프트 라이트 저장한거임
    
}

func preorder(_ t : String){
    
}

func inorder(_ t : String){
    
}

func postorder(_ t :String){
    
}




