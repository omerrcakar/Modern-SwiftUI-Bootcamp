//
//  MiniCardView.swift
//  BootcampOdev1-3
//
//  Created by ÖMER  on 25.08.2025.
//

import SwiftUI

struct MiniCardView: View {
    var title: String
    var count: Int?
    
    init(title: String, count: Int?) {
        self.title = title
        self.count = count
    }
    
    var body: some View {
        VStack{
            Text(title)
                .bold()
            Text("\(count ?? 0)")
                .font(.title3)
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 100)
        .background(.gray.opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        
    }
}

#Preview {
    MiniCardView(title: "Takipçi Sayısı", count: 996)
}
