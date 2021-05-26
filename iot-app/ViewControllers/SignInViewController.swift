//
//  SignInViewController.swift
//  iot-app
//
//  Created by yokada on 2021/05/25.
//

import Amplify
import AmplifyPlugins
import Lottie
import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // アニメーションを描画する
        functions.addAnimationView(view: view, animation: "draw_line", x: 0, y: -190, width: view.frame.size.width, height: view.frame.size.height)
        
        // NavigationBarを隠す
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        // 現在のログイン状態を取得する
        let cognitoUser = Amplify.Auth.getCurrentUser()
        if cognitoUser != nil {
            // すでにログイン済みの場合、画面遷移する
            performSegue(withIdentifier: "toTab", sender: nil)
        }
        
        // 画面のどこかがタップされた時にdismissKeyboard関数を呼び出す
        let tapGR: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGR.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tapGR)
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    // performSegue実行時に呼ばれる
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConfirm" {
            let confirmViewController = segue.destination as? ConfirmViewController
            confirmViewController?.username = emailTextField.text ?? ""
        }
    }
    
    @IBAction func signIn(_ sender: Any) {
        signIn(email: emailTextField.text ?? "", password: passwordTextField.text ?? "")
    }
    
    @IBAction func resetPassword(_ sender: Any) {
        performSegue(withIdentifier: "toReset", sender: nil)
    }
    
    func signIn(email: String, password: String) {
        Amplify.Auth.signIn(username: email, password: password) { result in
            switch result {
            case .success:
                print("Sign in succeeded")
                DispatchQueue.main.sync {
                    self.performSegue(withIdentifier: "toTab", sender: nil)
                }
            case .failure(let error):
                print("Sign in failed \(error)")
                DispatchQueue.main.sync {
                    print("エラー内容 \(error.errorDescription)")
                    switch "\(error.errorDescription)" {
                    case "User does not exist.":
                        self.errorLabel.text = "登録されていないメールアドレスです。\nアカウント作成をしてください。"
                    case "Incorrect username or password.":
                        self.errorLabel.text = "メールアドレスかパスワードが間違っています。"
                    default:
                        self.errorLabel.text = "不明のエラーです。"
                    }
                }
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

