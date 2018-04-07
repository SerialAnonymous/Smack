//
//  ChannelVC.swift
//  Smack
//
//  Created by Nayan Jariwala on 29/03/18.
//  Copyright © 2018 Ghost. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    // Outlets
    @IBOutlet weak var LoginBtn: UIButton!
    @IBOutlet weak var userImg: CircleImage!
    @IBAction func prepareForUnwind(segue:UIStoryboardSegue){}
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        NotificationCenter.default.addObserver(self, selector: #selector(ChannelVC.userDataDidChange(_:)), name: NOTIF_USER_DATA_DID_CHANGE, object: nil )
    }

    @IBAction func LoginBtnPressed(_ sender: Any) {
        if AuthService.instance.isLoggedIn{
            //Show profile Page
            let profile = ProfileVC()
            profile.modalPresentationStyle = .custom
            present(profile, animated: true, completion: nil )
        }else{
            performSegue(withIdentifier: TO_LOGIN, sender: nil)
        }
        
        
    }
    @objc func userDataDidChange(_ notif: Notification){
        if AuthService.instance.isLoggedIn{
            LoginBtn.setTitle(UserDataService.instance.name, for: .normal)
            userImg.image = UIImage(named: UserDataService.instance.avatarName)
            userImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        }else{
            LoginBtn.setTitle("Login", for: .normal)
            userImg.image = UIImage(named: "menuProfileIcon")
            userImg.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0) 
        }
    }
    
}
