//
//  OrderManager.swift
//  Restaurant
//
//  Created by Андрей on 11.07.2022.
//

import Foundation

class OrderManager {
    static let orderUpdatedNotification = Notification.Name("OrderManager.orderUpdated")
    
    static var shared = OrderManager()
    
    private init() {}
    
    var order = Order() {
        didSet {
            NotificationCenter.default.post(name: OrderManager.orderUpdatedNotification, object: nil)
        }
    }
}
