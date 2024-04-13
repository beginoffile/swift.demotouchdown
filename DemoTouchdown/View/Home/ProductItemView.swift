//
//  ProductItemView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 13/04/24.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTIES
    let product: Product
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            // PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZTACK
            .background(
                Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            // PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }) //: VSTACK
    }
}

#Preview {
    ProductItemView(product: products[0])
}
