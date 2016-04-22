//
//  AnalyticsViewController.swift
//  Rabbitmail
//
//  Created by Shumail Mohy ud Din on 4/23/16.
//  Copyright © 2016 Rabbitmail. All rights reserved.
//

import UIKit
import Charts

class AnalyticsViewController: UIViewController {

    @IBOutlet var menuButton: UIBarButtonItem!
    @IBOutlet weak var barChartView: BarChartView!
    
    var months: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        let emailsSent = [10000, 4000, 6000, 3000, 12000, 1600, 4000, 1800, 2000, 4000, 5000, 4000.0]
        
        setChart(months, values: emailsSent)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setChart(dataPoints: [String], values: [Double]) {
        barChartView.noDataText = "You need to provide data for the chart."
        
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(yVals: dataEntries, label: "E-Mails Sent")
        let chartData = BarChartData(xVals: months, dataSet: chartDataSet)
        barChartView.data = chartData
        
    }
    
}
