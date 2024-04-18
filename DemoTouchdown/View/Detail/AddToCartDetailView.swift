//
//  AddToCartDetailView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 17/04/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    // MARK: - BODY
    var body: some View {
        Button {
            
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
            red: sampleProduct.red,
            green: sampleProduct.green,
            blue: sampleProduct.blue)
        )
        .clipShape(Capsule())

    } //: BUTTON
        
}

#Preview {
    AddToCartDetailView()
}
