//
//  ChartView.swift
//  chart
//
//  Created by Thongchai Subsaidee on 8/4/2564 BE.
//

import Charts
import SwiftUI

struct ChartView: UIViewRepresentable {
    
    let entries: [BarChartDataEntry]
    
    func makeUIView(context: Context) -> BarChartView {
        let barChart = BarChartView()
        return barChart
    }
    
    func updateUIView(_ uiView: BarChartView, context: Context) {
        let dataSet = BarChartDataSet(entries: entries)
        uiView.data = BarChartData(dataSet: dataSet)
    }
}

