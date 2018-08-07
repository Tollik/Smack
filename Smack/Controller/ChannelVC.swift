//
//  ChannelVC.swift
//  Smack
//
//  Created by Tolik Ivanov on 19.07.2018.
//  Copyright © 2018 Tolik Ivanov. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var userImg: CircleImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        NotificationCenter.default.addObserver(self, selector: #selector(ChannelVC.userDataDidChange(_:)), name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setupUserInfo()
    }
    
   @objc func userDataDidChange(_ notif: Notification) {
        setupUserInfo()
    }

    
    // Actions
    @IBAction func loginBtnPressed(_ sender: Any) {
        if AuthService.instance.isLoggedIn {
            // Show profile page
            let profile = ProfileVC() // instantiated
            profile.modalPresentationStyle = .custom // modal presentation stylr
            present(profile, animated: true, completion: nil) // present the modal
        } else {
            performSegue(withIdentifier: TO_LOGIN, sender: nil)
        }
    }
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){}

    func setupUserInfo() {
        if AuthService.instance.isLoggedIn {
            loginBtn.setTitle(UserDataService.instance.name, for: .normal)
            userImg.image = UIImage(named: UserDataService.instance.avatarName)
            userImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        } else {
            loginBtn.setTitle("Login", for: .normal)
            userImg.image = UIImage(named: "menuProfileIcon")
            userImg.backgroundColor = UIColor.clear
        }
    }
}
