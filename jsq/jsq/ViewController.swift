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

    @IBAction func nine(_ sender: Any) {
     output.text = output.text! + "9"
    }
    @IBAction func eight(_ sender: Any) {
        output.text = output.text! + "8"
    }
    @IBAction func seven(_ sender: Any) {
        output.text = output.text! + "7"
    }
    
    @IBAction func four(_ sender: Any) {
        output.text = output.text! + "4"
    }
    @IBAction func five(_ sender: Any) {
        output.text = output.text! + "5"
    }
    @IBAction func six(_ sender: Any) {
        output.text = output.text! + "6"
    }
    @IBAction func three(_ sender: Any) {
        output.text = output.text! + "3"
    }
    @IBAction func two(_ sender: Any) {
        output.text = output.text! + "2"
    }
    @IBAction func one(_ sender: Any) {
        output.text = output.text! + "1"
    }
    @IBAction func zero(_ sender: Any) {
        output.text = output.text! + "0"
    }
    @IBAction func ac(_ sender: Any) {
        output.text = output.text! + "0"
    }
    @IBAction func point(_ sender: Any) {
        output.text = output.text! + "."
    }
    @IBAction func add(_ sender: Any) {
        output.text = output.text! + "+"
    }
    @IBAction func plus(_ sender: Any) {
        output.text = output.text! + "-"
    }
    @IBAction func multiply(_ sender: Any) {
        output.text = output.text! + "X"
    }
    @IBAction func equal(_ sender: Any) {
        output.text = output.text! + "="
    }
    @IBOutlet weak var output: UITextField!
}

