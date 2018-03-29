//
//  GradientView.swift
//  Smack
//
//  Created by Nayan Jariwala on 29/03/18.
//  Copyright © 2018 Ghost. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    var colorArray : [(color1: UIColor, color2: UIColor)]=[]
    var currentColorArrayIndex = -1
    @IBInspectable var color1of1: UIColor = UIColor.blue  {
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var color1of2: UIColor = UIColor.blue  {
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var color2of1: UIColor = UIColor.blue  {
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var color2of2: UIColor = UIColor.blue  {
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var color3of1: UIColor = UIColor.blue  {
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var color3of2: UIColor = UIColor.blue  {
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var color4of1: UIColor = UIColor.blue  {
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var color4of2: UIColor = UIColor.blue  {
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var color5of1: UIColor = UIColor.blue  {
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var color5of2: UIColor = UIColor.blue  {
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var color6of1: UIColor = UIColor.blue  {
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var color6of2: UIColor = UIColor.blue  {
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var color7of1: UIColor = UIColor.blue  {
        didSet{
            self.setNeedsLayout()
        }
    }
    @IBInspectable var color7of2: UIColor = UIColor.blue  {
        didSet{
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        colorArray.append((color1: color1of1, color2: color1of2))
        colorArray.append((color1: color2of1, color2: color2of2))
        colorArray.append((color1: color3of1, color2: color3of2))
        colorArray.append((color1: color4of1, color2: color4of2))
        colorArray.append((color1: color5of1, color2: color5of2))
        colorArray.append((color1: color6of1, color2: color6of2))
        colorArray.append((color1: color7of1, color2: color7of2))
        animatedBackground()
    }
    
    func animatedBackground(){
        currentColorArrayIndex = currentColorArrayIndex == (colorArray.count - 1) ? 0 : currentColorArrayIndex + 1
        UIView.transition(with: self, duration: 10, options: [.transitionCrossDissolve], animations: {
            self.backgroundColor = self.colorArray[self.currentColorArrayIndex].color1
        }) { (completion) in
            self.animatedBackground()
        }
    }
}
