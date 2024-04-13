//
//  CategoryModel.swift
//  DemoTouchdown
//
//  Created by Aguid Ramirez Sanchez on 13/04/24.
//

import Foundation


struct Category: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
}
