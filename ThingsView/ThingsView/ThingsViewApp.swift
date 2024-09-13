//
//  ThingsViewApp.swift
//  ThingsView
//
//  Created by Alumno on 10/09/24.
//

import SwiftUI

@main
struct ThingsViewApp: App {
    
    @StateObject private var profileViewModel = ProfileViewModel()
    @StateObject private var questViewModel = QuestViewModel()

    var body: some Scene {
        WindowGroup {
            ApplicationView()
                .environmentObject(profileViewModel) // Provide ProfileViewModel as an environment object
                .environmentObject(questViewModel)
        }
    }
}
