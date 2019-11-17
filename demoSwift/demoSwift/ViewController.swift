//
//  ViewController.swift
//  demoSwift
//
//  Created by jabeed on 26/10/19.
//  Copyright © 2019 jabeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var switch1: UISwitch!
    
    @IBAction func valueChanged(_ sender: UISwitch) {
        if switch1.isOn {
            lbl.text = "Swift is On"
            self.view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        }
        else {
            lbl.text = "Switch is Off"
            self.view.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)

        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        demo()
    }

    func demo() {
        
        // string
       // NSString *str  ( immutable // let)
       // NSMutableString ( mutable // var )
        let str = " hello Swift"
      // str = "hello"  //Cannot assign to value: 'str' is a 'let' constant
        print(str)
        var mainStr = " jabeed"
        print(mainStr)
        mainStr = "helo"
        print(mainStr)
        
        
        // empty string
        let emptyStr = ""
        if emptyStr.isEmpty {
            print("empty ")
        }else {
            print("Not empty")
        }
        // Comapre String
        var v1 = "hello"
        var v2 = "hello2"
        if v1 == v2 {
            print("\(v1) and \(v2) is Equal")
        }else {
            print("\(v1) and \(v2) Not Equal")
        }
        // print Varibale
        
        var cv1 = "Jabeed"
        var cv2 = 1000.0
        print("this is \(cv1) better than \(cv2) million")
        
        // varibale Declare
        var va = 1211
        var vb:Float = 12.12
        print(vb)
        
        // Optional Declare
        var aa:Int?
        var bb:String?
        if aa != nil && bb != nil {
            print("value is not nil")
        }else {
            print("value is nil")
        }
        print(aa)
        print(bb)
        
        // Force unwrapping
        var mainStr1:String? // nil
        mainStr1 = "jabee khan"
        print(mainStr1!)
        
        
        // ? Optional ! unwrapping Force
        if mainStr1 != nil {
            print("it is not nil \(mainStr1!)")
        }else {
             print("it is nil \(mainStr1!)")
        }
        
        // Array
        var myArr = [String]() // () alloc init // empty Array
        myArr = ["ja","ra","rab"]
        print(myArr)
        
        // Working String
        let age = 20
        let name = "jabeedkhan"
        let s1 = name + "is" + String(age) // Int to String
        print(s1)
        
        // initalize an Array
        var start:[String] = ["A","B","C"]
        print(start)
        print(start[0])
        print(start[1])
        
        // Dictionary // key and value
        let value = ["jabeed":20,"Rahman":30]
        print(value["jabeed"]!)

        
        if let arrayAge = value["Rahman"] {
            print("\(arrayAge)")
        }
        
        // Set
        var color:Set<String> = ["red","blue","blue","ornage"]
        color.insert("black")
        color.remove("ornage")
        print(color)
        print(color.contains("black"))
        // contain is nothig but Return true or false
        print(color.contains("ornage"))
        
        
        // Tuples
        let name1 = ("jabeed","Rahman","Rabiya") // String,String,String
        print(name1.1)
        
        let (first,last) = ("khan","jabeed")
        print(last)
        let (f1, _) = ("A","B")
        print(f1)
        
        
        // conrol flow
        if 10 > 5 {
            print("10 is greater then 5")
        }else {
            print("10 not is greater then 5")
        }
        
        
        // Swift statement
        let name2 = "Jabeed khan"
        switch name2 {
        case "Jabeed khan":
            print("this is jabeed")
        case "rahmna":
            print("this is rahman")
        default:
            print("exit")
        }
        
        
        // Loop and collection
        let names = ["ja","fff","feee","rrrr"]
        for i in names {
            print("Name:\(i)")
        }
        
        
        for i in 1...10 {
            if i % 3 == 0 {
                print(i)
            }
        }
        
        let three = stride(from: 3, to: 20, by: 3)
        for n in three {
            print(n)
        }
    
        // Indices
        let firstName = ["a","c","x","d"]
        for index in firstName.indices {
            if index < 3 {
                print(firstName[index])
            }
        }
        
        // Enumerated()
        let ccc = ["a","c","x","d"]
        for (index,name) in ccc.enumerated() {
            print("\(index): \(name)")
        }
        
         // Closure
        let world = {
            print("Hello Wolrd ")
        }
        world()
        
        
       let  mutiple =  { (a,b) ->Int in
            return a*b
        }
        print(mutiple(2,2))
        
        let divide = { (num1,num2) ->Int in
            return num1 / num2
        }
        print(divide(2, 4))
        
        
        var sum = {
            (value1:Int,value2:Int)-> Int in
            return value1 + value2
        }
        let result = sum(2,3)
        print("the sum is:\(result)")
    }
    

}

