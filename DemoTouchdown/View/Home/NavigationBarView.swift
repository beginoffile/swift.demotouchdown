//
//  NavigationBarView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 12/04/24.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    // MARK: - BODY
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            } //: BUTTON
            Spacer()
            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(x:0, y: isAnimating ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        isAnimating.toggle()
                    }
                })
            
            Spacer()
            Button(action: {
                
            }, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y:-10)
                }
            }) //: BUTTON

        } //: HSTACK
    }
}

#Preview {
    NavigationBarView()
}
