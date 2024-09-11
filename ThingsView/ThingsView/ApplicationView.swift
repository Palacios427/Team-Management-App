//
//  ApplicationView.swift
//  ThingsView
//
//  Created by Alumno on 10/09/24.
//

import SwiftUI

struct ApplicationView: View {
    
    @State var selectedTab: Int = 2
    @EnvironmentObject private var profile: Profile
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab){
                
                QuestsView()
                    .tabItem { Label("Quests", systemImage: "book") }
                    .tag(0)
                
                QuestBoardsView()
                    .tabItem { Label("QuestBoard", systemImage: "building.columns") }
                    .tag(1)
                
                HomeView()
                    .tabItem { Label("Home", systemImage: "house") }
                    .tag(2)
                
                StatsView()
                    .tabItem { Label("Stats", systemImage: "star") }
                    .tag(3)
                
                ProfileView()
                    .tabItem { Label("Profile", systemImage: "person.crop.circle") }
                    .tag(4)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text(headerTitle()) // Show the title in the toolbar
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
            } // toolbar end
            .toolbarBackground(Color.green, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarTitleDisplayMode(.inline)
        }
    }
    
    func headerTitle() -> String {
        switch selectedTab {
            case 0:
                return "Quests"
            case 1:
                return "Quest Board"
            case 2:
                return "Home"
            case 3:
                return "Stats"
            case 4:
                return "Profile"
            default:
                return "ERROR"
        }
    }
}

#Preview {
    ApplicationView()
        .environment(Profile.defaultValue)
}
