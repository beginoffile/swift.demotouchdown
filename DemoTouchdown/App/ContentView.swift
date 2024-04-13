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
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack{
                            FeaturedTabView()
                                .padding(.vertical,20)
                                .frame(height: UIScreen.main.bounds.height * 0.33)
//                                .aspectRatio(contentMode: .fill)
                            FooterView()
                                .padding(.horizontal)
                        } //: VSTACK
                    }) //: SCROLL
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
