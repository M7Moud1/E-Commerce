//
//  CartCell.swift
//  Project
//
//  Created by Mahmoud helmy on 7/12/19.
//  Copyright © 2019 Mahmoud helmy. All rights reserved.
//

import UIKit

class CartCell: UITableViewCell {

    
    var PlusC :(()->())?
    var MinusC : (()->())?
    
    @IBOutlet weak var Product_Img: UIImageView!{
        
        didSet {
            
          Product_Img.layer.cornerRadius = Product_Img.frame.width / 2
        }
    }
    
    @IBOutlet weak var Product_Title: UILabel!
    
    @IBOutlet weak var Product_Des: UILabel!
    
    @IBOutlet weak var Product_Price: UILabel!
    
    @IBOutlet weak var Count: UILabel!
    
    @IBOutlet weak var Plus_Btn: UIButton!
    
    @IBOutlet weak var Minus_Btn: UIButton!
    
    
    @IBAction func plus(_ sender: Any) {
        
        PlusC?()
    }
    
    
    @IBAction func Minus(_ sender: Any) {
        
        
        MinusC?()
    }
    
}
