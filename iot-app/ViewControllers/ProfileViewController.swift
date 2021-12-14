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
    @IBOutlet weak var changePlanterIDButton: UIButton!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var appSyncClient: AWSAppSyncClient?
    
    var timer : Timer!
    
    var planters: [Planter] = []
    
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
        
        // changePlanterIDButtonを非表示にする（実装予定）
        changePlanterIDButton.isHidden = true
    }

    @objc func setUser(_ sender: Timer) {
        // appDelegateの変数にplanterNameとemailが格納されているか
        print(appDelegate.planterName)
        print(appDelegate.email)
        if appDelegate.email != "取得中です" {
            planterIDLabel.text = appDelegate.planterName
            emailLabel.text = appDelegate.email
            if appDelegate.planterName == "取得中です" {
                planterIDLabel.text = "未設定"
                appDelegate.planterName = "未設定"
            }
            timer.invalidate()
            print("ユーザ情報の取得が完了したのでタイマーを終了")
        } else{
            print("3秒おきにユーザ情報を取得")
        }
    }
    
    // planterId（name）を新規登録する
    @IBAction func registerPlanterID(_ sender: Any) {
        
        var alertTextField: UITextField?
        let alert = UIAlertController(
            title: "PlanterNameを登録する",
            message: "ラズパイのシールを確認してください",
            preferredStyle: UIAlertController.Style.alert)
        alert.addTextField(
            configurationHandler: {(textField: UITextField!) in
                alertTextField = textField
        })
        alert.addAction(
            UIAlertAction(
                title: "キャンセル",
                style: UIAlertAction.Style.cancel,
                handler: nil))
        // alertの登録ボタンが押された時の処理
        alert.addAction(
            UIAlertAction(
                title: "登録",
                style: UIAlertAction.Style.default) { _ in
                if let text = alertTextField?.text {
//                    self.label1.text = text
                    self.appDelegate.planterName = text
                    print("入力された文字列を表示します")
                    print(self.appDelegate.planterName)
                    
                    print("registerPlanterIdを実行します")
                    print(self.appDelegate.userid)
                    print(self.appDelegate.planterName)
                    print(self.appDelegate.email)
                    // CreateToDoInput関数：入力パラメータを作成
                    let mutationInput = CreatePlanterInput(name: self.appDelegate.planterName, userId: self.appDelegate.userid)

                    // CreateTodoMutation関数：
                    // AppSyncのcreateTodoに設定されているresolverを実行し，DynamoDBにデータを追加する
                    self.appSyncClient?.perform(mutation: CreatePlanterMutation(input: mutationInput), resultHandler:  { (result, error) in
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
                    
            }
        )
        self.present(alert, animated: true, completion: nil)
    }
    
    // changePlanterIDは後回し
    // ログインしているユーザのplanterIdを取得する
//    func getPlanter() {
//        // DynamoDB内のデータを検索する
//        let planter = Planter.keys
////        let predicate = planter.userID == "b6a130fe-ed4f-49fd-9c71-e6537351a4ad"
//        let predicate = planter.id == "84e057c9-4969-4fe9-9697-c3cdbc95039f"
//            Amplify.API.query(request: .paginatedList(Planter.self, where: predicate, limit: 1000)) { event in
//                switch event {
//                case .success(let result):
//                    switch result {
//                    case .success(let planters):
//                        print("Successfully retrieved list of records: \(planters)")
//                        self.planters.append(contentsOf: planters)
//                    case .failure(let error):
//                        print("Got failed result with \(error.errorDescription)")
//                    }
//                case .failure(let error):
//                    print("Got failed event with error \(error)")
//                }
//            }
//
//    }
//
//    // planterId（name）を変更する
//    @IBAction func changePlanterID(_ sender: Any) {
//
//        // getPlanter()
//
//        // 0.5秒後ではなく、処理完了後にしたい
//        // planterIdの取得（getPlanterId）に時間がかかるため、0.5秒後に処理する
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//            // 0.5秒後に実行したい処理
//            print("plantersの中身を表示する")
//            print(self.planters[0].id)
//            self.appDelegate.planterid = self.planters[0].id
//            print(self.appDelegate.planterid)
//
//            // planterNameを変更する
////            var planter = Planter(id: self.appDelegate.planterid, name: "new_name_2", userID: self.appDelegate.userid)
//            let planternew = Planter(name: "new_name_3", userID: self.appDelegate.userid)
//            Amplify.API.mutate(request: .update(planternew)) { event in
//                switch event {
//                case .success(let result):
//                    switch result {
//                    case .success(let planter):
//                        print("Successfully created planter: \(planter)")
//                    case .failure(let error):
//                        print("Got failed result with \(error.errorDescription)")
//                    }
//                case .failure(let error):
//                    print("Got failed event with error \(error)")
//                }
//            }
//        }
//
//    }
    
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
