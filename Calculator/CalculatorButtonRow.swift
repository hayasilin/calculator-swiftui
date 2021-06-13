//
//  CalculatorButtonRow.swift
//  Calculator
//
//  Created by kuanwei on 2021/6/12.
//

import SwiftUI

struct CalculatorButtonRow: View {

    let row: [CalculatorButtonItem]

    @EnvironmentObject var model: CalculatorModel

    var body: some View {

        HStack {
            ForEach(row, id: \.self) { item in
                CalculatorButton(
                    title: item.title,
                    size: item.size,
                    backgroundColorName: item.backgroundColorName,
                    foregroundColor: item.foregroundColor
                ) {
                    self.model.apply(item)
                }
            }
        }
    }
}
