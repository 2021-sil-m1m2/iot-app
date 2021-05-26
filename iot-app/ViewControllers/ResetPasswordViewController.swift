//
//  ResetPasswordViewController.swift
//  iot-app
//
//  Created by yokada on 2021/05/26.
//

import Amplify
import AmplifyPlugins
import UIKit

class ResetPasswordViewController: UIViewController {
    
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func resetPassword(_ sender: Any) {
        resetPassword(username: emailTextField.text ?? "")
    }
    
    @IBAction func confirmResetPassword(_ sender: Any) {
        confirmResetPassword(username: emailTextField.text ?? "", newPassword: "password3", confirmationCode: confirmTextField.text ?? "")
    }
    
    func resetPassword(username: String) {
        Amplify.Auth.resetPassword(for: username) { result in
            do {
                let resetResult = try result.get()
                switch resetResult.nextStep {
                case .confirmResetPasswordWithCode(let deliveryDetails, let info):
                    print("Confirm reset password with code send to - \(deliveryDetails) \(info)")
                case .done:
                    print("Reset completed")
                }
            } catch {
                print("Reset password failed with error \(error)")
            }
        }
    }
    
    func confirmResetPassword(
        username: String,
        newPassword: String,
        confirmationCode: String
    ) {
        Amplify.Auth.confirmResetPassword(
            for: username,
            with: newPassword,
            confirmationCode: confirmationCode
        ) { result in
            switch result {
            case .success:
                print("Password reset confirmed")
            case .failure(let error):
                print("Reset password failed with error \(error)")
            }
        }
    }
    
    func confirmSignIn(newPasswordFromUser: String) {
        Amplify.Auth.confirmSignIn(challengeResponse: newPasswordFromUser) { result in
            switch result {
            case .success(let signInResult):
                if signInResult.isSignedIn {
                    print("Confirm sign in succeeded. The user is signed in.")
                } else {
                    print("Confirm sign in succeeded.")
                    print("Next step: \(signInResult.nextStep)")
                    // Switch on the next step to take appropriate actions.
                    // If `signInResult.isSignedIn` is true, the next step
                    // is 'done', and the user is now signed in.
                }
            case .failure(let error):
                print("Confirm sign in failed \(error)")
            }
        }
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
