//
//  SceneDelegate.swift
//  Restaurant
//
//  Created by Андрей on 10.07.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var orderTabBarItem: UITabBarItem!
    
    @objc func updateOrderBadge() {
        let count = OrderManager.shared.order.menuItems.count
        orderTabBarItem.badgeValue = 0 < count ? "\(count)" : nil
    }
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        let tabBarController = window!.rootViewController as? UITabBarController
        orderTabBarItem = tabBarController?.viewControllers![1].tabBarItem
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(updateOrderBadge),
            name: OrderManager.orderUpdatedNotification,
            object: nil
        )
        
    }
}

