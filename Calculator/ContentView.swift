//
//  ContentView.swift
//  Calculator
//
//  Created by kuanwei on 2021/6/12.
//

import SwiftUI

let scale = UIScreen.main.bounds.width / 414

struct ContentView: View {

    var body: some View {
        VStack(spacing: 12) {
            Spacer()
            Text("0")
                .font(.system(size: 76))
                .minimumScaleFactor(0.5)
                .padding(.trailing, 24 * scale)
                .lineLimit(1)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
            CalculatorButtonPad()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewDevice("iPhone SE (2nd generation)")
        ContentView().previewDevice("iPad Air (3rd generation)")
    }
}
