//
//  CalculatorButtonRow.swift
//  Calculator
//
//  Created by kuanwei on 2021/6/12.
//

import SwiftUI

struct CalculatorButtonRow: View {

    let row: [CalculatorButtonItem]

    var body: some View {

        HStack {
            ForEach(row, id: \.self) { item in
                CalculatorButton(
                    title: item.title,
                    size: item.size,
                    backgroundColorName: item.backgroundColorName) {
                    print("Button: \(item.title)")
                }
            }
        }
    }
}
