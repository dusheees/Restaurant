//
//  Double+Extesion.swift
//  Restaurant
//
//  Created by Андрей on 11.07.2022.
//

import Foundation

extension Double {
    var formattedHundreds: String {
        return String(format: "$%2.f", self)
    }
}
