//
//  Order.swift
//  Restaurant
//
//  Created by Андрей on 11.07.2022.
//

import Foundation

struct Order {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
