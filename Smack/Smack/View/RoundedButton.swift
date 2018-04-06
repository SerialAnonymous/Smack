//
//  RoundedButton.swift
//  Smack
//
//  Created by Nayan Jariwala on 06/04/18.
//  Copyright © 2018 Ghost. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedButton: UIButton {
    @IBInspectable var cornerRaadius : CGFloat = 3.0{
        didSet{
           self.layer.cornerRadius = cornerRaadius
        }
    }
    
    override func awakeFromNib() {
        self.setUpView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setUpView()
    }
    
    func setUpView(){
        self.layer.cornerRadius = cornerRaadius
    }

}
