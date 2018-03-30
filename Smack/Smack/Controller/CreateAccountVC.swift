//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Nayan Jariwala on 30/03/18.
//  Copyright © 2018 Ghost. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}
