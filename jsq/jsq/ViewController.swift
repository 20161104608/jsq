//
//  ViewController.swift
//  jsq
//
//  Created by 20161104608 on 2018/9/28.
//  Copyright © 2018年 20161104608. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    @IBOutlet weak var output_2: UITextField!
    @IBOutlet weak var output_1: UITextField!
    var outp = 0;
    var judge = 0;
    var number = 0;
    var  z = 0;
    @IBOutlet weak var output: UITextField!
    @IBAction func nine(_ sender: Any) {
        if outp == 1{
            output.text = "9"
         }
        else{
            output.text = output.text! + "9"
        }
     }
    @IBAction func eight(_ sender: Any) {
        if outp == 1{
             output.text = "8"
         }else {
            output.text = output.text! + "8"
          }
     }
    @IBAction func seven(_ sender: Any) {
        if outp == 1{
           output.text = "7"
        } else{
            output.text = output.text! + "7"
          }
      }
    
    @IBAction func four(_ sender: Any) {
        if outp == 1{
             output.text = "4"
        }
        else{
             output.text = output.text! + "4"
         }
      }
    @IBAction func five(_ sender: Any) {
        if outp == 1{
            output.text = "5"
         }else{
            output.text = output.text! + "5"
          }
      }
    @IBAction func six(_ sender: Any) {
        if outp == 1{
             output.text = "6"
         }else{
             output.text = output.text! + "6"
          }
     }
    @IBAction func three(_ sender: Any) {
        if outp == 1{
             output.text = "3"
         }else{
             output.text = output.text! + "3"
         }
     }
    @IBAction func two(_ sender: Any) {
        if outp == 1{
             output.text = "2"
         }else{
             output.text = output.text! + "2"
          }
      }
    @IBAction func one(_ sender: Any) {
        if outp == 1{
            output.text = "1"
         }else{
             output.text = output.text! + "1"
          }
     }
    @IBAction func zero(_ sender: Any) {
        if outp == 1{
             output.text = "0"
         }else{
             output.text = output.text! + "0"
          }
      }
@IBAction   func ac(_ sender: Any) {
        output.text = ""
        output_1.text = ""
        outp  = 0
        judge  = 0
        number  = 0
         z = 0
     }
   @IBAction func point(_ sender: Any) {
      if judge == 0{
          output.text = output.text! + "."
       }
       judge = 1
     }
    @IBAction func change(_ sender: Any) {
         let count = Double(output.text!)!
         let count2 = -count
         output.text = String(count2)
         outp = 0
     }
    @IBAction func add(_ sender: Any) {
        
        if z == 1 {
            judge = 0
            let a = Double(output_1.text!)!
            let b = Double(output.text!)!
            let c = a + b
            output_1.text = String(c)
            output.text=""
            number = 1
            outp = 1
            judge = 0
         }
        else {
            if  output.text == ""{
                output.text = "0"
             }
            else {
                z = 1
                let x = Double(output.text!)!
                output_1.text = String(x)
                output.text = ""
                number = 1
                outp = 0
                judge = 0
             }
         }
      }
    @IBAction func divide(_ sender: Any) {
        if z == 1{
            judge = 0
            let a = Double(output_1.text!)!
            let b = Double(output.text!)!
            let c = a / b
            output_1.text = String(c)
            output.text = ""
            number = 4
            outp = 1
            judge = 0
         }
        else {
            if output.text == ""{
               output.text = "0"
             }
            else {
                 z = 1
                let x = Double(output.text!)!
                output_1.text = String(x)
                output.text = ""
                number = 4
                outp = 0
                z = 1
                judge = 0
            }
        }
    }
    @IBAction func plus(_ sender: Any) {
        if z == 1{
            judge = 0
            let a = Double(output_1.text!)!
            let b = Double(output.text!)!
            let c = a - b
            output_1.text = String(c)
            output.text = ""
            number = 2
            outp = 1
            judge = 0
         }else {
            
           if output.text == ""{
            
               output.text = "0"
           }
          else {
            z = 1
            let x = Double(output.text!)!
            output_1.text = String(x)
            output.text = ""
            number = 2
            outp = 0
            judge = 0
            }
         }
     }
   @IBAction func multiply(_ sender: Any) {
        if z == 1{
            judge = 0
            let a = Double(output_1.text!)!
            let b = Double(output.text!)!
            let c = a * b
            output_1.text = String(c)
            output.text = ""
            number = 3
            outp = 1
            judge = 0
        }else{
           if output.text == ""{
               output.text = "0"
           }else {
               z = 1
               let x = Double(output.text!)!
               output_1.text = String(x)
               output.text = ""
               number = 3
               outp = 0
               z = 1
               judge = 0
            
           }
            
         }
    
     }
   @IBAction func equal(_ sender: Any) {
    var d : Double
    
    var c : Double
    
    let x = Double(output_1.text!)!
    
     c = (output.text! as NSString).doubleValue
    
    if number == 1 {
        
        d = x - c
        output_1.text = String(x) + "-" + String(c)
     }else if number == 2 {
        
        d = x + c
        output_1.text = String(x) + "+" + String(c)
     }else if number == 3 {
        
        d = x * c
        output_1.text = String(x) + "*" + String(c)
     }else if number == 4 {
        
        d = x / (c)
        output_1.text = String(x) + "/" + String(c)
     }else {
        
        d = 1000
        
     }
    
     output_2.text = String(c)
    
     if judge == 1{
        
         output.text = String(format:"%f", d)
        
     }else {
        
        output.text = String(format:"%.5f", d)
        
     }
         outp = 1
         judge = 0
         z = 0
    var clear:String  = output.text!
    while clear.last == "0"{
        clear.removeLast()
    }
    output.text = clear
     }
    
  }


