//
//  AppleFrameworksApp.swift
//  AppleFrameworks
//
//  Created by Junior Leoncio on 27/09/24.
//

import SwiftUI

@main
struct AppleFrameworksApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                FrameworkGridView()
            }
            .accentColor(Color(.label))
        }
    }
}
