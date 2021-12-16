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
import AWSPluginsCore

class PlanterViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var planterNameLabel: UILabel!
    @IBOutlet weak var planteridLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var moistureLabel: UILabel!
    
    var records: [Record] = []
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var temperature = 0.0
    var humidity = 0.0
    var moisture = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        planteridLabel.text = appDelegate.planterid
        planterNameLabel.text = appDelegate.planterName
        
        // プランターの最新情報を取得し、表示する
        listRecordsofPlanter()
    }
    
    func listRecordsofPlanter() {
        // planteridを用いて最新情報を取得する
        print(appDelegate.planterid)
        let record = Record.keys
        let predicate = record.planterID == appDelegate.planterid

        Amplify.API.query(request: .paginatedList(Record.self, where: predicate, limit: 1000)) { event in
            switch event {
            case .success(let result):
                switch result {
                    case .success(let records):
                        print("Successfully retrieved list of planters: \(records)")
                        self.records.append(contentsOf: records)
                        
                        for record in records{
                            print("\(record)\n")
                        }
                    
                        DispatchQueue.main.async {
                            // メインスレッドで実行 UIの処理など
                            if !records.isEmpty {
                                self.temperatureLabel.text = self.records[0].temperature?.description
                                self.humidityLabel.text = self.records[0].humidity?.description
                                self.moistureLabel.text = self.records[0].moisture?.description
                            } else {
                                self.temperatureLabel.text = "データがありません"
                                self.humidityLabel.text = "データがありません"
                                self.moistureLabel.text = "データがありません"
                            }

                        }
                    case .failure(let error):
                        print("Got failed result with \(error.errorDescription)")
                }
                case .failure(let error):
                    print("Got failed event with error \(error)")
            }

        }
    }
    
    @IBAction func queryRecord(_ sender: Any) {
//        // DynamoDB内のデータを検索する
//        let record = Record.keys
//        let predicate = record.planterID == "test_planter"
//            //&& todo.description == "todo description"
//            Amplify.API.query(request: .paginatedList(Record.self, where: predicate, limit: 1000)) { event in
//                switch event {
//                case .success(let result):
//                    switch result {
//                    case .success(let records):
//                        print("Successfully retrieved list of records: \(records)")
//                        self.records.append(contentsOf: records)
//                    case .failure(let error):
//                        print("Got failed result with \(error.errorDescription)")
//                    }
//                case .failure(let error):
//                    print("Got failed event with error \(error)")
//                }
//            }
//        listRecords()
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

//struct AppSyncSearchResponse<Element: Model>: Codable {
//    let items: [Element]
//    let nextToken: String?
//    let total: Int?
//}
//
//extension GraphQLRequest {
//    static func search<M: Model>(_ modelType: M.Type,
//                                 filter: [String: Any]? = nil,
//                                 from: Int? = nil,
//                                 limit: Int? = nil,
//                                 nextToken: String? = nil,
//                                 sort: QuerySortBy? = nil) -> GraphQLRequest<AppSyncSearchResponse<M>> {
//        let name = modelType.modelName
//        let documentName = "search" + name + "s"
//        var variables = [String: Any]()
//        if let filter = filter {
//            variables.updateValue(filter, forKey: "filter")
//        }
//        if let from = from {
//            variables.updateValue(from, forKey: "from")
//        }
//        if let limit = limit {
//            variables.updateValue(limit, forKey: "limit")
//        }
//        if let nextToken = nextToken {
//            variables.updateValue(nextToken, forKey: "nextToken")
//        }
//        if let sort = sort {
//            switch sort {
//            case .ascending(let field):
//                let sort = [
//                    "direction": "asc",
//                    "field": field.stringValue
//                ]
//                variables.updateValue(sort, forKey: "sort")
//            case .descending(let field):
//                let sort = [
//                    "direction": "desc",
//                    "field": field.stringValue
//                ]
//                variables.updateValue(sort, forKey: "sort")
//            }
//        }
//        let graphQLFields = modelType.schema.sortedFields.filter { field in
//            !field.hasAssociation || field.isAssociationOwner
//        }.map { (field) -> String in
//            field.name
//        }.joined(separator: "\n      ")
//        let document = """
//        query \(documentName)($filter: Searchable\(name)FilterInput, $from: Int, $limit: Int, $nextToken: String, $sort: Searchable\(name)SortInput) {
//          \(documentName)(filter: $filter, from: $from, limit: $limit, nextToken: $nextToken, sort: $sort) {
//            items {
//              \(graphQLFields)
//            }
//            nextToken
//            total
//          }
//        }
//        """
//        return GraphQLRequest<AppSyncSearchResponse<M>>(document: document,
//                                                        variables: variables.isEmpty != false ? variables : nil,
//                                                        responseType: AppSyncSearchResponse<M>.self,
//                                                        decodePath: documentName)
//    }
//}
