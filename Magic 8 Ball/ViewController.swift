//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ramteen Taheri on 17/03/2016.
//  Copyright © 2016 Ramteen Taheri. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var age : Double
        age = 30
        print("Ramteen Taheri")
        
        let name = "Ramteen Taheri"
        
        let sentence = String(format: "My name is " + name + ", and i am %.2f years old", age)
        
        print(sentence)
        
        let responseStrings : [String] = ["maybe","hmmm.... that's a tough one"]
        
        
        
        let ebl = EightBallModel(extraResponseArray: responseStrings)
        
        
        
        //7: we notice here that we have repeat code, so we can use a  loop.
        
        
        
        ebl.askQuestion("Will I get full marks for this lab?")
        
        ebl.askQuestion("Will I still love computers when I'm older?")
        
        
        ebl.askQuestion("Will I ever get to catch up on all my work?")
        
        
        ebl.Desprint()
        ebl.debugPrint()
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

//emojii in swift can be used as variable names and values.




