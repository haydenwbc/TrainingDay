//
//  TrainingDayApp.swift
//  TrainingDay
//
//  Created by user230964 on 4/22/23.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
@main
struct TrainingDayApp: App {
    var body: some Scene {
        WindowGroup {
                LoginView()
        }
    }
}
