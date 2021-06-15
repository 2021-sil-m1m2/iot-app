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

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var showPasswordButton: UIButton!
    
    var iconClick = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // アニメーションを描画する
        functions.addAnimationView(view: view, animation: "plant-2", x: 5, y: 580, width: 210, height: 210)
        
        // 画面のどこかがタップされた時にdismissKeyboard関数を呼び出す
        let tapGR: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGR.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tapGR)
        emailTextField.delegate = self
        passwordTextField.delegate = self

        // Do any additional setup after loading the view.
    }

    @IBAction func signUp(_ sender: Any) {
        signUp(email: emailTextField.text ?? "", password: passwordTextField.text ?? "")
    }
    
    // performSegue実行時に呼ばれる
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConfirm" {
            let confirmViewController = segue.destination as? ConfirmViewController
            confirmViewController?.username = emailTextField.text ?? ""
        }
    }

    func signUp(email: String, password: String) {
        Amplify.Auth.signUp(username: email, password: password) { result in
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
                DispatchQueue.main.sync {
                    print("エラー内容 \(error.recoverySuggestion)")
                    switch "\(error.recoverySuggestion)" {
                    case "Make sure that a valid password is passed for signUp":
                        self.errorLabel.text = "パスワードを入力してください。"
                    case "Make sure that the parameters passed are valid":
                        self.errorLabel.text = "正しいメールアドレスとパスワード（英数字８文字以上）を入力してください。"
                    case "Invoke the api with a different username":
                        self.errorLabel.text = "登録済みのメールアドレスです。\nログインしてください。"
                    default:
                        self.errorLabel.text = "不明のエラーです。"
                    }
                }
            }
        }
    }
    
    @IBAction func showPassword(_ sender: Any) {
        if(iconClick == true) {
            passwordTextField.isSecureTextEntry = false
            showPasswordButton.setImage(UIImage(named: "hide"), for: .normal)
        } else {
            passwordTextField.isSecureTextEntry = true
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
