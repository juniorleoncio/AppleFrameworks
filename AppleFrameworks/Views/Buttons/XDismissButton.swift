//
//  XDismissButton.swift
//  AppleFrameworks
//
//  Created by Junior Leoncio on 04/10/24.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack {
            
            Spacer()
            
            Button { isShowingDetailView = false } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
            .padding()
        }
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
