//
//  CustomBacgroundView.swift
//  BootcampOdev1-3
//
//  Created by ÖMER  on 25.08.2025.
//

import SwiftUI

struct CustomBacgroundView: View {
    var body: some View {
        ZStack {
            
            Color.black.opacity(0.7)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .offset(y: 8)
            
            
            Color.black.opacity(0.8)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .offset(y: 3)
            
            
            LinearGradient(
                colors: [Color.white, Color.gray],
                startPoint: .top,
                endPoint: .bottom
            )
            .clipShape(RoundedRectangle(cornerRadius: 30))
        }
    }
}

#Preview {
    CustomBacgroundView()
        .padding()
}
