//
//  CalculatorButtonItem.swift
//  Calculator
//
//  Created by kuanwei on 2021/6/12.
//

import Foundation
import UIKit

enum CalculatorButtonItem {
    enum Op: String {
        case plus = "+"
        case minus = "-"
        case divide = "/"
        case multiply = "x"
        case equal = "="
    }

    enum Command: String {
        case clear = "AC"
        case flip = "+/-"
        case percent = "%"
    }

    case digit(Int)
    case dot
    case op(Op)
    case command(Command)
}

extension CalculatorButtonItem {
    var title: String {
        switch self {
        case .digit(let value):
            return String(value)
        case .dot:
            return "."
        case .op(let op):
            return op.rawValue
        case .command(let command):
            return command.rawValue
        }
    }

    var size: CGSize {
        if case .digit(let value) = self, case value = 0 {
            return CGSize(width: 80 * 2 + 8, height: 80)
        }
        return CGSize(width: 80, height: 80)
    }

    var backgroundColorName: String {
        switch self {
        case .digit, .dot: return "digitBackground"
        case .op: return "operatorBackground"
        case .command: return "commandBackground"
        }
    }
}

extension CalculatorButtonItem: Hashable {}
