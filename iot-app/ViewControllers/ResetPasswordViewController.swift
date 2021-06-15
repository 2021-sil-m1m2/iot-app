//
//  ResetPasswordViewController.swift
//  iot-app
//
//  Created by yokada on 2021/05/26.
//

import Amplify
import AmplifyPlugins
import UIKit

class ResetPasswordViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var newpasswordTextField: UITextField!
    @IBOutlet weak var showPasswordButton: UIButton!
    
    var iconClick = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 画面のどこかがタップされた時にdismissKeyboard関数を呼び出す
        let tapGR: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGR.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tapGR)
        confirmTextField.delegate = self
        emailTextField.delegate = self
        newpasswordTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func resetPassword(_ sender: Any) {
        resetPassword(username: emailTextField.text ?? "")
    }
    
    @IBAction func confirmResetPassword(_ sender: Any) {
        confirmResetPassword(username: emailTextField.text ?? "", newPassword: newpasswordTextField.text ?? "", confirmationCode: confirmTextField.text ?? "")
        performSegue(withIdentifier: "toSignin", sender: nil)
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
    
    @IBAction func showPassword(_ sender: Any) {
        if(iconClick == true) {
            newpasswordTextField.isSecureTextEntry = false
            showPasswordButton.setImage(UIImage(named: "hide"), for: .normal)
        } else {
            newpasswordTextField.isSecureTextEntry = true
            showPasswordButton.setImage(UIImage(named: "show"), for: .normal)
        }
        iconClick = !iconClick
    }
    // キーボードを閉じる（画面のどこかが押された時に呼び出される）
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }
    
    // Returnキーが押されたらキーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        dismissKeyboard()
        return true
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
