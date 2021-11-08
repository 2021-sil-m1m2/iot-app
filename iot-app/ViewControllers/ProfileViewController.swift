//
//  ProfileViewController.swift
//  iot-app
//
//  Created by yokada on 2021/05/26.
//

import Amplify
import AmplifyPlugins
import UIKit
import AWSDynamoDB
import AWSMobileClient
import AWSAppSync

class ProfileViewController: UIViewController {

    @IBOutlet weak var planterIDLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var appSyncClient: AWSAppSyncClient?
    
    var timer : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 5秒おきに関数setUserを実行する
        timer = Timer.scheduledTimer(
            timeInterval: 3,
            target: self,
            selector: #selector(self.setUser(_:)),
            userInfo: nil,
            repeats: true )
        
        appSyncClient = appDelegate.appSyncClient
    }

    @objc func setUser(_ sender: Timer) {
        // appDelegateの変数にplanterIDとemailが格納されているか
        print(appDelegate.planterID)
        print(appDelegate.email)
        if appDelegate.email != "取得中です" {
            planterIDLabel.text = appDelegate.planterID
            emailLabel.text = appDelegate.email
            if appDelegate.planterID == "取得中です" {
                planterIDLabel.text = "未設定"
            }
            timer.invalidate()
            print("ユーザ情報の取得が完了したのでタイマーを終了します")
        } else{
            print("3秒おきにユーザ情報を取得します")
        }
    }
    
    // planterId（name）を新規登録する
    @IBAction func registerPlanterID(_ sender: Any) {
        print("registerPlanterIdを実行します")
        // CreateToDoInput関数：入力パラメータを作成
        let mutationInput = CreatePlanterInput(id: "test_id", name: "test_name", userId: "test_userId")
        
        // CreateTodoMutation関数：
        // AppSyncのcreateTodoに設定されているresolverを実行し，DynamoDBにデータを追加する
        appSyncClient?.perform(mutation: CreatePlanterMutation(input: mutationInput), resultHandler:  { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                return
            }
            print("データを追加（runMutation）")
        })
    }
    
    // 次ここから！！！
    // planterId（name）を変更する
    @IBAction func changePlanterID(_ sender: Any) {
        
    }
    
    @IBAction func signOut(_ sender: Any) {
        signOutLocally()
    }
    
    func signOutLocally() {
        Amplify.Auth.signOut() { result in
            switch result {
            case .success:
                print("Successfully signed out")
            case .failure(let error):
                print("Sign out failed with error \(error)")
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
