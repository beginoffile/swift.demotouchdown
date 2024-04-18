//
//  QuantityFavouriteDetailView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 15/04/24.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    // MARK: - PROPERTIES
    @State private var counter: Int = 0
    // MARK: - BODY
    var body: some View {
        
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                feedback.impactOccurred()
                if counter > 0{
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            Button(action: {
                feedback.impactOccurred()
                if counter < 100{
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        }) //: HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavouriteDetailView()
}
