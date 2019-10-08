//
//  ViewController.swift
//  test
//
//  Created by Bailey Baskett on 10/8/19.
//  Copyright © 2019 Bailey Baskett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var enteredNum = "1"
    var lastNum = 1
    var prin = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func goButton(_ sender: Any) {
        fizzBuzzBang()
    }
    @IBOutlet weak var printed: UILabel!
    @IBOutlet weak var text: UITextField!
    func fizzBuzzBang() {
        enteredNum = text.text ?? "1"
        lastNum = Int(enteredNum) ?? 1
        for index in 1...lastNum {
            if index%3==0||index%5==0||index%7==0{
                if index%3==0{
                    prin += "Fizz"
                }
                if index%5==0{
                    prin += "Buzz"
                }
                if index%7==0{
                    prin += "Bang"
                }
            } else {
                prin += "\(index)"
            }
            printed.text = prin
        }
    }
}

