//
//  TitleView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 13/04/24.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PROPERTIES
    var title: String
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            Spacer()
            
        } //: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
        
    }
}

#Preview {
    TitleView(title: "Helmet")
}
