//
//  Transactions.swift
//  chart
//
//  Created by Thongchai Subsaidee on 8/4/2564 BE.
//

import Charts
import SwiftUI

struct Transaction {
    var yesr: Int
    var month: Double
    var quantity: Double
    
    static var allTransactions: [Transaction] {
        return [
            Transaction(yesr: 2021, month: 1, quantity: 86),
            Transaction(yesr: 2021, month: 2, quantity: 15),
            Transaction(yesr: 2021, month: 3, quantity: 50),
            Transaction(yesr: 2021, month: 4, quantity: 62),
            Transaction(yesr: 2021, month: 5, quantity: 20),
            Transaction(yesr: 2021, month: 6, quantity: 19),
            Transaction(yesr: 2021, month: 7, quantity: 72),
            Transaction(yesr: 2021, month: 8, quantity: 52),
            Transaction(yesr: 2021, month: 9, quantity: 53),
            Transaction(yesr: 2021, month: 10, quantity: 75),
            Transaction(yesr: 2021, month: 11, quantity: 20),
            Transaction(yesr: 2021, month: 12, quantity: 90)
        ]
    }
    
    static func dataEntriesForYear(year: Int, transactions: [Transaction]) -> [BarChartDataEntry] {
        let yearTransactions = transactions.filter({$0.yesr == year})
        return yearTransactions.map({BarChartDataEntry(x: $0.month, y: $0.quantity)})
    }
}
