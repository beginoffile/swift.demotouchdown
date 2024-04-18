//
//  ProductDetailView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 15/04/24.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 5) {
                // NAVBAR
                NavigationBarDetailView()
                    .padding(.horizontal)
                    .padding(.top, geometry.safeAreaInsets.top)
                
                // HEADER
                HeaderDetailView()
                    .padding(.horizontal)
                // DETAIL TOP PART
                TopPartDetailView()
                    .padding(.horizontal)
                    .zIndex(1)
                // DETAIL BOTTOM PART
                VStack(alignment: .center, spacing: 0, content: {
                    // RATING + SIZES
                    RatingSizesDetailView()
                        .padding(.top, -20)
                        .padding(.bottom, 10)
                    // DESCRIPTION
                    ScrollView(.vertical, showsIndicators: false) {
                        Text(sampleProduct.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                    }
                    // QUANTITY + FAVOURITE
                    QuantityFavouriteDetailView()
                        .padding(.vertical,10)
                    // ADD TO CART
                    Spacer()
                    AddToCartDetailView()
                        .padding(.bottom, 20)
                    
                }) //: VSTACK
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -106)
                )
            } //: VSTACK
            .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
                    .ignoresSafeArea(.all, edges: .all)
        )
        } //: background
        
    } //: VIEW
}

#Preview {
    ProductDetailView()
}
