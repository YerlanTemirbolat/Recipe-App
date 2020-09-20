//
//  CustomTabBar.swift
//  Recipe App UI
//
//  Created by Admin on 9/20/20.
//

import SwiftUI

struct CustomTabBar: View {
    
    @Binding var selectedTab: String
    
    var body: some View {
        HStack {
            TabButton(title: "Home", selectedTab: $selectedTab)
            
            Spacer()
            
            Button(action: {}) {
                Image("plus")
                    .renderingMode(.original)
                    .padding(.vertical)
                    .padding(.horizontal, 25)
                    .background(Color("orange"))
                    .cornerRadius(15)
            }
            
            Spacer()
            
            TabButton(title: "Saved", selectedTab: $selectedTab)
        }
        .padding(.top)
        .padding(.horizontal, 22)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15 : UIApplication.shared.windows.first?.safeAreaInsets.bottom)
        .background(Color.white)
        .clipShape(CustomCorner(corners: [.topLeft, .topRight], size: 55))
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: -5)
    }
}

struct TabButton: View {
    
    var title: String
    @Binding var selectedTab: String
    
    var body: some View {
        VStack {
            Button(action: {selectedTab = title}) {
                HStack(spacing: 10) {
                    Image(title)
                        .renderingMode(.template)
                    Text(title)
                }
                .foregroundColor(selectedTab == title ? Color("yellow") : .gray)
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                .background(Color("yellow").opacity(selectedTab == title ? 0.15 : 0))
                .clipShape(Capsule())
            }
        }
    }
}

