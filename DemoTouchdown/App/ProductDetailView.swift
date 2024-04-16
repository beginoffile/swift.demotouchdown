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
                // DETAIL BOTTOM PART
                // RATING + SIZES
                // DESCRIPTION
                // QUANTITY + FAVOURITE
                // ADD TO CART
                Spacer()
            } //: VSTACK
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
