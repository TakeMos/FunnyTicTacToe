//
//  TicTacToeApp.swift
//  TicTacToe
//
//  Created by kim kanghyeok on 8/28/24.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct TicTacToeApp: App {
    @StateObject private var coreDataStack = CoreDataStack.shared
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            LoginView()
                .environment(\.managedObjectContext, coreDataStack.persistentContainer.viewContext)
        }
    }
}
