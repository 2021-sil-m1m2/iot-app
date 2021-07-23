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

var xAxisValues = [String]()
var yAxisValues = [Double]()

class GraphViewController: UIViewController {
    var records: [Record] = []
    
    var chart: CombinedChartView!
    var lineDataSet: LineChartDataSet!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // planterIDに一致するレコードを取得し、ソートする
        listRecords()
    }
    
    func listRecords() {
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
                        self.sortRecords()
                    case .failure(let error):
                        print("Got failed result with \(error.errorDescription)")
                    }
                case .failure(let error):
                    print("Got failed event with error \(error)")
                }
            }
        
    }

    func sortRecords() {
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
    
    func drawGraph() {
        let rect = CGRect(x:40, y: 180, width: 300, height: 200)
        let chartView = LineChartView(frame: rect)
        var dataSets = [LineChartDataSet]()

        let entries = yAxisValues.enumerated().map{ ChartDataEntry(x: Double($0.offset), y: $0.element) }
        let dataSet = LineChartDataSet(entries: entries, label: "label")
        dataSets.append(dataSet)
        chartView.data = LineChartData(dataSets: dataSets as [IChartDataSet])

        let formatter = ChartFormatter()
        chartView.xAxis.valueFormatter = formatter
        
        // 凡例を表示しない
        chartView.legend.enabled = false
        
        // グラフの線の色を設定する
        dataSet.colors = [UIColor.Pallet.green]
    
        // プロットの色と大きさを設定する
        dataSet.circleColors = [UIColor.Pallet.green]
        dataSet.fillColor = UIColor.Pallet.green
        dataSet.circleRadius = 4.0

//        //labelCountはChartDataEntryと同じ数だけ入れます。
//        chartView.xAxis.labelCount = 12
//        //granularityは1.0で固定
//        chartView.xAxis.granularity = 1.0

        self.view.addSubview(chartView)
    }
    
    @IBAction func formatDate(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSSSSS"
        var date = dateFormatter.date(from: records[1].date)
        print(date)
        let timeInerval = date?.timeIntervalSince1970
        var datemilli = convertToMilli(timeIntervalSince1970: timeInerval!)
        print(datemilli)
        var datedate = convertMilliToDate(milliseconds: Int64(datemilli))
        print(datedate)
    }
    
    func convertToMilli(timeIntervalSince1970: TimeInterval) -> Int64 {
        return Int64(timeIntervalSince1970 * 1000)
    }
    
    func convertMilliToDate(milliseconds: Int64) -> Date {
        return Date(timeIntervalSince1970: (TimeInterval(milliseconds) / 1000))
    }
    
    @IBAction func dayGraph(_ sender: Any) {
        
        // 一度空にする
        xAxisValues = []
        yAxisValues = []
        
        // dateでのフィルター
        print("6月26日のデータのみを表示します")
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = TimeZone(identifier: "Asia/Tokyo")!
        calendar.locale = .current
        
        // 現在の日時を設定する
        let date = Date()
        let comps = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        let condition = calendar.date(from: DateComponents(year: comps.year, month: comps.month, day: comps.day, hour: nil, minute: nil, second: nil))!
        
        for record in records{
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSSSSS"
            var date = dateFormatter.date(from: record.date)!

            if calendar.isDate(date, inSameDayAs: condition){
                xAxisValues.append(record.date)
                yAxisValues.append(record.temperature!)
            }
        }
        
        print("格納が完了しました")
        print(xAxisValues)
        print(yAxisValues)
        
        drawGraph()
    }
 
    @IBAction func drawGraph_humidity(_ sender: Any) {

    }
 
}

class ChartFormatter: NSObject, IAxisValueFormatter {

    func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        //granularityを１.０、labelCountを１２にしているおかげで引数のvalueは1.0, 2.0, 3.0・・・１１.０となります。
        let index = Int(value)
        return xAxisValues[index]
    }

}
