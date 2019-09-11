//
//  ImgCollectionViewCell.swift
//  Project
//
//  Created by Mahmoud helmy on 6/29/19.
//  Copyright © 2019 Mahmoud helmy. All rights reserved.
//

import UIKit

class ImgCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var SeeMore: rounded_button!
    
    
    
    @IBOutlet weak var SlideImg: UIImageView!{
        
        didSet {
            
            SlideImg.layer.cornerRadius = 20.0
            SlideImg.clipsToBounds = true
        }
    }
    
    
    
}
