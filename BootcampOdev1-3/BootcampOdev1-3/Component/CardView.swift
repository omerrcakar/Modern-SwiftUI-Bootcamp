//
//  CardView.swift
//  BootcampOdev1-3
//
//  Created by ÖMER  on 25.08.2025.
//

import SwiftUI

struct CardView: View {
    
    @State private var isScaled: Bool = false
    
    @State private var textList : [String] = ["Kocaeli Üniversitesi", "Yazılım Mühendisliği", "Swift - SwiftUI - iOS", "Galatasaray ⭐️⭐️⭐️⭐️⭐️" ,"Kano Kürek - Fitness"]
    
    @State private var counter : Int = 0
    
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
                            .font(.system(size: 24))
                            .bold()
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    
                    Text(textList[counter])
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                   
                }
                .padding(.top, 20)
                
                Spacer()
                CustomButtons(counter: $counter,isScaled: $isScaled, textListCount: textList.count)
                Spacer()
                
                
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
