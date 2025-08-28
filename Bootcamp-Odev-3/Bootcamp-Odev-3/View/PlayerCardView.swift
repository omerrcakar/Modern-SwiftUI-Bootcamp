//
//  ContentView.swift
//  Bootcamp-Odev-3
//
//  Created by ÖMER  on 28.08.2025.
//

import SwiftUI

struct PlayerCardView: View {
    
    @State private var attributes: [Attribute] = [
        Attribute(name: "Pace", score: 75),
        Attribute(name: "Shooting", score: 80),
        Attribute(name: "Passing", score: 85),
        Attribute(name: "Dribbling", score: 72),
        Attribute(name: "Defending", score: 50),
        Attribute(name: "Physical", score: 68),
        Attribute(name: "Heading", score: 85),
        Attribute(name: "Vision", score: 85),
        Attribute(name: "Composure", score: 80),
        Attribute(name: "Stamina", score: 72)
    ]
    
    
    var averageScore: Int {
        guard !attributes.isEmpty else { return 0 }
        let total = attributes.map { $0.score }.reduce(0, +)
        return total / attributes.count
    }
    
    
    var body: some View {
        VStack{
            
            HStack(alignment: .top){
                
                Image("icardi")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .shadow(radius: 4)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Mauro İcardi")
                        .font(.title2)
                        .bold()
                    Text("Galatasaray")
                    Text("Age: 32")
                    Text("Argentina 🇦🇷")
                    Text("Market Value: €15M")
                    
                    Text("\(averageScore)")
                        .font(.title)
                        .bold()
                        .foregroundColor(.red)
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding()
            
            
            VStack(alignment: .leading, spacing: 20) {
                ForEach($attributes) { $attr in
                    HStack {
                        Text(attr.name)
                            .frame(width: 120, alignment: .leading)
                        
                        Spacer()
                        
                        Button(action: {
                            if attr.score > 0 { attr.score -= 1 }
                        }) {
                            Image(systemName: "minus.circle")
                                .foregroundColor(.red)
                        }
                        
                        Text("\(attr.score)")
                            .frame(width: 40)
                        
                        Button(action: {
                            if attr.score < 100 { attr.score += 1 }
                        }) {
                            Image(systemName: "plus.circle")
                                .foregroundColor(.green)
                        }
                    }
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding()
            
            
            Spacer()
            
        
            
            
            
        }
    }
}

#Preview {
    PlayerCardView()
}
