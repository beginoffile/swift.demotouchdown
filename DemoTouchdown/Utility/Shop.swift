//
//  Shop.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 17/04/24.
//

import Foundation


class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
