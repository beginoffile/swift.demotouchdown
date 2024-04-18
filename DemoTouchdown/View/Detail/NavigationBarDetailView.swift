//
//  NavigationBarDetailView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 15/04/24.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    var body: some View {
        
        HStack{
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
    } //: VIEW
}

#Preview {
    NavigationBarDetailView()
        .environmentObject(Shop())
}
