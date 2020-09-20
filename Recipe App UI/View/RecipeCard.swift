//
//  RecipeCard.swift
//  Recipe App UI
//
//  Created by Admin on 9/20/20.
//

import SwiftUI

struct RecipeCard: View {
    
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Spacer()
                Image(recipe.image)
            }
            .padding(.bottom)
            
            Text(recipe.title)
                .foregroundColor(.black)
                .font(.title2)
            
            HStack(spacing: 12) {
                Label(title: {
                    Text(recipe.rating)
                        .foregroundColor(.gray)
                        .font(.caption)
                }) {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color("orange"))
                        .font(.caption)
                }
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                .background(recipe.color.opacity(0.4))
                .cornerRadius(5)
                
                Text(recipe.type)
                    .foregroundColor(.gray)
                    .font(.caption)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .background(recipe.color.opacity(0.4))
                    .cornerRadius(5)
            }
            
            Text(recipe.detail)
                .foregroundColor(.gray)
                .lineLimit(3)
            
            HStack {
                ForEach(1...4, id: \.self) { i in
                    Image("p\(i)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 25, height: 25)
                        .clipShape(Circle())
                        // Overlay Effect
                        .offset(x: -CGFloat(i) * 8)
                }
                
                Text("25+ Likes")
                    .foregroundColor(.gray)
                    .font(.caption)
                    // Moving Text And Giving Space...
                    .padding(.leading, -(4) * 6)
            }
            .padding(.bottom)
            
            HStack {
                Spacer()
                
                Button(action: {}) {
                    Label(title: {
                        Text("Save")
                            .foregroundColor(.black)
                            .font(.system(size: 15, weight: .bold))
                    }) {
                        Image(systemName: "suit.heart.fill")
                            .foregroundColor(Color("orange"))
                            .font(.body)
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 10)
                    .background(Color.white)
                    .clipShape(Capsule())
                }
            }
        }
        .padding(.horizontal)
        // Max Width...
        .frame(width: UIScreen.main.bounds.width / 2)
        .background(recipe.color.opacity(0.2)
                        .cornerRadius(25)
                        .padding(.top, 55)
                        .padding(.bottom, 15)
        )
    }
}
