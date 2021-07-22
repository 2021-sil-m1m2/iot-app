//
//  PlanterViewController.swift
//  iot-app
//
//  Created by yokada on 2021/05/18.
//

import Amplify
import AmplifyPlugins
import AWSMobileClient
import AWSS3
import UIKit
import AWSAppSync

class PlanterViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var clientidLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var records: [Record] = []
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
    }

    func listRecords() {
        /*
        let record = Record.keys
        //let predicate = record.planterID == "test_planter2" && record.temperature == 24.1
        let predicate = record.planterID == "test_planter"
   
        Amplify.API.query(request: .paginatedList(Record.self, where: predicate, limit: 1000)) { event in
            
            switch event {
            case .success(let result):
                switch result {
                case .success(let records):
                    print("Successfully retrieved list of todos: \(records)")
                    self.records.append(contentsOf: records)
                case .failure(let error):
                    print("Got failed result with \(error.errorDescription)")
                }
            case .failure(let error):
                print("Got failed event with error \(error)")
            }

            //print(self.records.sort())
            //print(self.records[0].date?.sorted())
            //self.records.plan.sort()
            
            //let filter = SearchableRecordFilterInput.init(planterId: )
            let filter = SearchableRecordFilterInput.init(date: "tre")
         
            SearchRecordsQuery(filter: filter, sort: <#T##SearchableRecordSortInput?#>, limit: <#T##Int?#>, nextToken: <#T##String?#>, from: <#T##Int?#>)

        }
        */
    
        // これ惜しい気がする
//        let searchIDFilter = SearchableIDFilterInput.init(eq: "test_planter")
//        let searchRecordFilter = SearchableRecordFilterInput.init(planterId: searchIDFilter)
//        print(SearchRecordsQuery(filter: searchRecordFilter))
        
//        let searchFieldSort = SearchableRecordSortableFields.init(rawValue: "createdAt")
//        let searchDirectionSort = SearchableSortDirection.init(rawValue: "asc")
//        let searchSort = SearchableRecordSortInput.init(field: searchFieldSort, direction: searchDirectionSort)
//        print("ソートした結果")
//        print(SearchRecordsQuery(sort: searchSort))
        
//        let filter: [String: Any] = [
//            "name": [
//                "matchPhrase": "first"
//            ]
//        ]
        
//        Amplify.API.query(request: .search(Record.self,
//                                           filter: filter,
//                                           limit: 1000,
//                                           sort: QuerySortBy.ascending(Record.keys.id)))
        // このAmplify.API..の形を使う？
//        let record = Record.keys
//        let planterID = "test_planter"
        
        //Amplify.API.query(request: .paginatedList(Record.self)){ event in
        //Amplify.API.query(request: .query(modelName: "SearchRecordsQuery", byId: "planterID")){ event in
        //Amplify.API.query(request: .get(Record.self, byId: planterID)){ result in
//        Amplify.API.query(request: .search){
//            switch result {
//            case .failure(let error):
//                print("Got failed event with error \(error)")
//                return
//            case .success(let user):
//                print(user)
//                return
//            }
//
//        }
    }
    
    @IBAction func queryRecord(_ sender: Any) {
        // DynamoDB内のデータを検索する
        let record = Record.keys
        let predicate = record.planterID == "test_planter"
            //&& todo.description == "todo description"
            Amplify.API.query(request: .paginatedList(Record.self, where: predicate, limit: 1000)) { event in
                switch event {
                case .success(let result):
                    switch result {
                    case .success(let records):
                        print("Successfully retrieved list of records: \(records)")
                        self.records.append(contentsOf: records)
                    case .failure(let error):
                        print("Got failed result with \(error.errorDescription)")
                    }
                case .failure(let error):
                    print("Got failed event with error \(error)")
                }
            }
    }
    
    @IBAction func showRecords(_ sender: Any) {
        print("配列recordsを表示します")
        for record in records{
            print("\(record)\n")
        }
        
        self.records.sort {
            $0.date < $1.date
        }
        
        print("ソート後の配列recordsを表示します")
        for record in records{
            print("\(record)\n")
        }
        
    }
    
    @IBAction func uploadDataToS3(_ sender: Any) {
//        let dataString = "My Data"
//        let data = dataString.data(using: .utf8)!
        
        // 画像データ
        // guard let data = UIImage(named: "sample")?.pngData()
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

        // ダウンロードした画像を表示する
        imageView.image = UIImage(named: downloadToFileName.path)

    }
    
}
