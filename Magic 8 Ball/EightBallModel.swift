//
//  EightBallModel.swift
//  Magic 8 Ball
//
//  Created by Ramteen Taheri on 17/03/2016.
//  Copyright © 2016 Ramteen Taheri. All rights reserved.
//

import Foundation


class EightBallModel : CustomStringConvertible, CustomDebugStringConvertible
{
    let initialResponseArray : [String] = ["Yes","No", "😱"]
    var responseArray:[String]?
    var 👿 = "i am an emojii"
    var description : String
        {
        get
        {
            var output = ""
            
            if let unwrapArray :[String] = responseArray
            {
                for index in 0..<unwrapArray.count
                {
                    output+=unwrapArray[index]
                }
            }
            return output
        }
    }
    
    var debugDescription : String
        {
        get
        {
            return "Debug: " + description
        }
    }
    
    /**
     Default Constructor. Sets the responseArray property with the initialResponseArray
     */
    
    init()
    {
        
        responseArray = initialResponseArray
    }
    /**
     Default Constructor. Sets the responseArray property with the initialResponseArray
     and combines it with the extraResponseArray
     */
     
     /*
     
     
     extra[maybe maybe not]
     
     
     init(extra)
     {
     response = initarray + extraArray
     }
     
     */
    
    init(extraResponseArray : Array<String>)
    {
        responseArray = initialResponseArray + extraResponseArray
    }
    
    func askQuestion(quest : String)
    {
        let randomindex = Int(arc4random_uniform(UInt32(responseArray!.count)))
        print(quest)
        
        
        print(responseArray![randomindex])
    }
    
    
    func Desprint()
    {
        print(description)
    }
    
    func debugPrint()
    {
        print(debugDescription)
    }
    
    
    
    
    
    
    
}