//
//  RandomColor.swift
//  Project
//
//  Created by Mahmoud helmy on 7/10/19.
//  Copyright © 2019 Mahmoud helmy. All rights reserved.
//

import UIKit


class RandomColor {
    
    
    class func randomColor() -> UIColor{
        let red = CGFloat(arc4random_uniform(225))/112
        let green = CGFloat(arc4random_uniform(225))/112
        let blue = CGFloat(arc4random_uniform(225))/112
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
