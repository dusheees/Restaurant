//
//  PreparationTime.swift
//  Restaurant
//
//  Created by Андрей on 11.07.2022.
//

import Foundation

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
