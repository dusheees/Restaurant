//
//  AppDelegate.swift
//  Restaurant
//
//  Created by Андрей on 10.07.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let temporaryDirectory = NSTemporaryDirectory()
        let urlCach = URLCache(memoryCapacity: 25_000_000, diskCapacity: 50_000_000, diskPath: temporaryDirectory)
        URLCache.shared = urlCach
        return true
    }
}

