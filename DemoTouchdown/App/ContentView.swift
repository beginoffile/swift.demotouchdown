//
//  ContentView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 10/04/24.
//

import SwiftUI

struct ContentView: View {
    
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .background(Color.white)
                        .padding(.top, geometry.safeAreaInsets.top)
    //                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    //                    .padding(.top, UIApplication.shared.connectedScenes
    //                .compactMap { $0 as? UIWindowScene }
    //                .first?
    //                .windows
    //                .first?.safeAreaInsets.top ?? 0)
    //                    .background(Color.white)
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)
                    Spacer()
                    FooterView()
                        .padding(.horizontal)
                }//: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } //: ZTACK
            .ignoresSafeArea(.all, edges: .top)
        }

    }
}

#Preview {
    ContentView()
}
