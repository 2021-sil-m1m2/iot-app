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

class ProfileViewController: UIViewController {

    @IBOutlet weak var planterIDLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        planterIDLabel.text = appDelegate.planterID
        emailLabel.text = appDelegate.email
    }
    
//    func updateTodo() {
//        // Retrieve your Todo using Amplify.API.query
//        var todo = Todo(name: "my first todo", description: "todo description")
//        var newProfile = Planter(id: "new planterID", userID: <#T##String#>, user: <#T##User?#>)
//        todo.description = "updated description"
//        Amplify.API.mutate(request: .update(todo)) { event in
//            switch event {
//            case .success(let result):
//                switch result {
//                case .success(let todo):
//                    print("Successfully created todo: \(todo)")
//                case .failure(let error):
//                    print("Got failed result with \(error.errorDescription)")
//                }
//            case .failure(let error):
//                print("Got failed event with error \(error)")
//            }
//        }
//    }
    
//    func fetchDynamoDBData(){
//        let dynamoDBObjectMapper = AWSDynamoDBObjectMapper.default()
//        let scanExpression = AWSDynamoDBScanExpression()
//
//        dynamoDBObjectMapper.scan(Planters.self, expression: scanExpression).continueWith(){ (task: AWSTask<AWSDynamoDBPaginatedOutput>!) -> Void in
//            guard let items = task.result?.items as? [Planters] else {return}
//            if let error = task.error as NSError?{
//                print("The request failed. Error: \(error)")
//                return
//            }
//
//
////            print(items[0].username)
////            print(items.count)
//
//            for index in 0 ..< items.count{
//                if items[index].id == self.appDelegate.planterID{
//                    self.appDelegate.userid = items[index].id
//                    print(self.appDelegate.userid)
//                }
//            }
//        }
//
//    }
    
    @IBAction func changePlanterID(_ sender: Any) {
        print("emailを表示する")
        print(appDelegate.email)
//        print("fetchDynamoを実行し、useridを表示する")
//        fetchDynamoDBData()
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
