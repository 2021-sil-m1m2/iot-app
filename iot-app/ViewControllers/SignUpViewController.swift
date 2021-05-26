//
//  SignUpViewController.swift
//  iot-app
//
//  Created by yokada on 2021/05/25.
//

import Amplify
import AmplifyPlugins
import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // アニメーションを描画する
        functions.addAnimationView(view: view, animation: "plant-2", x: 5, y: 580, width: 210, height: 210)
        
        // 画面のどこかがタップされた時にdismissKeyboard関数を呼び出す
        let tapGR: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGR.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tapGR)
        usernameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self

        // Do any additional setup after loading the view.
    }

    @IBAction func signUp(_ sender: Any) {
        signUp(username: usernameTextField.text ?? "", password: passwordTextField.text ?? "", email: emailTextField.text ?? "")
    }
    
    // performSegue実行時に呼ばれる
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConfirm" {
            let confirmViewController = segue.destination as? ConfirmViewController
            confirmViewController?.username = usernameTextField.text ?? ""
        }
    }
    
    func signUp(username: String, password: String, email: String) {
        let userAttributes = [AuthUserAttribute(.email, value: email)]
        let options = AuthSignUpRequest.Options(userAttributes: userAttributes)
        Amplify.Auth.signUp(username: username, password: password, options: options) { result in
            switch result {
            case .success(let signUpResult):
                if case let .confirmUser(deliveryDetails, _) = signUpResult.nextStep {
                    print("Delivery details \(String(describing: deliveryDetails))")
                    // 同期処理
                    DispatchQueue.main.sync {
                        self.performSegue(withIdentifier: "toConfirm", sender: nil)
                    }
                } else {
                    print("SignUp Complete")
                    // 同期処理
                    DispatchQueue.main.sync {
                        self.performSegue(withIdentifier: "toTab", sender: nil)
                    }
                }
            case .failure(let error):
                print("An error occurred while registering a user \(error)")
            }
        }
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
