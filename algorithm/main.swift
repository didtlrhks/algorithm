//
//  main.swift
//  algorithm
//
//  Created by 양시관 on 10/17/24.
//

import Foundation
//입출력 예시
//4 2
//1 2 3 4


for _ in 0 ..< Int(readLine()!)! {
    let nm = readLine()!.split(separator: " ").map { Int(String($0))! } // 왜 String 을 받아서 Int 로 변환하는거지?
    var importancies = readLine()!.split(separator: " ").map { Int(String($0))! }
    if importancies.count == 1 {
        print(1)
        continue
    }
    var currentPoint = nm[1]
    var count = 0
    
    while true {//while 문이 이해가 안됨
        
        if importancies.first! == importancies.max()! {// 여기서 느낌표가 언래핑이구나
            count += 1
            importancies.removeFirst()
            if currentPoint == 0 {
                break
            } else {
                currentPoint -= 1
            }
        } else {
            importancies.append(importancies.first!)
            importancies.removeFirst()
            currentPoint = currentPoint == 0 ? importancies.count - 1 : currentPoint - 1
        }
    }
    print(count)
}
