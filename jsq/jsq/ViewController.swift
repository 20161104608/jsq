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
    @IBOutlet weak var output_1: UITextField!
    var outp = 0 ;
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
        }else{
            output.text = output.text! + "8"
        }
    }
    @IBAction func seven(_ sender: Any) {
        if outp == 1{
            output.text = "7"
        }else{
            output.text = output.text! + "7"
        }
    }
    
    @IBAction func four(_ sender: Any) {
        if outp == 1{
            output.text = "4"
        }else{
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
    }
@IBAction func point(_ sender: Any) {
    
    output.text = output.text! + "."
     judge = 1
    }
@IBAction func add(_ sender: Any) {
    if z == 1{
        let a = Double(output_1.text!)!
         let b = Double(output.text!)!
        let c = a - b
        output_1.text = String(c)
        output.text=""
        number = 1
        outp = 1
    }
    else{
        if output.text == ""{
            output.text = "0"
        }else{
            let y = Double(output.text!)!
            output_1.text = String(y)
            output.text = ""
            number = 1
            outp = 0
        }
    }
    }
@IBAction func plus(_ sender: Any) {
    output.text = output.text! + "-"
    }
@IBAction func multiply(_ sender: Any) {
    output.text = output.text! + "X"
    }
@IBAction func equal(_ sender: Any) {

}
}
