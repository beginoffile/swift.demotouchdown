//
//  HeaderDetailView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 15/04/24.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            Text( shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
        
}
