//
//  SettingsViewController.swift
//  CS Bonus
//
//  Created by SS on 25/09/2018.
//  Copyright © 2018 SS. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var userNameOutlet: UITextField!
    @IBOutlet weak var userSurnameOutlet: UITextField!
    @IBOutlet weak var userEmailOutlet: UITextField!
    @IBOutlet weak var userPhoneOutlet: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        userName = userNameOutlet.text ?? " "
        userSurname = userSurnameOutlet.text ?? " "
        userEmail = userEmailOutlet.text ?? " "
        userPhone = userPhoneOutlet.text ?? " "
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userNameOutlet.text = userName
        userSurnameOutlet.text = userSurname
        userEmailOutlet.text = userEmail
        userPhoneOutlet.text = userPhone
        
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
