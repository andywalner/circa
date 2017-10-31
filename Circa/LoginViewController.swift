//
//  LoginViewController.swift
//  Circa
//
//  Created by Ethan on 10/30/17.
//  Copyright © 2017 Andy Walner. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var anonymousButton: UIButton!
    
    @IBAction func LoginAnonimouslyTapped(_ sender: Any) {
        print("login anonimously tapped")
        //switch view by setting nav controller as root view controller
        
        //create a main story board instance
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        
        //from main storyboard instantiate a navigation controller
        let naviVC = storyboard.instantiateViewController(withIdentifier: "ChatVC") as! UINavigationController
        
        //get app delegate 
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        //set navigation controller as root view controller
        appDelegate.window?.rootViewController = naviVC
    }
    
    @IBAction func googleLoginTapped(_ sender: Any) {
        print("google logintapped")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set anonymous button to have a black border
        anonymousButton.layer.borderWidth = 2
        anonymousButton.layer.borderColor = UIColor.black.cgColor

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
