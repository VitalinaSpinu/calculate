//
//  ViewController.swift
//  Calculate
//
//  Created by Vitalina Spinu on 03.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var date: UITextField!
    @IBOutlet var calculate: UIButton!
    @IBOutlet var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculate.addTarget(self, action:#selector(button), for: .touchUpInside)
        
    }
    
    
    @IBAction func button() {
        let imput: String = date.text ?? ""
        
        let characters = Array(imput)
        
        var firstString: String = ""
        var operation: String = ""
        var secondString: String = ""
        
        for index in characters.indices {
            let character = characters[index]
            if (!character.isNumber) {
                firstString = String(characters[0...index - 1])
                operation = String(characters[index])
                secondString = String(characters[index + 1...characters.count - 1])
                
                break
            }
        }
        let firstInt: Int = Int(firstString) ?? 0
        let secondInt: Int = Int(secondString) ?? 0
    
    switch operation {
      case "+":
        result.text = String(firstInt + secondInt)
      case "-":
        result.text = String(firstInt - secondInt)
      case "*":
        result.text = String(firstInt * secondInt)
      case "/":
        result.text = String(firstInt / secondInt)
      default:
        result.text = "ERROR"
    }
   }
}
extension String {
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
}
