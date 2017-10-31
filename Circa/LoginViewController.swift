//
//  LoginViewController.swift
//  Circa
//
//  Created by Ethan on 10/30/17.
//  Copyright © 2017 Andy Walner. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn


class LoginViewController: UIViewController, GIDSignInDelegate, GIDSignInUIDelegate {

    @IBOutlet weak var anonymousButton: UIButton!
    
    @IBAction func LoginAnonimouslyTapped(_ sender: Any) {
        print("login anonimously tapped")
        
        //Anonymously log users in
        Helper.helper.LoginAnonimously()
        
        
    }
    
    @IBAction func googleLoginTapped(_ sender: Any) {
        print("google logintapped")
        
        GIDSignIn.sharedInstance().signIn()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set anonymous button to have a black border
        anonymousButton.layer.borderWidth = 2
        anonymousButton.layer.borderColor = UIColor.black.cgColor
        //Google signing in
        GIDSignIn.sharedInstance().clientID = "1005560262835-vinl6u1mu5972q4lh73lilv9pip8hemm.apps.googleusercontent.com"
        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().uiDelegate = self
        
        // Do any additional setup after loading the view.
        
    }

    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        
        if error != nil {
            print(error.localizedDescription)
            return
        }
        print(user.authentication)
        Helper.helper.LoginWithGoogle(authentication: user.authentication)

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
