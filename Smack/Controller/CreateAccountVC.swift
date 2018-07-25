//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Tolik Ivanov on 25.07.2018.
//  Copyright © 2018 Tolik Ivanov. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    // Outlets

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // Actions
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
