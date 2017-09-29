//
//  ChartViewController.swift
//  Features
//
//  Created by Aleksander Evtuhov on 29/09/2017.
//  Copyright © 2017 Aleksander Evtuhov. All rights reserved.
//

import UIKit
import SwiftChart
import MBCircularProgressBar

class ChartViewController: UIViewController {

    @IBOutlet weak var chart: Chart!
    
    @IBOutlet weak var fines: UIView!
    
    @IBOutlet weak var fuel: MBCircularProgressBarView!
    
    @IBOutlet weak var agression: MBCircularProgressBarView!
    
    @IBOutlet weak var economy: MBCircularProgressBarView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        economy.value = 84
        agression.value = 24
        fuel.value = 23
        
        
        let data = [(x: 0.0, y: 68.0),
                    (x: 1.0, y: 60.0),
                    (x: 2.0, y: 50.0),
                    (x: 3.0, y: 20.0),
                    (x: 4.0, y: 10.0),
                    (x: 5.0, y: 40.0),
                    (x: 6.0, y: 30.0),
                    (x: 7.0, y: 20.0),
                    (x: 8.0, y: 10.0),
                    (x: 9.0, y: 40.0),
                    (x:10.0, y: 30.0)]
        
        let series = ChartSeries(data: data)
        series.area = true
        chart.xLabels = [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
        chart.xLabelsFormatter = { String(Int(round($1))) + "" }
        chart.add(series)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupUI(){
        agression.maxValue = 100
        economy.maxValue = 100
        fuel.maxValue = 68
        
        fuel.unitString = "L"
    }
    



}
