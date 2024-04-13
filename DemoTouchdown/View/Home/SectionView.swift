//
//  SectionView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 13/04/24.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    @State var rotateClockwise: Bool
    // MARK: - BODY
    var body: some View {
        VStack(spacing:0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
                
            Spacer()
        } //: VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockwise: false)
}
