//
//  FrameworkTitleView.swift
//  AppleFrameworks
//
//  Created by Junior Leoncio on 04/10/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
            
        }
        
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
