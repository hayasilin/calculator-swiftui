//
//  ContentView.swift
//  Calculator
//
//  Created by kuanwei on 2021/6/12.
//

import SwiftUI
import Combine

let scale = UIScreen.main.bounds.width / 414

struct ContentView: View {

    @EnvironmentObject var model: CalculatorModel

    @State private var editingHistory = false

    var body: some View {
        VStack(spacing: 12) {
            Spacer()
            Button("History \(model.history.count)") {
                self.editingHistory = true
            }.sheet(isPresented: self.$editingHistory, content: {
                HistoryView(model: self.model)
            })
            Text(model.brain.output)
                .font(.system(size: 76))
                .minimumScaleFactor(0.5)
                .padding(.trailing, 24 * scale)
                .lineLimit(1)
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    alignment: .trailing
                )
            CalculatorButtonPad()
                .padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(CalculatorModel())
//        ContentView().previewDevice("iPhone SE (2nd generation)")
//        ContentView().previewDevice("iPad Air (3rd generation)")
    }
}
