//
//  main.swift
//  D0-1
//
//  Created by Chester Harren on 3/13/23.
//

import Foundation

func input() -> Int{
	var x1 = 0
	while(true){
		if var input = readLine() {
			if var number = Int(input) {
				x1 = number
				break
			}
			else {
				print("Wrong input")
			}
		}
		else {
			  print("Wrong input")
		}
	}
	return(x1)
}

func lower(low: Int)-> Int{
	var arc = low
	var res = 0
	while(arc > 10){
		res *= 10
		res += (arc%10)
		arc = arc / 10
	}
	return res
}

var number = input()
var arv = "lower"

if(arv == "lover"){
	number = lower(low: number)
	print(number)
}



