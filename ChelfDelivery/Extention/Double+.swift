//
//  Double+.swift
//  ChelfDelivery
//
//  Created by Micael Santos Nascimento on 19/01/24.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formatString = String(format: "%.2f", self)
        return formatString.replacingOccurrences(of: ".", with: ",")
    }
}
