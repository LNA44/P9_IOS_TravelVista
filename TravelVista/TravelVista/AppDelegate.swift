//
//  AppDelegate.swift
//  TravelVista
//
//  Created by Amandine Cousin on 13/12/2023.
//

import UIKit
import SwiftUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
		let listView = UIHostingController(rootView: ListView())
		window?.rootViewController = listView
        return true
    }
}

