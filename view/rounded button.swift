//
//  rounded button.swift
//  Project
//
//  Created by Mahmoud helmy on 6/23/19.
//  Copyright © 2019 Mahmoud helmy. All rights reserved.
//

import UIKit

@IBDesignable
class rounded_button: UIButton {
    
    @IBInspectable var shadowcolor : CGColor  = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1) {
        
        didSet {
            
            layer.shadowColor = shadowcolor
            
            
            
        }
    }
    
    @IBInspectable var borderWidth : CGFloat = 0.0 {
        
        didSet {
            
            
            
            layer.borderWidth =  borderWidth
        }
        
    }
    
    
    
    @IBInspectable var cornerradius : CGFloat = 0 {
        didSet {
        
            if cornerradius == 0
            {
                layer.cornerRadius = layer.frame.height / 2
            } else {
                layer.cornerRadius = cornerradius
            }
        }
    }
   
    

    override func awakeFromNib() {
        MakeRound()
    }
    
    override func prepareForInterfaceBuilder() {
        MakeRound()
    }
    
    func MakeRound () {
        
       // self.layer.cornerRadius =  self.frame.height / 2
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowRadius = 0
    }

}
