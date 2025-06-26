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
		let service = Service()
		// Charge les régions depuis Source.json
		let regions: [Region] = service.load("Source.json")
		let listView = UIHostingController(rootView: ListView(regions: regions))
		window?.rootViewController = listView
        return true
    }
}

