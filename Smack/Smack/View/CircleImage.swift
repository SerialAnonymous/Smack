//
//  CircleImage.swift
//  Smack
//
//  Created by Nayan Jariwala on 07/04/18.
//  Copyright © 2018 Ghost. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {
    override func awakeFromNib() {
        setUpView()
    }
    func setUpView(){
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpView()
    }
}
