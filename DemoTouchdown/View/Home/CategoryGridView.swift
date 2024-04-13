//
//  CategoryGridView.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 13/04/24.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            }) //: GRID
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        })
    }
}

#Preview {
    CategoryGridView()
}
