//
//  GraphViewController.swift
//  iot-app
//
//  Created by yokada on 2021/07/23.
//

import Charts
import UIKit
import Amplify
import AmplifyPlugins
import AWSMobileClient
import AWSS3
import AWSAppSync

class GraphViewController: UIViewController {
    var records: [Record] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var rect = view.bounds
        rect.origin.y += 20
        rect.size.height -= 20
//        var barChartView = BarChartView(frame: rect)
        //グラフのサイズ設定、座標設定
        // 折れ線グラフ
        let temperatureView = LineChartView(frame: CGRect(x: 40, y: 180, width: 300, height: 250))
//        let humiditiesView = LineChartView(frame: CGRect(x: 40, y: 530, width: 300, height: 250))
        // 棒グラフ
//        var barChartView = BarChartView(frame: CGRect(x: 40, y: 180, width: 300, height: 250))
        
        // グラフに複数の軸を設定する
//        barChartView.rightAxis.axisMaximum = 400
//        barChartView.leftAxis.axisMaximum = 40
        
        let entry = [
            BarChartDataEntry(x: 50, y: 130),
            BarChartDataEntry(x: 100, y: 120),
            BarChartDataEntry(x: 150, y: 140),
            BarChartDataEntry(x: 200, y: 110),
            BarChartDataEntry(x: 250, y: 150)
        ]
        
        let entry2 = [
            BarChartDataEntry(x: 110, y: 130),
            BarChartDataEntry(x: 110, y: 120),
            BarChartDataEntry(x: 130, y: 140),
            BarChartDataEntry(x: 130, y: 110),
            BarChartDataEntry(x: 150, y: 130)
        ]
        
        let set = LineChartDataSet(entries: entry, label: "Data")
        let set2 = LineChartDataSet(entries: entry2, label: "Data2")
        
//        let lineChartData = LineChartData(dataSets: [set, set2])
//        temperatureView.data = LineChartData(dataSets: lineChartData as! [IChartDataSet])
        
        temperatureView.data = LineChartData(dataSet: set)
//        temperatureView.data = LineChartData(dataSet: set2)
        view.addSubview(temperatureView)
    
    }
    
    @IBAction func listRecords(_ sender: Any) {
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
    
    @IBAction func sortRecords(_ sender: Any) {
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
