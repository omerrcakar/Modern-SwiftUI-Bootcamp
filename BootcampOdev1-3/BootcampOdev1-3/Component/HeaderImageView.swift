//
//  HeaderImageView.swift
//  BootcampOdev1-3
//
//  Created by ÖMER  on 27.08.2025.
//

import SwiftUI

struct HeaderImageView: View {
    
    @Binding var isScaled: Bool
    
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    LinearGradient(
                        colors: [Color.indigo, Color.white],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 200, height: 200)
            Image("myself")
                .resizable()
                .scaledToFit()
                .offset(y: 30)
                .clipShape(Circle())
                .frame(width: 250, height: 250)
                .shadow(radius: 7)
                .scaleEffect(isScaled ? 1.2 : 1.0) // scale effect
                .onTapGesture {
                    withAnimation(.easeInOut){
                        isScaled.toggle()
                    }
                }
        }
        
    }
}

#Preview {
    HeaderImageView(isScaled: .constant(false))
}
