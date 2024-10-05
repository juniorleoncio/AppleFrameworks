//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Junior Leoncio on 27/09/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        List {
            ForEach(MockData.frameworks) { framework in
                NavigationLink(value: framework) {
                    FrameworkTitleView(framework: framework)
                }
                    
            }
            
        }
        .navigationTitle("🍏 Frameworks")
        .navigationDestination(for: Framework.self) { framework in
            FrameworkDetailView(framework: framework)
        }
        
    }
    
}





#Preview {
    NavigationStack {
        FrameworkGridView()
    }
  
}
