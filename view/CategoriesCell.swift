//
//  CategoriesCell.swift
//  Project
//
//  Created by Mahmoud helmy on 7/8/19.
//  Copyright © 2019 Mahmoud helmy. All rights reserved.
//

import UIKit

class CategoriesCell: UICollectionViewCell {
    
    
   
    @IBOutlet weak var Img: UIImageView!{
        
        didSet {
            
            Img.layer.cornerRadius = Img.frame.height / 2
            Img.clipsToBounds = true
        }
    }
    
    @IBOutlet weak var Txt: UILabel!
    
}
