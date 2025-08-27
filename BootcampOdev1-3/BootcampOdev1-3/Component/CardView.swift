//
//  CardView.swift
//  BootcampOdev1-3
//
//  Created by ÖMER  on 25.08.2025.
//

import SwiftUI

struct CardView: View {
    
    @State private var isScaled: Bool = false
    @State private var textContent: String = "Kocaeli Üniversitesi Yazılım Mühendisliği"
    
    var body: some View {
        
        
        ZStack {
            CustomBackgroundView()
            VStack{
                HeaderImageView(isScaled: $isScaled)
                    .scaleEffect(isScaled ? 0.9 : 0.8) // scale effect
                
                HStack{
                    Text("Ömer Çakar")
                    Text("/")
                    Text("İOS Developer")
                }
                .padding()
                .background()
                .clipShape(RoundedRectangle(cornerRadius: 25))
                
                HStack{
                    MiniCardView(title: "Takipçi", count: 995)
                    MiniCardView(title: "Takip", count: 995)
                    MiniCardView(title: "Beğeni", count: 1000)
                }
                .padding(.vertical)
                
                VStack(spacing: 10){
                    HStack{
                        Text("Hakkımda")
                            .bold()
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    
                    Text(textContent)
                        .foregroundStyle(.white)
                    
                }
                .padding(.vertical, 20)
                
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
                    .foregroundStyle(.indigo)
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
                    .foregroundStyle(.yellow)
                    .padding()
                    .background()
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    Button{
                        
                    }label: {
                        Image(systemName: "arrow.right")
                    }
                    .bold()
                    .foregroundStyle(.red)
                    .padding()
                    .background()
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                }
                
            }//: Vstack
            
        } //: Card
        .frame(width: 360, height: 740)
        .onAppear {
            // İlk açıldığında büyüt
            withAnimation(.spring(response: 0.4, dampingFraction: 0.5, blendDuration: 0.5)) {
                isScaled = true
            }
            
            // Sonra tekrar küçült
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.5)) {
                    isScaled = false
                }
            }
        }
        
    }
}

#Preview {
    CardView()
}
