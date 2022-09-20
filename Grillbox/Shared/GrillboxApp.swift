//
//  GrillboxApp.swift
//  Grillbox
//
//  Created by Admin on 21.09.2022.
//

import UI
import SwiftUI

@main
struct GrillboxApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                RootView()
                    .background(Color.red)
                    .navigationTitle("")
                    .navigationBarHidden(true)
            }
            .navigationViewStyle(.stack)
        }
    }
}
