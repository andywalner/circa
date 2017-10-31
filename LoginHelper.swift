//
//  LoginHelper.swift
//  Circa
//
//  Created by Ethan on 10/30/17.
//  Copyright © 2017 Andy Walner. All rights reserved.
//

import Foundation
import FirebaseAuth
import UIKit
import GoogleSignIn

class Helper {
    static let helper = Helper()
    
    func LoginAnonimously() {
        print("login anonimously tapped")
        
        Auth.auth().signInAnonymously(completion: {(anonymousUser, error) in
            if(error == nil) {
                print("UserID: \(anonymousUser!.uid)")
                
                self.switchToNavigationViewController()
                
            } else {
                print(error!.localizedDescription)
                return
            }
        })
    }
    
    func LoginWithGoogle(authentication: GIDAuthentication) {
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)
        
        Auth.auth().signIn(with: credential) { (user, error) in
            if error != nil {
                print(error!.localizedDescription)
                return
                
            } else {
                print(user?.email)
                print(user?.displayName)
                
                self.switchToNavigationViewController()
            }
            
        }
    }
    
    private func switchToNavigationViewController() {
    
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
}
