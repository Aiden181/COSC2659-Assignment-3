//
//  MagzineApp.swift
//  Magzine
//
//  Created by Aiden Ly on 06/09/2022.
//

import SwiftUI
import Firebase

@main
struct MagzineApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
