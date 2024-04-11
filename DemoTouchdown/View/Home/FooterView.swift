//
//  FooterView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 10/04/24.
//

import SwiftUI

struct FooterView: View {
    // MARK: - PROPERTIES
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightwigth and durable footbal helmes in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Cesar Paez\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } //: VSTACK
    }
}

#Preview {
    FooterView()
}
