//
//  ViewController.swift
//  YourCalc
//
//  Created by George Saieed on 7/7/16.
//  Copyright © 2016 George Saieed. All rights reserved.
//

import UIKit
import CoreData
import Alamofire
import MathParser
var cores = [NSManagedObject]()

class ViewController: UIViewController {
    var storedBackground = NSManagedObject()
    @IBOutlet var aBackground: UIImageView!

    override func viewDidLoad() {
        let appDelegate =
            UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext
        
        //2
        let fetchRequest = NSFetchRequest(entityName: "Background")
        
        //3
        do {
            let results =
                try managedContext.executeFetchRequest(fetchRequest)
            cores = results as! [NSManagedObject]
        } catch let error as NSError {
            print("Could not fetch \(error), \(error.userInfo)")
        } catch {
            // Catch any other errors
        }
        if cores.count == 0 {
            aBackground.image = UIImage(named: "b14.png")
        }
        else {
            theBackground = (cores[0].valueForKey("name") as? String)!
            aBackground.image = UIImage(named:(cores[0].valueForKey("name") as? String)!)
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var resultField: UITextField!
    var inTyping: String = ""
    var finalString = ""
    var finalAnswer = 0
    var canDec = true
    var canIClose = false
    
    @IBAction func sqrt(sender: AnyObject) {
        if ((inTyping.characters.last != ".") && (inTyping.characters.last != ")") && (inTyping.characters.last != "!") && (inTyping.characters.last != "√") && ((inTyping.characters.last == "+") || (inTyping.characters.last == "-") || (inTyping.characters.last == "×") || (inTyping.characters.last == "/") || (inTyping.characters.last == "(") || (inTyping.characters.last == "^") || (inTyping == ""))){
            inTyping += "√("
            canIClose = true
            resultField.text = inTyping
        }

    }
    
    @IBAction func power(sender: AnyObject) {
        if ((inTyping.characters.last != ".") && (inTyping.characters.last != "+") && (inTyping.characters.last != "-") && (inTyping.characters.last != "×") && (inTyping.characters.last != "/") && (inTyping.characters.last != "(") && (inTyping.characters.last != "^") && (inTyping.characters.last != "√") && (inTyping != "")){
            inTyping += "^("
            canIClose = true
            resultField.text = inTyping
        }
    }
    
    @IBAction func openpar(sender: AnyObject) {
        if ((inTyping.characters.last != ".") && (inTyping.characters.last != ")") && (inTyping.characters.last != "!") && (inTyping.characters.last != "√") && ((inTyping.characters.last == "+") || (inTyping.characters.last == "-") || (inTyping.characters.last == "×") || (inTyping.characters.last == "/") || (inTyping.characters.last == "(") || (inTyping.characters.last == "^") || (inTyping == ""))){
            inTyping += "("
            canIClose = true
            resultField.text = inTyping
        }
    }
    
    @IBAction func closepar(sender: AnyObject) {
        var huh = 0
        var huh2 = 0
        var huz = 0
        var huz2 = 0
        canIClose = false
        for char in inTyping.characters
        {
            if char == "(" {
                huh += 1
            }
            if char == ")" {
                huh2 += 1
            }
            if huh > huh2 {
                canIClose = true
            }
            
            if huh <= huh2 {
                canIClose = false
            }
            
        }
        if ((inTyping.characters.last != ".") && (canIClose == true) && (inTyping.characters.last != "+") && (inTyping.characters.last != "-") && (inTyping.characters.last != "×") && (inTyping.characters.last != "/") && (inTyping.characters.last != "(") && (inTyping.characters.last != "^") && (inTyping.characters.last != "√") && (inTyping != "")){
            inTyping += ")"
            for char in inTyping.characters
            {
                if char == "(" {
                    huz += 1
                }
                if char == ")" {
                    huz2 += 1
                }
                if huz == huz2 {
                    canIClose = true
                }
            }
            resultField.text = inTyping
        }
    }
    
    @IBAction func delKey(sender: AnyObject) {
        var hubs = 0
        var hubs2 = 0
        if String(inTyping.characters.suffix(2)) == "√(" || String(inTyping.characters.suffix(2)) == "^(" {
            inTyping = String(inTyping.characters.dropLast())
            inTyping = String(inTyping.characters.dropLast())
        }
        else if String(inTyping.characters.suffix(2)) != "√(" && String(inTyping.characters.suffix(2)) != "^(" {
            inTyping = String(inTyping.characters.dropLast())
        }
        resultField.text = inTyping
        for char in inTyping.characters
        {
            if char == "(" {
                hubs += 1
            }
            if char == ")" {
                hubs2 += 1
            }
            if hubs != hubs2 {
                canIClose = true
            }
        }
        if inTyping == "" {
            resultField.text = "0"
        }
    }
    
    @IBAction func clearBt(sender: AnyObject) {
        inTyping = ""
        resultField.text = "0"
    }
    
    
    @IBAction func seven(sender: AnyObject) {
        if(inTyping.characters.last != ")") {
            inTyping += "7"
            resultField.text = inTyping
        }
    }
    
    @IBAction func eight(sender: AnyObject) {
        if(inTyping.characters.last != ")") {
            inTyping += "8"
            resultField.text = inTyping
        }
    }
    
    @IBAction func nine(sender: AnyObject) {
        if(inTyping.characters.last != ")") {
            inTyping += "9"
            resultField.text = inTyping
        }
    }
    
    @IBAction func four(sender: AnyObject) {
        if(inTyping.characters.last != ")") {
            inTyping += "4"
            resultField.text = inTyping
        }
    }
    
    @IBAction func five(sender: AnyObject) {
        if(inTyping.characters.last != ")") {
            inTyping += "5"
            resultField.text = inTyping
        }
    }
    
    @IBAction func six(sender: AnyObject) {
        if(inTyping.characters.last != ")") {
            inTyping += "6"
            resultField.text = inTyping
        }
    }
    
    @IBAction func one(sender: AnyObject) {
        if(inTyping.characters.last != ")") {
            inTyping += "1"
            resultField.text = inTyping
        }
    }
    
    @IBAction func two(sender: AnyObject) {
        if(inTyping.characters.last != ")") {
            inTyping += "2"
            resultField.text = inTyping
        }
    }
    
    @IBAction func three(sender: AnyObject) {
        if(inTyping.characters.last != ")") {
            inTyping += "3"
            resultField.text = inTyping
        }
    }
    
    @IBAction func zero(sender: AnyObject) {
        if(inTyping.characters.last != ")") {
            inTyping += "0"
            resultField.text = inTyping
        }
    }
    
    @IBAction func decpoint(sender: AnyObject) {
        if ((inTyping.characters.last != ".") && (canDec == true) && (inTyping.characters.last != "+") && (inTyping.characters.last != "-") && (inTyping.characters.last != "×") && (inTyping.characters.last != "/") && (inTyping.characters.last != ")") && (inTyping.characters.last != "(") && (inTyping.characters.last != "!") && (inTyping.characters.last != "^") && (inTyping.characters.last != "√") && (inTyping != "")){
            inTyping += "."
            canDec = false
            resultField.text = inTyping
        }
        if ((inTyping.characters.last != ".") && (inTyping.characters.last != ")") && (canDec == true) && ((inTyping.characters.last == "+") && (inTyping.characters.last == "-") || (inTyping.characters.last == "×") && (inTyping.characters.last == "/") || (inTyping.characters.last == "(") || (inTyping.characters.last == "!") && (inTyping.characters.last == "^") || (inTyping.characters.last == "√") || (inTyping == ""))){
            inTyping += "0."
            canDec = false
            resultField.text = inTyping
        }
    }
    
    @IBAction func divide(sender: AnyObject) {
        if ((inTyping.characters.last != ".") && (inTyping.characters.last != "+") && (inTyping.characters.last != "-") && (inTyping.characters.last != "×") && (inTyping.characters.last != "/") && (inTyping.characters.last != "(") && (inTyping.characters.last != "^") && (inTyping.characters.last != "√") && (inTyping != "")){
            inTyping += "/"
            canDec = true
            resultField.text = inTyping
        }
    }
    
    @IBAction func times(sender: AnyObject) {
        if ((inTyping.characters.last != ".") && (inTyping.characters.last != "+") && (inTyping.characters.last != "-") && (inTyping.characters.last != "×") && (inTyping.characters.last != "/") && (inTyping.characters.last != "(") && (inTyping.characters.last != "^") && (inTyping.characters.last != "√") && (inTyping != "")){
            inTyping += "×"
            canDec = true
            resultField.text = inTyping
        }
    }
    
    @IBAction func minus(sender: AnyObject) {
            inTyping += "-"
            canDec = true
            resultField.text = inTyping
    }
    
    @IBAction func plus(sender: AnyObject) {
        if ((inTyping.characters.last != ".") && (inTyping.characters.last != "+") && (inTyping.characters.last != "-") && (inTyping.characters.last != "×") && (inTyping.characters.last != "/") && (inTyping.characters.last != "(") && (inTyping.characters.last != "^") && (inTyping.characters.last != "√") && (inTyping != "")){
            inTyping += "+"
            canDec = true
            resultField.text = inTyping
        }
    }
    
    @IBAction func equals(sender: AnyObject) {
        var wubs = 0
        var wubs2 = 0
        canIClose = true
        for char in inTyping.characters
        {
            if char == "(" {
                wubs += 1
            }
            if char == ")" {
                wubs2 += 1
            }
            if wubs == wubs2 {
                canIClose = false
            }
            else {
                canIClose = true
            }
        }
        if String(inTyping.characters.suffix(2)) == "√(" || String(inTyping.characters.suffix(2)) == "^(" || inTyping.characters.last == "(" || inTyping.characters.last == "/" || inTyping.characters.last == "×" || inTyping.characters.last == "-" || inTyping.characters.last == "+" || inTyping.characters.last == "." || canIClose == true {
        }
        else {
            for char in inTyping.characters {
                if char == "1" || char == "2" || char == "3" || char == "4" || char == "5" || char == "6" || char == "7" || char == "8" || char == "9" || char == "0" || char == "." || char == "+" || char == "/" || char == "-" || char == "(" || char == ")" || char == "!" {
                    finalString += String(char)
                }
                
                if char == "×" {
                    finalString += "*"
                }
                
                if char == "^" {
                    finalString += "**"
                }
                
                if char == "√" {
                    finalString += "sqrt"
                }
            }
            var result = 0.0
            do{
                let evaluator = Evaluator()
                let expression = try Expression(string: finalString)
                result = try evaluator.evaluate(expression)
            }
            catch
            {
                
            }
            resultField.text = String(result)
            inTyping = String(result)
            finalString = ""
        }
    }
}

