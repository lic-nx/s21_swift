//
//  main.swift
//  Day00Task0
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

var x1,y1,r1,x2,y2,r2 :Int

x1 = input()
y1 = input()
r1 = input()
while(r1 < 0){
    print("wrong Input")
    r1 = input()
    
}
x2 = input()
y2 = input()
r2 = input()
while(r2 < 0){
    print("wrong Input")
    r2 = input()
}

var L2 = sqrt(pow(Double(x1-x2), 2) + pow(Double(y1-y2), 2))
print(L2)
print(Double(r1+r2))
if (L2 > Double(r1+r2)){
        print("не пересекаются")
}
else if (L2 == Double(r1+r2)){
    print("касаются")
}
else if(L2 + Double(r2) < Double(r1) || L2+Double(r1) < Double(r2)) {
    print("One circle is inside another")
}
else{
    print("пересекаются")
}

