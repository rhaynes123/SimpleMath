//
//  ViewController.swift
//  SimpleMath
//
//  Created by richard Haynes on 5/5/17.
//  Copyright © 2017 Me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var displayedNum: Double = 0;
    var previousNum: Double = 0;
    var doSomeMath = false
    var userOperation = 0;
    @IBOutlet weak var Label: UILabel!
   
    @IBAction func numbers(_ sender: UIButton)
    {
        if doSomeMath == true
        {
            Label.text = String(sender.tag-1)
            displayedNum = Double(Label.text!)!
            doSomeMath = false
        }
        else
        {
            Label.text = Label.text! + String(sender.tag-1)
            displayedNum = Double(Label.text!)!
        }
    }

    @IBAction func buttons(_ sender: UIButton)
    {
       if Label.text != "" && sender.tag != 16 && sender.tag != 15
        {
            
            previousNum = Double(Label.text!)!
            if sender.tag == 11 //divide
            {
                Label.text = "/";
            }
            else if sender.tag == 12// multiply
            {
                Label.text = "x";
            }
            else if sender.tag == 13//minus
            {
                Label.text = "-";
            }
            else if sender.tag == 14//addition
            {
                Label.text = "+";
            }
            userOperation = sender.tag;
            doSomeMath = true;
        }
        else if  sender.tag == 15
        {
            if userOperation == 11
            {
                Label.text = String (previousNum / displayedNum)
            }
            if userOperation == 13
            {
                Label.text = String (previousNum - displayedNum)
            }

            if userOperation == 14
            {
                Label.text = String (previousNum + displayedNum)
            }

            if userOperation == 12
            {
                Label.text = String (previousNum * displayedNum)
            }

        }
        else if sender.tag == 16
        {
            Label.text = ""
            previousNum = 0;
            displayedNum = 0
            userOperation = 0;
        }
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

