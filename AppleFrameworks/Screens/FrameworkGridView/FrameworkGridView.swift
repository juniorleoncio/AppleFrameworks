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
                NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                    FrameworkTitleView(framework: framework)
                }
                    
            }
            
        }
        .navigationTitle("🍏 Frameworks")
        
    }
    
}





#Preview {
    NavigationStack {
        FrameworkGridView()
    }
  
}
