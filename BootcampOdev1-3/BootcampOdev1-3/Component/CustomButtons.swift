//
//  CustomButton.swift
//  BootcampOdev1-3
//
//  Created by ÖMER  on 28.08.2025.
//

import SwiftUI

struct CustomButtons: View {
    
    
    @Binding var counter: Int
    @Binding var isScaled : Bool
    
    var textListCount: Int
    
    var body: some View {
        HStack{
            
            Button{
                isScaled.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.5)) {
                        isScaled = false
                    }
                }
            }label: {
                Text("Mesaj Gönder")
            }
            .foregroundStyle(.black)
            .padding()
            .background()
            .clipShape(RoundedRectangle(cornerRadius: 25))
            
            Button{
                isScaled.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.5)) {
                        isScaled = false
                    }
                }
            }label: {
                Text("Takip Et")
            }
            .foregroundStyle(.indigo)
            .padding()
            .background()
            .clipShape(RoundedRectangle(cornerRadius: 25))
            
            
            Button{
                if counter < textListCount - 1{
                    counter += 1
                }else{
                    counter = 0
                }
            }label: {
                Image(systemName: "arrow.right")
            }
            .bold()
            .foregroundStyle(.gray)
            .padding()
            .background()
            .clipShape(RoundedRectangle(cornerRadius: 25))
        }
        
    }
}

#Preview {
    CustomButtons(counter: .constant(0),isScaled: .constant(false), textListCount: 5)
}
