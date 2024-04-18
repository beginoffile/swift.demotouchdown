//
//  ContentView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 10/04/24.
//

import SwiftUI

struct ContentView: View {
    
    
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                if (!shop.showingProduct && shop.selectedProduct == nil)
                 {
                    VStack(spacing: 0) {
                        NavigationBarView()
                            .padding(.horizontal, 15)
                            .padding(.bottom)
                            .background(Color.white)
                            .padding(.top, geometry.safeAreaInsets.top)
                            .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)
                        ScrollView(.vertical, showsIndicators: false, content: {
                            VStack{
                                FeaturedTabView()
                                    .padding(.vertical,20)
                                    .frame(height: UIScreen.main.bounds.height * 0.33)
                                //                                .aspectRatio(contentMode: .fill)
                                CategoryGridView()
                                TitleView(title: "Helmet")
                                LazyVGrid(columns: gridLayout, spacing: 15) {
                                    ForEach(products){  product in
                                        ProductItemView(product: product)
                                            .onTapGesture {
                                                feedback.impactOccurred()
                                                withAnimation(.easeInOut) {
                                                    shop.selectedProduct = product
                                                    shop.showingProduct = true
                                                }
                                            }
                                    } //: LOOP
                                } //: GRID
                                .padding(15)
                                TitleView(title: "Brands")
                                BrandGridView()
                                FooterView()
                                    .padding(.horizontal)
                            } //: VSTACK
                        }) //: SCROLL
                    }//: VSTACK
                    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                } else {
                    ProductDetailView()
                        .padding(.top, geometry.safeAreaInsets.top)
                }
            } //: ZTACK
            .ignoresSafeArea(.all, edges: .top)
        }

    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
