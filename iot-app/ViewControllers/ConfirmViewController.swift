//
//  ConfirmViewController.swift
//  iot-app
//
//  Created by yokada on 2021/05/26.
//

import Amplify
import AmplifyPlugins
import UIKit

class ConfirmViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var confirmTextField: UITextField!
    
    var username: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 画面のどこかがタップされた時にdismissKeyboard関数を呼び出す
        let tapGR: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGR.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tapGR)
        confirmTextField.delegate = self
        print("-------------username")
        print(username)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func confirmCode(_ sender: Any) {
        confirmSignUp(for: username, with: confirmTextField.text ?? "")
    }
    
    func confirmSignUp(for username: String, with confirmationCode: String) {
        Amplify.Auth.confirmSignUp(for: username, confirmationCode: confirmationCode) { result in
            switch result {
            case .success:
                print("Confirm signUp succeeded")
                // 同期処理
                DispatchQueue.main.sync {
                    self.performSegue(withIdentifier: "toTab", sender: nil)
                }
            case .failure(let error):
                print("An error occurred while confirming sign up \(error)")
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
