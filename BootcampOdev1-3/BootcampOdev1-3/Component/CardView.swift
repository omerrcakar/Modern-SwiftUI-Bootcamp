//
//  CardView.swift
//  BootcampOdev1-3
//
//  Created by ÖMER  on 25.08.2025.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        
        ZStack {
            CustomBacgroundView()
            VStack{
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [Color.indigo, Color.yellow],
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
                }
                
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
                
                VStack{
                    HStack{
                        Text("Hakkımda")
                            .bold()
                        Spacer()
                    }
                    .padding(.horizontal, 20)
                    Group{
                        VStack{
                            Text("Kocaeli Üniversitesi Yazılım Mühendisliği")
                            Text("Swift - SwiftUI - Python - Golang")
                            Text("Galatasaray ⭐️⭐️⭐️⭐️⭐️")
                            Text("Kano - Paddlboard")
                        }
                    }
                    .foregroundStyle(.white)
                    
                }
                .padding(.vertical, 20)
                
                HStack{
                    Button{
                        
                    }label: {
                        Text("Mesaj Gönder")
                    }
                    .foregroundStyle(.indigo)
                    .padding()
                    .background()
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    Button{
                        
                    }label: {
                        Text("Takip Et")
                    }
                    .foregroundStyle(.yellow)
                    .padding()
                    .background()
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                }
                
            }//: Vstack
            
        } //: Card
        .frame(width: 360, height: 740)
        
    }
}

#Preview {
    CardView()
}
