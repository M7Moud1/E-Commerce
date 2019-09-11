//
//  ProfileCell1TableViewCell.swift
//  Project
//
//  Created by Mahmoud helmy on 6/28/19.
//  Copyright © 2019 Mahmoud helmy. All rights reserved.
//

import UIKit

class ProfileCell1: UITableViewCell {

    
    @IBOutlet weak var ImgIcon: UIImageView!
    
    @IBOutlet weak var Title: UILabel!
   
    @IBOutlet weak var ImB: UIImageView!{
        
        didSet {
            
            ImB.layer.cornerRadius = 10
        }
    }
}
