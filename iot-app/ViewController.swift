//
//  ViewController.swift
//  iot-app
//
//  Created by yokada on 2021/05/18.
//

import UIKit
import AWSMobileClient

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        AWSMobileClient.sharedInstance().initialize { (UserState, error) in
                    
                    if let userState = UserState {
                        switch (UserState) {
                        case .signedIn:
                            DispatchQueue.main.async {
                                print("Sign In")
                            }
                            
                        case .signedOut:
                            AWSMobileClient.sharedInstance().showSignIn(navigationController: self.navigationController!, { (UserState, error) in
                                if (error == nil){ //サインイン成功時
                                    DispatchQueue.main.async {
                                        print("Sign In")
                                    }

                                }

                            })
                        default:
                            AWSMobileClient.sharedInstance().signOut()
                        }
                        
         
                    } else if let error = error {
                        print(error.localizedDescription)
                    }

                }
    }

    @IBAction func signOutButton(_ sender: Any) {
        AWSMobileClient.sharedInstance().signOut()

        
        // サインイン画面を表示
        AWSMobileClient.sharedInstance().showSignIn(navigationController: self.navigationController!, { (signInState, error) in
            
            // 初期表示画面（GoalView）に遷移する
            self.navigationController?.popViewController(animated: true)
            
            if let signInState = signInState {
                print("Sign In")
            } else if let error = error {
                print("error logging in: \(error.localizedDescription)")
            }
        })
    }
    
}

