//
//  Rounded.swift
//  Project
//
//  Created by Mahmoud helmy on 6/22/19.
//  Copyright © 2019 Mahmoud helmy. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedView: UIView {

    override func awakeFromNib() {
       setupView()
    }
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    func setupView() {
        layer.cornerRadius = 10.0
        layer.shadowColor = #colorLiteral(red: 0.158003211, green: 0.1533136368, blue: 0.1531797647, alpha: 1)
        self.clipsToBounds = true
        layer.shadowOffset = CGSize(width: 1, height: 0)
        layer.shadowRadius = 0.5
        layer.shadowOpacity = 0.1
    }

}
