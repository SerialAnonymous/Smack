//
//  LoginVC.swift
//  Smack
//
//  Created by Nayan Jariwala on 30/03/18.
//  Copyright © 2018 Ghost. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
