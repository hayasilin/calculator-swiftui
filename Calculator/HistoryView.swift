//
//  HistoryView.swift
//  Calculator
//
//  Created by kuanwei on 2021/6/13.
//

import SwiftUI

struct HistoryView: View {
    @ObservedObject var model: CalculatorModel

    var body: some View {
        VStack {
            if model.totalCount == 0 {
                Text("No history")
            } else {
                HStack {
                    Text("History").font(.headline)
                    Text("\(model.historyDetail)").lineLimit(nil)
                }
                HStack {
                    Text("Display").font(.headline)
                    Text("\(model.brain.output)")
                }
                Slider(
                    value: $model.slidingIndex,
                    in: 0...Float(model.totalCount),
                    step: 1
                )
            }
        }.padding()
    }
}
