//
//  ViewController.swift
//  iot-app
//
//  Created by yokada on 2021/05/18.
//

import UIKit
import AWSMobileClient
import AWSS3
import Amplify
import AmplifyPlugins

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
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
    
    
    @IBAction func uploadDataToS3(_ sender: Any) {
//        let dataString = "My Data"
//        let data = dataString.data(using: .utf8)!
        
        // 画像データ
        //guard let data = UIImage(named: "sample")?.pngData()
        guard let data = UIImage(named: "wheeler")?.pngData() else {
            print("イメージをPNGデータに変換できませんでした。")
            return
        }

        // access levelを指定
        // let options = StorageUploadDataRequest.Options(accessLevel: .protected)
        let options = StorageUploadDataRequest.Options(accessLevel: .private)
        
        Amplify.Storage.uploadData(key: "wheeler.jpeg", data: data, options: options) { progress in
                print("Progress: \(progress)")
        } resultListener: { event in
            switch event {
            case .success(let data):
                print("Completed: \(data)")
            case .failure(let storageError):
                print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
            }
        }
    
        /*
        // public level
        Amplify.Storage.uploadData(
            key: "ExampleKey",
            data: data,
            progressListener: { progress in
                print("Progress: \(progress)")
            }, resultListener: { event in
                switch event {
                case .success(let data):
                    print("Completed: \(data)")
                case .failure(let storageError):
                    print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
                }
            }
        )
        */
    }
       
    @IBAction func downloadFileFromS3(_ sender: Any) {
        
        let options = StorageDownloadFileRequest.Options(accessLevel: .private)
        
        let downloadToFileName = FileManager.default.urls(for: .documentDirectory,
                                                          in: .userDomainMask)[0]
            .appendingPathComponent("wheeler.jpeg")

        Amplify.Storage.downloadFile(
            key: "wheeler.jpeg",
            local: downloadToFileName,
            options: options,
            progressListener: { progress in
                print("Progress: \(progress)")
            }, resultListener: { event in
                switch event {
                case .success:
                    print("Completed")
                case .failure(let storageError):
                    print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
                }
            })

        imageView.image = UIImage(named: downloadToFileName.path)

    }
    
    
}

