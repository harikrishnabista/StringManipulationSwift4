//: Playground - noun: a place where people can play

import UIKit

func reverseString(input:String) ->String {
    var inputCharArr = [Character](input)

    for i in 0...(inputCharArr.count/2 - 1) {
        let temp = inputCharArr[i]
        inputCharArr[i] = inputCharArr[inputCharArr.count - i - 1]
        inputCharArr[inputCharArr.count - i - 1] = temp
    }

    let strResult = inputCharArr.reduce("") { (result, ele) -> String in
        return result + String(ele)
    }
    
    return strResult
}

let name = "Hari Krishna Bista"
let nameArray = name.split(separator: " ")
var resultNameArray:[String] = []
for item in nameArray {
    let str = String(item)
    resultNameArray.append(reverseString(input:str))
}

var greeting = "Hello Hari"
print("converting the string into array of characters")
var arrGreeting = [Character](greeting)
print(arrGreeting)

print("")
print("insert at index 4")
greeting.insert("K", at: greeting.index(greeting.startIndex, offsetBy: 4))
print(greeting)

print("")
print("First two characters:")
print(greeting.prefix(2))

print("")
print("get last two characters ")
let pr1 = greeting.suffix(2)
print(type(of: pr1))

print("")
print("get character at index 2")
let char = greeting[greeting.index(greeting.startIndex, offsetBy: 2)]
print(char)
print(type(of: char))

print("")
print("get character at index 2 another way")
print(String(greeting.prefix(3)).suffix(1))

print("")
print("index of an character")
print(greeting.distance(from: greeting.startIndex, to: greeting.index(of: "H")!))

print("")
print("Remove first character of string")
print("removed: \(greeting.remove(at: greeting.startIndex))")
print(greeting)

print("")
print("Remove character at index 3")
print("removed: \(greeting.remove(at: greeting.index(greeting.startIndex, offsetBy: 3)))")
print(greeting)



