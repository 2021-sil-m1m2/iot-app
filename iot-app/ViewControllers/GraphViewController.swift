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
    
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // planterIDに一致するレコードを取得し、ソートする
        listRecords()
        print("recordsの中身を表示する")
        print(records)
    }
    
    func listRecords() {
        // DynamoDB内のデータを検索する
        let record = Record.keys
        let predicate = record.planterID == "test_planter4"
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
        
        //x軸ラベルの表示数を設定する
        chartView.xAxis.labelCount = xAxisValues.count - 1
        
        // x右軸を表示しない
        chartView.rightAxis.enabled = false
        
        // 凡例を表示しない
        chartView.legend.enabled = false
        
        // グラフの線の色を設定する
        dataSet.colors = [UIColor.Pallet.green]
    
        // プロットの色と大きさを設定する
        dataSet.circleColors = [UIColor.Pallet.green]
        dataSet.fillColor = UIColor.Pallet.green
        dataSet.circleRadius = 4.0
        
        //x軸のラベルを下側に表示する
        chartView.xAxis.labelPosition = .bottom

        //軸ラベルのフォントサイズを設定する
        chartView.xAxis.labelFont = UIFont.systemFont(ofSize: 7)
        chartView.leftAxis.labelFont = UIFont.systemFont(ofSize: 7)
        
        self.view.addSubview(chartView)
    }
    
    @IBAction func weekGraph(_ sender: Any) {
        // 一度空にする
        xAxisValues = []
        yAxisValues = []
        
        // dateでのフィルター（当日から-6日まで遡って平均値を算出する）
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = TimeZone(identifier: "Etc/GMT")!
        calendar.locale = Locale(identifier: "ja_JP")
        
        // currentに現在の日時を設定する
        print("日時を表示します")
        let dateFormatter = DateFormatter()
        var current = Date()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        var currentstring = dateFormatter.string(from: current)
        dateFormatter.timeZone = TimeZone(identifier: "Etc/GMT")
        var currentdate = dateFormatter.date(from: currentstring)
        var comps = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: currentdate!)
        var condition = calendar.date(from: DateComponents(year: comps.year, month: comps.month, day: comps.day, hour: nil, minute: nil, second: nil))!
        
        // conditionsに7日分の日程を格納する
        var conditions = [Date]()
        var index: Int = 0
        while index < 7 {
            conditions.append(condition)
            condition = Calendar.current.date(byAdding: .day, value: -1, to: condition)!
            index += 1
        }
        
        // conditionsをソートする
        conditions.sort {
            $0 < $1
        }
        print(conditions)
        
        // xAxisにconditionsを格納する
        for condition in conditions {
            dateFormatter.dateFormat = "dd日"
            xAxisValues.append(dateFormatter.string(from: condition))
        }
        print(xAxisValues)
        
        // conditionsに格納された各日程の平均値を求める
//        var averages = [Double]()
        var sum: Double = 0
        var count: Double = 0
        var average: Double = 0
        for condition in conditions {
            sum = 0
            count = 0
            average = 0
            for record in records {
                dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
                let date = dateFormatter.date(from: record.date)
                if calendar.isDate(date!, inSameDayAs: condition){
                    sum += record.temperature!
                    count += 1
                }
            }
            if count == 0 {
                average = 0
            } else {
                average = sum/count
            }
            yAxisValues.append(average)
        }
        print("格納が完了しました")
        print(xAxisValues)
        print(yAxisValues)
        
        drawGraph()
    }
    
    @IBAction func dayGraph(_ sender: Any) {
        // 一度空にする
        xAxisValues = []
        yAxisValues = []
        
        // dateでのフィルター
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = TimeZone(identifier: "Etc/GMT")!
        calendar.locale = Locale(identifier: "ja_JP")
        
        // currentに現在の日時を設定する
        print("日時を表示します")
        let dateFormatter = DateFormatter()
        var current = Date()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        var currentstring = dateFormatter.string(from: current)
        dateFormatter.timeZone = TimeZone(identifier: "Etc/GMT")
        var currentdate = dateFormatter.date(from: currentstring)
        var comps = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: currentdate!)
        let condition = calendar.date(from: DateComponents(year: comps.year, month: comps.month, day: comps.day, hour: nil, minute: nil, second: nil))!
        print("condition")
        print(condition)
        
        for record in records{
            dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            let date = dateFormatter.date(from: record.date)
            print(date)
            if calendar.isDate(date!, inSameDayAs: condition){
                dateFormatter.dateFormat = "HH:mm"
                xAxisValues.append(dateFormatter.string(from: date!))
                yAxisValues.append(record.temperature!)
            }
        }
        
        print("格納が完了しました")
        print(xAxisValues)
        print(yAxisValues)
        
        // dateLabelに日付を表示する
        dateFormatter.dateFormat = "yMMdd"
        dateLabel.text = dateFormatter.string(from: current)
        
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
