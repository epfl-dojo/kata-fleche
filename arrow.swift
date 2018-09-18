//
//  main.swift
//  arrow.swift
//
//  Created by Richard on 14.09.18.
//  Copyright © 2018 epfl-dojo. All rights reserved.
//

import Foundation

print("Enter your values between 2 - 20 and press [Enter]:")

let nbr = readLine()
let width = Int(nbr!)!

func drawTail(nbr:Int) {
    let s = String(repeating:" ", count:nbr-1)
    for _ in 1...nbr {
        print(s + "*")
    }
}
func drawHead(nbr:Int) {
    let s = String(repeating:" ", count:nbr-1)
        print(s + "*")
}
func drawBody(nbr:Int) {
    var number_of_spaces_between = 1
    let bottom_part = String(repeating:"*", count:(nbr*2)-1)
    for i in (1...nbr-2).reversed(){
        let space_around = String(repeating:" ", count:i)
        let space_between = String(repeating:" ", count:number_of_spaces_between)
        print(space_around + "*" + space_between + "*" + space_around)
        number_of_spaces_between += 2
    }
    print(bottom_part)
}

drawHead(nbr:width)
drawBody(nbr:width)
drawTail(nbr:width)
