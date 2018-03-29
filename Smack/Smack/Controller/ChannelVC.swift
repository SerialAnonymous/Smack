//
//  ChannelVC.swift
//  Smack
//
//  Created by Nayan Jariwala on 29/03/18.
//  Copyright © 2018 Ghost. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width -  60
    }


}
