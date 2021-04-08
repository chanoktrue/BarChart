//
//  ContentView.swift
//  chart
//
//  Created by Thongchai Subsaidee on 8/4/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    let entries = Transaction.dataEntriesForYear(year: 2021, transactions: Transaction.allTransactions)
    
    var body: some View {
        ChartView(entries: entries)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
