//
//  AddToCartDetailView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 17/04/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    var body: some View {
        Button {
            feedback.impactOccurred()
            
        } label: {
            Spacer()
            Text("Add To Car".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(
        Color(
            red: shop.selectedProduct?.red ??
                sampleProduct.red,
            green: shop.selectedProduct?.green ??
                sampleProduct.green,
            blue:  shop.selectedProduct?.blue ??
                sampleProduct.blue)
        )
        .clipShape(Capsule())

    } //: BUTTON
        
}

#Preview {
    AddToCartDetailView()
        .environmentObject(Shop())
}
