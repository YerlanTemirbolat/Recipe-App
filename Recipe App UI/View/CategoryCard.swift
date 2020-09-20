//
//  CategoryCard.swift
//  Recipe App UI
//
//  Created by Admin on 9/20/20.
//

import SwiftUI

struct CategoryCard: View {
    
    var title: String
    
    var body: some View {
        VStack(spacing: 20) {
            Image(title)
                .padding()
                .background(Color.white)
                .clipShape(Circle())
            
            Text(title)
                .foregroundColor(Color("orange"))
                .fontWeight(.bold)
        }
        .padding(.vertical)
        .padding(.horizontal, 10)
        .background(Color("yellow").opacity(0.2))
        .clipShape(Capsule())
    }
}

