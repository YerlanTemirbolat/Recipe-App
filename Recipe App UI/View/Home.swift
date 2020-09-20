//
//  Home.swift
//  Recipe App UI
//
//  Created by Admin on 9/20/20.
//

import SwiftUI

struct Home: View {
    
    @State var search = ""
    @State var selectedTab = "Home"
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {}) {
                    Image(systemName: "line.horizontal.3")
                        .foregroundColor(.black)
                        .font(.title)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Image("profile")
                        .renderingMode(.original)
                }
            }
            .padding([.horizontal, .bottom])
            .padding(.top, 40)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack(spacing: 15) {
                        HStack(spacing: 10) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                            TextField("Search Recipe", text: $search)
                        }
                        .padding()
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(15)
                        
                        Button(action: {}) {
                            Image("filter")
                                .renderingMode(.original)
                                .padding()
                                .background(Color("yellow").opacity(0.2))
                                .cornerRadius(15)
                        }
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Top Recipes")
                            .foregroundColor(.black)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(recipes, id: \.title) { recipe in
                                RecipeCard(recipe: recipe)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(categories, id: \.self) { title in
                                CategoryCard(title: title)
                            }
                        }
                        .padding()
                    }
                }
            }
            
            CustomTabBar(selectedTab: $selectedTab)
        }
        .background(Color.black.opacity(0.05))
        .edgesIgnoringSafeArea(.all)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
        Home()
            .preferredColorScheme(.dark)
    }
}
