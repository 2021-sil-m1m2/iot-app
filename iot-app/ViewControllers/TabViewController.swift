//
//  TabViewController.swift
//  iot-app
//
//  Created by yokada on 2021/10/13.
//

import Amplify
import AWSMobileClient
import UIKit

class TabViewController: UITabBarController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("TabBarController.swiftのviewDidLoad内です")
        
        // ユーザ情報を取得し、appDelegate変数に格納する
        let cognitoUser = Amplify.Auth.getCurrentUser()
        if cognitoUser != nil {
            // すでにログイン済みの場合、画面遷移する
            print("ログイン済みです、emailを表示し画面遷移します")
            
            // *******************************************次ここ！***************************************
            
            // PlanterViewのindicatorを回し始める
            
            DispatchQueue.global().async {
                AWSMobileClient.default().getUserAttributes { (attributes, error) in
                    if(error != nil){
                        print("ERROR: \(error)")
                    }else{
                            if let attributesDict = attributes{
                                print("emailを表示します　@TabViewのviewDidLoad")
                                print(attributesDict["email"])
                                print("userIDを表示します　@TabViewのviewDidLoad")
                                print(cognitoUser?.userId)
                                self.appDelegate.email = attributesDict["email"]
                                self.appDelegate.userid = cognitoUser?.userId
                                print("signinでのユーザ情報の表示が完了しました")
                            }
                    }
                }
            }
            
            wait( { return self.appDelegate.userid == nil } ) {
                // 取得しました
                print("finish")
                
                // PlanterViewのindicatorを止める
                
            }
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("TabBarController.swiftのviewWillAppear内です")
    }
    
    // 待機条件をクリアするまで処理を止める関数
    ///   - waitContinuation: 待機条件
    ///   - compleation: 通過後の処理
    func wait(_ waitContinuation: @escaping (()->Bool), compleation: @escaping (()->Void)) {
        var wait = waitContinuation()
        // 0.01秒周期で待機条件をクリアするまで待つ
        let semaphore = DispatchSemaphore(value: 0)
        DispatchQueue.global().async {
            while wait {
                DispatchQueue.main.async {
                    wait = waitContinuation()
                    semaphore.signal()
                }
                semaphore.wait()
                Thread.sleep(forTimeInterval: 0.01)
            }
            // 待機条件をクリアしたので通過後の処理を行います。
            DispatchQueue.main.async {
                compleation()
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
