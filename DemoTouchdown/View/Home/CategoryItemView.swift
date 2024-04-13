//
//  CategoryItemView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 13/04/24.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    let category: Category
    // MARK: - BODY
    var body: some View {
        Button {
            
        } label: {
            HStack(alignment: .center, spacing: 6){
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Spacer()
                
            } //: HSTACK
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }

        

    } //: VIEW
}

#Preview {
    CategoryItemView(category: categories[0])
}
