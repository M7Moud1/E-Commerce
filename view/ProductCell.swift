//
//  ProductCell.swift
//  Project
//
//  Created by Mahmoud helmy on 7/1/19.
//  Copyright © 2019 Mahmoud helmy. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var ProductImg: UIImageView!
        {
        
        didSet {
            
            ProductImg.layer.cornerRadius = 10.0
            ProductImg.clipsToBounds = true
        }
    }
    @IBOutlet weak var ProductTitle: UILabel!
    @IBOutlet weak var ProductPrice: UILabel!
    

    
    
    
}
